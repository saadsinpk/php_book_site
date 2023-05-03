<?php
/**
 *
 * Member Area/Information
 * Copyright (C) 2009  Arie Nugraha (dicarve@yahoo.com)
 * Patched by Hendro Wicaksono (hendrowicaksono@yahoo.com)
 * Patched by Waris Agung Widodo (ido.alit@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

use SLiMS\{Url,DB,Json};
use Volnix\CSRF\CSRF;

// be sure that this file not accessed directly
if (!defined('INDEX_AUTH')) {
    die("can not access this file directly");
} elseif (INDEX_AUTH != 1) {
    die("can not access this file directly");
}

if ($sysconf['baseurl'] != '') {
    $_host = $sysconf['baseurl'];
    header("Access-Control-Allow-Origin: $_host", FALSE);
}

// IP based access limitation
do_checkIP('opac');
do_checkIP('opac-member');

// Required flie
require SIMBIO . 'simbio_DB/simbio_dbop.inc.php';
require LIB . 'member_logon.inc.php';

// check if member already logged in
$is_member_login = utility::isMemberLogin();

$info = __('');
if(isset($_SESSION['info'])){
    $info .= PHP_EOL.'<div class="alert alert-'.$_SESSION['info']['status'].'">'.$_SESSION['info']['data'].'</div>';
    unset($_SESSION['info']);
    $_SESSION['m_mark_biblio'] = array();
}

// member's password changing flags
define('CURR_PASSWD_WRONG', -1);
define('PASSWD_NOT_MATCH', -2);
define('CANT_UPDATE_PASSWD', -3);

// if member is logged out
if (isset($_GET['logout']) && $_GET['logout'] == '1') {
    ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
    // write log
    utility::writeLogs($dbs, 'member', $_SESSION['email'], 'Login', $_SESSION['member_name'] . ' Log Out from address ' . ip());
    // completely destroy session cookie
    simbio_security::destroySessionCookie(null, MEMBER_COOKIES_NAME, SWB, false);
    redirect()->to('index.php');

    exit();
}

// if there is member login action
if (isset($_POST['logMeIn']) && !$is_member_login) {
    if (!CSRF::validate($_POST)) {
        session_unset();
        redirect()->withMessage('csrf_failed', __('Invalid login form!'))->back();
    }
    $username = trim(strip_tags($_POST['memberID']));
    $password = trim(strip_tags($_POST['memberPassWord']));
    // check if username or password is empty
    if (!$username OR !$password) {
        redirect()->withMessage('empty_field', __('Please enter your Member ID and Password to log in!'))->back();
    } else {
        # <!-- Captcha form processing - start -->
        if ($sysconf['captcha']['member']['enable']) {
            if ($sysconf['captcha']['member']['type'] == 'recaptcha') {
                require_once LIB . $sysconf['captcha']['member']['folder'] . '/' . $sysconf['captcha']['member']['incfile'];
                $privatekey = $sysconf['captcha']['member']['privatekey'];
                $resp = recaptcha_check_answer($privatekey,
                    ip(),
                    $_POST["g-recaptcha-response"]);

                if (!$resp->is_valid) {
                    // What happens when the CAPTCHA was entered incorrectly
                    session_unset();
                    redirect()->withMessage('captchaInvalid', __('Wrong Captcha Code entered, Please write the right code!'))->back();
                }
            } else if ($sysconf['captcha']['member']['type'] == 'others') {
                # other captchas here
            }
        }
        # <!-- Captcha form processing - end -->

        // regenerate session ID to prevent session hijacking
        session_regenerate_id(true);

        // create logon class instance
        $logon = new member_logon($username, $password, $sysconf['auth']['member']['method']);
        if ($sysconf['auth']['member']['method'] === 'LDAP') {
            $ldap_configs = $sysconf['auth']['member'];
        }

        if ($logon->valid($dbs)) {
            // write log
            utility::writeLogs($dbs, 'member', $username, 'Login', sprintf(__('Login success for member %s from address %s'),$username,ip()));
            if(isset($_POST['web_redirect'])) {
                redirect($_POST['web_redirect']);
            } else {
                if (isset($_GET['destination']) && Url::isValid($_GET['destination']) && Url::isSelf($_GET['destination'])) {
                    redirect($_GET['destination']);
                } else {
                    redirect()->toPath('member');
                }
            }
            exit();
        } else {
            // write log
            utility::writeLogs($dbs, 'member', $username, 'Login', sprintf(__('Login FAILED for member %s from address %s'),$username,ip()));
            // message
            //simbio_security::destroySessionCookie($msg, MEMBER_COOKIES_NAME, SWB, false);
            CSRF::generateToken();
            redirect()->withMessage('wrong_password', __('Login failed, please try again!'))->to('?p=member');
        }
    }
}
    function saveReserve_new($dbs, $sysconf)
    {

        if (count($_SESSION['m_mark_biblio']) > 0) {
            
            // cek dahulu, batas reservasi apakah sudah tercapai?
            if (($check = _isReserveAlowed_new($dbs)) !== true) return $check;

            $result = [];
            $sql_op = new simbio_dbop($dbs);
            $reserve['member_id'] = $_SESSION['mid'];

            foreach ($_SESSION['m_mark_biblio'] as $_index => $_biblio) {
                $id = (integer)$_biblio;
                $biblio = api::biblio_load($dbs, $id);

                // skip if already reseve this collection
                if(_isAlreadyReserved_new($dbs, $id)) {
                    $result[] = ['status' => 'SUCCESS', 'message' => sprintf(__('%s already reseved'), $biblio['title'])];
                    unset($_SESSION['m_mark_biblio'][$_index]);
                    continue;
                }

                // cek ketersediaan item,
                if(count($biblio['items'] ?? []) > 0) {
                    
                    if($sysconf['reserve_on_loan_only']) {
                        // ambil secara random dari koleksi yang dipinjam
                        $item_code = _getItemReserveFromLoan_new($dbs);
                    } else {
                        // Semua item bisa direservasi
                        $item_code = _getItemReserve_new($dbs, $id);
                    }

                    if(is_null($item_code)) {
                        $result[] = ['status' => 'ERROR', 'message' => sprintf(__('%s is available for loan.'), $biblio['title'])];
                    } else {
                        $reserve['biblio_id'] = $id;
                        $reserve['item_code'] = $item_code;
                        $reserve['reserve_date'] = date('Y-m-d H:i:s');
                        if($sql_op->insert('reserve', $reserve)) {
                            $result[] = ['status' => 'SUCCESS', 'message' => sprintf(__('%s reserved successfully.'), $biblio['title'])];
                            unset($_SESSION['m_mark_biblio'][$_index]);
                        } else {
                            $debug_message = ENVIRONMENT == 'development' ? $sql_op->error : '';
                            $result[] = ['status' => 'ERROR', 'message' => sprintf(__('%s failed to be reserve. '), $biblio['title']) . $debug_message ];
                        }
                    }

                } else {
                    // jika tidak memiliki item, maka tidak dapat direservasi.
                    $result[] = ['status' => 'ERROR', 'message' => sprintf(__('No item available to be reserved for %s'), $biblio['title'])];
                }
                
            }

            return $result;
        } else {
            return array('status' => 'ERROR', 'message' => __('No Titles to reserve'));
        }
    }
    function _getItemReserveFromLoan_new($dbs)
    {
        $sql = "SELECT item_code, due_date FROM loan WHERE is_lent=1 AND is_return=0 ORDER BY RAND() ASC LIMIT 1";
        $query = $dbs->query($sql);
        $data = $query->fetch_row();
        return $data[0] ?? null;
    }

    function _isAlreadyReserved_new($dbs, $biblio_id)
    {
        $sql = "SELECT member_id FROM reserve WHERE biblio_id='%s' AND member_id='%s'";
        $query = $dbs->query(sprintf($sql, $biblio_id, $_SESSION['mid']));
        return $query->num_rows > 0;
    }

    function _getItemReserve_new($dbs, $biblio_id)
    {
        $sql = "SELECT item_code FROM item WHERE biblio_id='%s' ORDER BY RAND() ASC LIMIT 1";
        $query = $dbs->query(sprintf($sql, $biblio_id));
        $data = $query->fetch_row();
        return $data[0] ?? null;
    }

    function _isReserveAlowed_new($dbs) {

        // cek apakah di keanggotaan diijikan untuk reservasi
        if ($_SESSION['m_can_reserve'] == '0') return ['status' => 'ERROR', 'message' => __('Reservation not allowed')];;

        // hitung yang sedang direservasi
        $sql = "SELECT COUNT(reserve_id) FROM reserve WHERE member_id='%s'";
        $query = $dbs->query(sprintf($sql, $_SESSION['mid']));
        $data = $query->fetch_row();
        
        // hitung tinggal berapa kesempatan untuk reservasinya
        return ($data[0]+count($_SESSION['m_mark_biblio'])) > (int)$_SESSION['m_reserve_limit'] ? ['status' => 'ERROR', 'message' => __('Reserve limit reached')] : 
            (count($_SESSION['m_mark_biblio']) > (int)$_SESSION['m_reserve_limit'] ? ['status' => 'ERROR', 'message' => sprintf(__('Maximum reserve limit is %d collection'), (int)$_SESSION['m_reserve_limit'])] : true);
    }


// biblio basket add process
if ($is_member_login) {
    if (isset($_POST['biblio'])) {
        if (!is_array($_POST['biblio']) && is_scalar($_POST['biblio'])) {
            $_tmp_biblio = $_POST['biblio'];
            unset($_POST['biblio']);
            $_POST['biblio'][] = $_tmp_biblio;
        }
        // check reserve limit
        if ((count($_SESSION['m_mark_biblio']) + count($_POST['biblio'])) > $sysconf['max_biblio_mark']) {
            $status = false;
            $message = 'Maximum ' . $sysconf['max_biblio_mark'] . ' titles can be added to list!';
            $info = '<span style="font-size: 120%; font-weight: bold; color: red;">' . $message . '</span>';
        } else {
            $status = true;
            $message = __('Title has been added to the list.');
        }

        if (isset($_POST['callback']) && $_POST['callback'] === 'json') {
            // exit(Json::stringify($res)->withHeader());
            if ($sysconf['reserve_direct_database'] ?? false) {
                // $res = [
                //     'status' => $status,
                //     'message' => $message,
                //     'count' => count($_SESSION['m_mark_biblio'])
                // ];

                foreach ($_POST['biblio'] as $biblio) {
                    $biblio = (integer)$biblio;
                    $_SESSION['m_mark_biblio'][$biblio] = $biblio;
                }

                header('content-type: application/json');
                $output_resp = saveReserve_new($dbs, $sysconf);

                if(isset($output_resp['status'])) {
                    if($output_resp['status'] == 'ERROR') {
                        foreach ($_POST['biblio'] as $biblio) {
                            $biblio = (integer)$biblio;
                            unset($_SESSION['m_mark_biblio'][$biblio]);
                        }
                        echo json_encode($output_resp);
                        exit();
                    }
                }
                $res = [
                    'status' => $status,
                    'message' => $message,
                    'count' => count($_SESSION['m_mark_biblio'])
                ];
        
                exit(Json::stringify($res)->withHeader());
            }
        }

    }
    if (isset($_POST['bookmark_id']))
    {
        try {
            // switch to delete process
            if (isset($_POST['delete_bookmark']))
            {

                DB::getInstance()
                    ->prepare('DELETE FROM `biblio_mark` WHERE `biblio_id` = ? AND `member_id` = ?')
                    ->execute([$_POST['bookmark_id'], $_SESSION['mid']]);
                unset($_SESSION['bookmark'][$_POST['bookmark_id']]);
                exit(Json::stringify(['status' => true, 'message' => __('Title removed from Bookmark List')])->withHeader());    
            }

            // input biblio data to database
            DB::getInstance()
                ->prepare('INSERT IGNORE INTO `biblio_mark` SET `biblio_id` = ?, `member_id` = ?, `id` = ?')
                ->execute([$_POST['bookmark_id'], $_SESSION['mid'], md5($_POST['bookmark_id'] . $_SESSION['mid'])]);

            $_SESSION['bookmark'][$_POST['bookmark_id']] = $_POST['bookmark_id'];

            exit(Json::stringify(['status' => true, 'message' => __('Title saved in Bookmark List'), 'label' => __('Bookmarked')])->withHeader());
        } catch (PDOException $e) {
            exit(Json::stringify(['status' => false, 'message' => isDev() ? $e->getMessage() : __('Title failed to save')])->withHeader());   
        } catch (Exception $e) {
            exit(Json::stringify(['status' => false, 'message' => isDev() ? $e->getMessage() : __('Title failed to save')])->withHeader());   
        } 
    }
} else {
    if (isset($_POST['callback']) && $_POST['callback'] === 'json') {
        $res = [
            'status' => false,
            'message' => 'Please log in first.',
            'count' => 0
        ];
        http_response_code(401);
        exit(Json::stringify($res)->withHeader());
    }
}

// biblio basket remove process
if (isset($_GET['rm_biblio'])) {
    if (!is_array($_GET['rm_biblio']) && is_scalar($_GET['rm_biblio'])) {
        $_tmp_biblio = $_GET['rm_biblio'];
        unset($_GET['rm_biblio']);
        $_GET['rm_biblio'][] = $_tmp_biblio;
    }
    foreach ($_GET['rm_biblio'] as $biblio) {
        $biblio = (integer)$biblio;
        unset($_SESSION['m_mark_biblio'][$biblio]);
    }
}

// biblio basket item removal process
if (isset($_POST['basketRemove']) && isset($_POST['basket']) && count($_POST['basket']) > 0) {
    foreach ($_POST['basket'] as $basket_item) {
        unset($_SESSION['m_mark_biblio'][$basket_item]);
    }
}

// biblio basket clear process
if (isset($_POST['clear_biblio'])) {
    $_SESSION['m_mark_biblio'] = array();
}

if ($is_member_login) :

    if (filter_var($_SESSION['m_image'], FILTER_VALIDATE_URL)) {
        $member_image_url = $_SESSION['m_image'];
    } else {
        $member_image = $_SESSION['m_image'] && file_exists(IMGBS . 'persons/' . $_SESSION['m_image']) ? $_SESSION['m_image'] : 'person.png';
        $member_image_url = './images/persons/' . $member_image;
    }

    // require file
    require SIMBIO . 'simbio_GUI/table/simbio_table.inc.php';
    require SIMBIO . 'simbio_DB/datagrid/simbio_dbgrid.inc.php';
    require SIMBIO . 'simbio_GUI/paging/simbio_paging.inc.php';
    require SIMBIO . 'simbio_UTILS/simbio_date.inc.php';

    /*
       * Function to show membership detail of logged in member
       *
       * @return      string
       */
    function showMemberDetail()
    {
        // show the member information
        $_detail = '<table class="memberDetail table table-striped" cellpadding="5" cellspacing="0">' . "\n";
        // member notes and pending information
        if ($_SESSION['m_membership_pending'] || $_SESSION['m_is_expired']) {
            $_detail .= '<tr>' . "\n";
            $_detail .= '<td class="key alterCell" width="15%"><strong>Notes</strong></td><td class="value alterCell2" colspan="3">';
            if ($_SESSION['m_is_expired']) {
                $_detail .= '<div style="color: #f00;">' . __('Your membership has expired. Please extend your membership.') . '</div>';
            }
            if ($_SESSION['m_membership_pending']) {
                $_detail .= '<div style="color: #f00;">' . __('Membership currently pending, no loans can be processed yet.') . '</div>';
            }
            $_detail .= '</td>';
            $_detail .= '</tr>' . "\n";
        }
        $_detail .= '<tr>' . "\n";
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Name') . '</strong></td><td class="value alterCell2" width="30%">' . $_SESSION['m_name'] . '</td>';
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Member ID') . '</strong></td><td class="value alterCell2" width="30%">' . $_SESSION['mid'] . '</td>';
        $_detail .= '</tr>' . "\n";
        $_detail .= '<tr>' . "\n";
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Email') . '</strong></td><td class="value alterCell2" width="30%">' . $_SESSION['m_email'] . '</td>';
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Date of Birth') . '</strong></td><td class="value alterCell2" width="30%">' . date("d-m-Y", strtotime($_SESSION['m_birth_date'])) . '</td>';
        $_detail .= '</tr>' . "\n";
        $_detail .= '<tr>' . "\n";
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Date Joined') . '</strong></td><td class="value alterCell2" width="30%">' . date("d-m-Y", strtotime($_SESSION['m_register_date'])) . '</td>';
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Expiry Date') . '</strong></td><td class="value alterCell2" width="30%">' . date("d-m-Y", strtotime($_SESSION['m_expire_date'])) . '</td>';
        $_detail .= '</tr>' . "\n";
        $_detail .= '<tr>' . "\n";
		$_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Address') . '</strong></td><td class="value alterCell2" width="30%">' . $_SESSION['m_address'] . '</td>';
        $_detail .= '<td class="key alterCell" width="15%"><strong>' . __('Phone') . '</strong></td><td class="value alterCell2" width="30%">' . $_SESSION['m_member_phone'] . '</td>';
        $_detail .= '</tr>' . "\n";
        $_detail .= '</table>' . "\n";


        return $_detail;
    }

    /*
       * Function to show member change password form
       *
       * @return      string
       */
    function changePassword()
    {
        global $dbs;
        // get hash from db
        $_query = sprintf('SELECT * FROM member
            WHERE member_id=\'%s\'', $dbs->escape_string(trim($_SESSION['mid'])));
        $_query = $dbs->query($_query);
        $fetch_query = $_query->fetch_row();

        $_form = '<form id="memberChangePassword" method="post" action="index.php?p=member&sec=my_account">' . "\n";


        $_form .= '<table class="memberDetail table table-striped" cellpadding="5" cellspacing="0">' . "\n";

        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Phone Number') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="text" name="phone_number" class="form-control" value="'.$fetch_query[19].'" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Email') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="email" name="email" class="form-control" value="'.$fetch_query[13].'" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '</table>' . "\n";




        $_form .= '<div class="tagline">';
        $_form .= '<div class="memberInfoHead mt-8">' . __('Address') . '</div>' . "\n";
        $_form .= '</div>';

        $_form .= '<table class="memberDetail table table-striped" cellpadding="5" cellspacing="0">' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Address Line 1') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="text" name="address_line" class="form-control" value="'.$fetch_query[8].'"  /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Suburb/Town') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="text" name="address_suburb" class="form-control" value="'.$fetch_query[9].'"  /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('State') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="text" name="address_state" class="form-control" value="'.$fetch_query[10].'" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('PostalCode') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="text" name="address_postal" class="form-control" value="'.$fetch_query[11].'" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '</table>' . "\n";

        $_form .= '<div class="tagline">';
        $_form .= '<div class="memberInfoHead mt-8">' . __('Change Password') . '</div>' . "\n";
        $_form .= '</div>';

        // show the change password
        $_form .= '<table class="memberDetail table table-striped" cellpadding="5" cellspacing="0">' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Current Password') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="password" name="currPass" class="form-control" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('New Password') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="password" name="newPass" class="form-control" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="key alterCell" width="20%"><strong>' . __('Confirm Password') . '</strong></td>';
        $_form .= '<td class="value alterCell2"><input type="password" name="newPass2" class="form-control" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '<tr>' . "\n";
        $_form .= '<td class="alterCell2" colspan="2" style="border:none;"><input class="btn btn-primary" type="submit" id="loginButton" name="changePass" value="' . __('Update Information') . '" /></td>';
        $_form .= '</tr>' . "\n";
        $_form .= '</table>' . "\n";
        $_form .= '</form>' . "\n";

        return $_form;
    }

    /*
       * Function to process member's password changes
       *
       * @param       string      $str_curr_pass = member's current password
       * @param       string      $str_new_pass = member's new password request
       * @param       string      $str_conf_new_pass = member's new password request confirmation
       * @return      boolean     true on success, false on failed
       */

    function procUpdateInformation($phone_number, $email, $address_line, $address_suburb, $address_state, $address_postal)
    {
        global $dbs;

        $_sql_update = sprintf('UPDATE member SET member_phone=\'%s\', member_email=\'%s\', member_address_line=\'%s\', member_address_suburb=\'%s\', member_address_state=\'%s\', member_address_postal=\'%s\'
            WHERE member_id=\'%s\'', $dbs->escape_string($phone_number), $dbs->escape_string($email), $dbs->escape_string($address_line), $dbs->escape_string($address_suburb), $dbs->escape_string($address_state), $dbs->escape_string($address_postal), $dbs->escape_string(trim($_SESSION['mid'])));
        @$dbs->query($_sql_update);
        if (!$dbs->error) {
            $_SESSION['m_address'] = $_POST['address_line'].' '.$_POST['address_suburb'].' '.$_POST['address_state'].' '.$_POST['address_postal'];
            $_SESSION['m_member_phone'] = $_POST['phone_number'];
            $_SESSION['m_email'] = $email;

            return true;
        } else {
            return SOMETHING_WENT_WRONG;
        }
    }


    function procChangePassword($str_curr_pass, $str_new_pass, $str_conf_new_pass)
    {
        global $dbs;
        // get hash from db
        $_str_pass_sql = sprintf('SELECT mpasswd FROM member
            WHERE member_id=\'%s\'', $dbs->escape_string(trim($_SESSION['mid'])));
        $_str_pass_q = $dbs->query($_str_pass_sql);
        $_str_pass_d = $_str_pass_q->fetch_row();
        $verified = password_verify($str_curr_pass, $_str_pass_d[0]);
        // current password checking
        // $_sql_pass_check = sprintf('SELECT member_id FROM member
        //     WHERE mpasswd=MD5(\'%s\') AND member_id=\'%s\'',
        //     $dbs->escape_string(trim($str_curr_pass)), $dbs->escape_string(trim($_SESSION['mid'])));
        // $_pass_check = $dbs->query($_sql_pass_check);
        if ($verified) {
            $str_new_pass = trim($str_new_pass);
            $str_conf_new_pass = trim($str_conf_new_pass);
            // password confirmation check
            if ($str_new_pass && $str_conf_new_pass && ($str_new_pass === $str_conf_new_pass)) {
                $_new_password = password_hash($str_conf_new_pass, PASSWORD_BCRYPT);
                $_sql_update_mpasswd = sprintf('UPDATE member SET mpasswd=\'%s\'
                    WHERE member_id=\'%s\'', $dbs->escape_string($_new_password), $dbs->escape_string(trim($_SESSION['mid'])));
                @$dbs->query($_sql_update_mpasswd);
                if (!$dbs->error) {
                    return true;
                } else {
                    return CANT_UPDATE_PASSWD;
                }
            } else {
                return PASSWD_NOT_MATCH;
            }
        } else {
            return CURR_PASSWD_WRONG;
        }
    }

    /*
       * Function to show list of logged in member loan
       *
       * @param       int         number of loan records to show
       * @return      string
       */
    function showLoanList($num_recs_show = 20)
    {
        global $dbs;

        // table spec
        $_table_spec = 'loan AS l
            LEFT JOIN member AS m ON l.member_id=m.member_id
            LEFT JOIN item AS i ON l.item_code=i.item_code
            LEFT JOIN biblio AS b ON i.biblio_id=b.biblio_id';

        // create datagrid
        $_loan_list = new simbio_datagrid();
        $_loan_list->disable_paging = true;
        $_loan_list->table_ID = 'loanlist';
        $_loan_list->setSQLColumn(
			'b.title AS \'' . __('Title') . '\'',
            'b.biblio_id AS \'' . __('ID') . '\'',
			'DATE_FORMAT(l.due_date, \'%d/%m/%Y\') AS \'' . __('Due Date') . '\'',
			'DATE_FORMAT(l.loan_date, \'%d/%m/%Y\') AS \'' . __('Loan Date') . '\'');
        $_loan_list->setSQLorder('l.due_date DESC');
		$_loan_list->invisible_fields = [1];
        $_criteria = sprintf('m.member_id=\'%s\' AND l.is_lent=1 AND is_return=0 ', $_SESSION['mid']);
        $_loan_list->setSQLCriteria($_criteria);

        // modify column value
		$_loan_list->modifyColumnContent(0, 'callback{showBookCover}');
        $_loan_list->modifyColumnContent(2, 'callback{showOverdue}');
		$_loan_list->column_width[0] = '70%';
		$_loan_list->column_width[2] = '15%';
		$_loan_list->column_width[3] = '15%';
        // set table and table header attributes
        $_loan_list->table_attr = 'align="center" class="memberLoanList table" cellpadding="5" cellspacing="0"';
        $_loan_list->table_header_attr = 'class="dataListHeader" style="font-weight: bold; --bs-table-accent-bg: var(--bs-table-striped-bg);"';
        $_loan_list->using_AJAX = false;
        // return the result
        $_result = $_loan_list->createDataGrid($dbs, $_table_spec, $num_recs_show);
        return $_result;
    }

    function showBookmarkList($num_recs_show = 20)
    {
        global $dbs;

        // table spec
        $_table_spec = 'biblio_mark AS bm
            INNER JOIN biblio AS b ON b.biblio_id=bm.biblio_id';
        // create datagrid
        $_mark_list = new simbio_datagrid();
        $_mark_list->disable_paging = false;
        $_mark_list->table_ID = 'loanlist';
        $_mark_list->setSQLColumn( 'b.title AS \'' . __('Title') . '\'', 'bm.biblio_id AS \'' . __('ID') . '\'', 'bm.biblio_id AS \'' . __('Action') . ' \'');
        //$_mark_list->setSQLorder('bm.created_at DESC');
        $_mark_list->invisible_fields = [1];
        $_criteria = sprintf('bm.member_id=\'%s\'', $_SESSION['mid']);
        $_mark_list->setSQLCriteria($_criteria);


        // modify column value
        $_mark_list->modifyColumnContent(0, 'callback{showBookCover}');
        //$_mark_list->modifyColumnContent(1, 'callback{showDetailDate}');
        $_mark_list->modifyColumnContent(2, 'callback{showMarkDetail}');
		$_mark_list->column_width[2] = '15%';
        // set table and table header attributes
        $_mark_list->table_attr = 'align="center" class="memberBookmarkList table" cellpadding="5" cellspacing="0"';
        $_mark_list->table_header_attr = 'class="dataListHeader" style="font-weight: bold; --bs-table-accent-bg: var(--bs-table-striped-bg);"';
        $_mark_list->using_AJAX = false;
        // return the result
        $_result = $_mark_list->createDataGrid($dbs, $_table_spec, $num_recs_show);
        return $_result;
    }

    /*function showDetailDate($obj_db, $data)
    {
        global $sysconf;
        if (isset($_COOKIE['select_lang'])) $sysconf['default_lang'] = trim(strip_tags($_COOKIE['select_lang']));
        return \Carbon\Carbon::parse($data[1])->locale($sysconf['default_lang'])->isoFormat('d MMM Y');
    }*/

    function showBookCover($obj_db, $data)
    {
        $author = $obj_db->query('select ma.author_name from biblio_author as ba 
        inner join mst_author as ma on ba.author_id = ma.author_id where ba.biblio_id = ' . $obj_db->escape_string($data[1]));
        $list = [];

        if ($author->num_rows > 0)
        {
            while ($result = $author->fetch_row()) {
                $list[] = $result[0];
            }
        }

        return '<strong><a title="'.__('Click to view detail').'" href="'.Url::getSlimsBaseUri('?p=show_detail&id=' . $data[1]).'" style="color:black; font-size: 15px;">'.$data[0].'</a></strong>
                <br>
                <div class="d-flex flex-row"><span class="text-muted text-sm">'.implode('</span>;&nbsp;<span class="text-muted text-sm">', $list).'</span></div>';
    }

    function showMarkDetail($obj_db, $data)
    {
        return '<button class="btn btn-danger btn-sm deleteBookmark" data-id="' . $data[2] . '"><i class="fa fa-trash"></i></button>';
    }

    /* callback function to show overdue */
    function showOverdue($obj_db, $array_data)
    {
        $_curr_date = date('d/m/Y');
        if (simbio_date::compareDates($array_data[2], $_curr_date) == $_curr_date) {
            return '<strong style="color: #f00;">' . $array_data[2] . ' ' . __('Overdue') . '</strong>';
        } else {
            return $array_data[2];
        }
    }

    /* Experimental Loan History - start */
    function showLoanHist($num_recs_show = 20)
    {
        global $dbs;

        // table spec
        $_table_spec = 'loan AS l
            LEFT JOIN member AS m ON l.member_id=m.member_id
            LEFT JOIN item AS i ON l.item_code=i.item_code
            LEFT JOIN biblio AS b ON i.biblio_id=b.biblio_id';

        // create datagrid
        $_loan_hist = new simbio_datagrid();
        $_loan_hist->disable_paging = true;
        $_loan_hist->table_ID = 'loanhist';
        $_loan_hist->setSQLColumn('b.title AS \'' . __('Title') . '\'',
			'b.biblio_id AS \'' . __('ID') . '\'',
            'DATE_FORMAT(l.loan_date, \'%d/%m/%Y\') AS \'' . __('Loan Date') . '\'',
			'DATE_FORMAT(l.return_date, \'%d/%m/%Y\') AS \'' . __('Return Date') . '\'');
        $_loan_hist->setSQLorder('l.loan_date DESC');
		$_loan_hist->invisible_fields = [1];
        $_criteria = sprintf('m.member_id=\'%s\' AND l.is_lent=1 AND is_return=1 ', $_SESSION['mid']);
        $_loan_hist->setSQLCriteria($_criteria);

        // modify column value
        $_loan_hist->modifyColumnContent(0, 'callback{showBookCover}');
        #$_loan_hist->modifyColumnContent(3, 'callback{showOverdue}');
		$_loan_hist->column_width[0] = '70%';
		$_loan_hist->column_width[2] = '15%';
		$_loan_hist->column_width[3] = '15%';
        // set table and table header attributes
        $_loan_hist->table_attr = 'align="center" class="memberLoanList table" cellpadding="5" cellspacing="0"';
        $_loan_hist->table_header_attr = 'class="dataListHeader" style="font-weight: bold; --bs-table-accent-bg: var(--bs-table-striped-bg);"';
        $_loan_hist->using_AJAX = false;
        // return the result
        $_result = $_loan_hist->createDataGrid($dbs, $_table_spec, $num_recs_show);
        return $_result;
    }

    /*
       * Function to show member collection basket
       *
       * @param       int         number of loan records to show
       * @return      string
       */
    function showBasket($num_recs_show = 20)
    {
        global $dbs;

        // table spec
        $_table_spec = 'biblio AS b';

        // create datagrid
        $_loan_list = new simbio_datagrid();
        $_loan_list->table_ID = 'basket';
        $_loan_list->setSQLColumn('b.title AS \'' . __('Title') . '\'', 'b.biblio_id AS \'' . __(' ') . '\'', 'b.biblio_id AS \'' . __('Action') . ' \'');
        $_loan_list->setSQLorder('b.last_update DESC');
        $_criteria = 'b.biblio_id = 0';
        if (count($_SESSION['m_mark_biblio']) > 0) {
            $_ids = '';
            foreach ($_SESSION['m_mark_biblio'] as $_biblio) {
                $_ids .= (integer)$_biblio . ',';
            }
            $_ids = substr_replace($_ids, '', -1);
            $_criteria = "b.biblio_id IN ($_ids)";
        }
        $_loan_list->setSQLCriteria($_criteria);
        //$_loan_list->invisible_fields = [1];
        $_loan_list->modifyColumnContent(2, 'callback{showMarkDetail1}');
        $_loan_list->modifyColumnContent(0, 'callback{showBookCover}');
        $_loan_list->modifyColumnContent(1, '<input type="checkbox" name="basket[]" class="basketItem" value="{column_value}" />');

    function showMarkDetail1($obj_db, $data)
    {
        return '<button class="btn btn-danger btn-sm deleteBookmark" data-id="' . $data[2] . '"><i class="fa fa-trash"></i></button>';
    }

        // set table and table header attributes
        $_loan_list->table_attr = 'align="center" class="memberBasketList table" cellpadding="5" cellspacing="0"';
        $_loan_list->table_header_attr = 'class="dataListHeader" style="font-weight: bold; --bs-table-accent-bg: var(--bs-table-striped-bg);"';
        $_loan_list->using_AJAX = false;
        // return the result
        $_result = '<form name="memberBasketListForm" id="memberBasketListForm" action="index.php?p=member" method="post">' . "\n";
        $_datagrid = $_loan_list->createDataGrid($dbs, $_table_spec, $num_recs_show);
        $_actions = '<div class="memberBasketAction my-3">';
        $_actions .= '<a href="index.php?p=member&sec=title_basket" class="btn btn-sm btn-primary basket reserve"><i class="fa fa-save"></i>&nbsp;&nbsp;' . __('Reserve titles in list') . '</a> ';
        $_actions .= '</div>';
        $_result .= '<div>' .$_actions. '</div>' . "\n" . $_datagrid;
        $_result .= "\n</form>";

        return $_result;
    }

    /*
       * Function to send reservation e-mail for titles in basket
       *
       * @return      array
       */
    function sendReserveMail()
    {
        global $dbs;

        if (count($_SESSION['m_mark_biblio']) === 0) return ['status' => 'ERROR', 'message' => 'No Titles to reserve'];
        
        $mail = \SLiMS\Mail::to(config('mail.from'), config('mail.from_name'));
        try {
            // additional recipient
            if (is_array(config('mail.add_recipients'))) {
                foreach (config('mail.add_recipients') as $recipients) {
                    \SLiMS\Mail::to($recipients['from'], $recipients['from_name']);
                }
            }

            // Template
            include SB . 'template/reserveMail.php';
            $reserveTemplate = new reserveMail;
            $reserveTemplate->setMinify(true);

            // CC
            $mail->addCC($_SESSION['m_email'], $_SESSION['m_name']);
            $mail->subject('Reservation request from Member ' . $_SESSION['m_name'] . ' (' . $_SESSION['m_email'] . ')')
                 ->loadTemplate($reserveTemplate)
                 ->send();

            // write to system log
            utility::writeLogs($dbs, 'member', isset($_SESSION['mid']) ? $_SESSION['mid'] : '0', 'membership', 'Reservation notification e-mail sent to ' . $_SESSION['m_email'], 'Reservation', 'Add');

            // sent response
            return ['status' => 'SENT', 'message' => 'Reservation notification e-mail sent to ' . $_SESSION['m_email']];
        } catch (Exception $exception) {
            // write to system log
            utility::writeLogs($dbs, 'member', isset($_SESSION['mid']) ? $_SESSION['mid'] : '0', 'membership', 'FAILED to send reservation e-mail to ' . $_SESSION['m_email'] . ' (' . $mail->ErrorInfo . ')');

            return ['status' => 'ERROR', 'message' => "Message could not be sent. Mailer Error: {$mail->ErrorInfo}"];
        }
    }

    function saveReserve($dbs, $sysconf)
    {

        if (count($_SESSION['m_mark_biblio']) > 0) {
            
            // cek dahulu, batas reservasi apakah sudah tercapai?
            if (($check = _isReserveAlowed($dbs)) !== true) return $check;

            $result = [];
            $sql_op = new simbio_dbop($dbs);
            $reserve['member_id'] = $_SESSION['mid'];

            foreach ($_SESSION['m_mark_biblio'] as $_index => $_biblio) {
                $id = (integer)$_biblio;
                $biblio = api::biblio_load($dbs, $id);

                // skip if already reseve this collection
                if(_isAlreadyReserved($dbs, $id)) {
                    $result[] = ['status' => 'SUCCESS', 'message' => sprintf(__('%s already reseved'), $biblio['title'])];
                    unset($_SESSION['m_mark_biblio'][$_index]);
                    continue;
                }

                // cek ketersediaan item,
                if(count($biblio['items'] ?? []) > 0) {
                    
                    if($sysconf['reserve_on_loan_only']) {
                        // ambil secara random dari koleksi yang dipinjam
                        $item_code = _getItemReserveFromLoan($dbs);
                    } else {
                        // Semua item bisa direservasi
                        $item_code = _getItemReserve($dbs, $id);
                    }

                    if(is_null($item_code)) {
                        $result[] = ['status' => 'ERROR', 'message' => sprintf(__('%s is available for loan.'), $biblio['title'])];
                    } else {
                        $reserve['biblio_id'] = $id;
                        $reserve['item_code'] = $item_code;
                        $reserve['reserve_date'] = date('Y-m-d H:i:s');
                        if($sql_op->insert('reserve', $reserve)) {
                            $result[] = ['status' => 'SUCCESS', 'message' => sprintf(__('%s reserved successfully.'), $biblio['title'])];
                            unset($_SESSION['m_mark_biblio'][$_index]);
                        } else {
                            $debug_message = ENVIRONMENT == 'development' ? $sql_op->error : '';
                            $result[] = ['status' => 'ERROR', 'message' => sprintf(__('%s failed to be reserve. '), $biblio['title']) . $debug_message ];
                        }
                    }

                } else {
                    // jika tidak memiliki item, maka tidak dapat direservasi.
                    $result[] = ['status' => 'ERROR', 'message' => sprintf(__('No item available to be reserved for %s'), $biblio['title'])];
                }
                
            }

            return $result;
        } else {
            return array('status' => 'ERROR', 'message' => __('No Titles to reserve'));
        }
    }

    function _isReserveAlowed($dbs) {

        // cek apakah di keanggotaan diijikan untuk reservasi
        if ($_SESSION['m_can_reserve'] == '0') return ['status' => 'ERROR', 'message' => __('Reservation not allowed')];;

        // hitung yang sedang direservasi
        $sql = "SELECT COUNT(reserve_id) FROM reserve WHERE member_id='%s'";
        $query = $dbs->query(sprintf($sql, $_SESSION['mid']));
        $data = $query->fetch_row();
        
        // hitung tinggal berapa kesempatan untuk reservasinya
        return ($data[0]+count($_SESSION['m_mark_biblio'])) > (int)$_SESSION['m_reserve_limit'] ? ['status' => 'ERROR', 'message' => __('Reserve limit reached')] : 
            (count($_SESSION['m_mark_biblio']) > (int)$_SESSION['m_reserve_limit'] ? ['status' => 'ERROR', 'message' => sprintf(__('Maximum reserve limit is %d collection'), (int)$_SESSION['m_reserve_limit'])] : true);
    }

    function _getItemReserve($dbs, $biblio_id)
    {
        $sql = "SELECT item_code FROM item WHERE biblio_id='%s' ORDER BY RAND() ASC LIMIT 1";
        $query = $dbs->query(sprintf($sql, $biblio_id));
        $data = $query->fetch_row();
        return $data[0] ?? null;
    }

    function _getItemReserveFromLoan($dbs)
    {
        $sql = "SELECT item_code, due_date FROM loan WHERE is_lent=1 AND is_return=0 ORDER BY RAND() ASC LIMIT 1";
        $query = $dbs->query($sql);
        $data = $query->fetch_row();
        return $data[0] ?? null;
    }

    function _isAlreadyReserved($dbs, $biblio_id)
    {
        $sql = "SELECT member_id FROM reserve WHERE biblio_id='%s' AND member_id='%s'";
        $query = $dbs->query(sprintf($sql, $biblio_id, $_SESSION['mid']));
        return $query->num_rows > 0;
    }

    if(isset($_POST['email'])) {
        $update_information = procUpdateInformation($_POST['phone_number'], $_POST['email'], $_POST['address_line'], $_POST['address_suburb'], $_POST['address_state'], $_POST['address_postal']);
        if ($update_information == true) {
            // if there is change password request
            if (isset($_POST['changePass']) && $sysconf['auth']['member']['method'] == 'native' && !empty($_POST['currPass'])) {
                $change_pass = procChangePassword($_POST['currPass'], $_POST['newPass'], $_POST['newPass2']);
                if ($change_pass === true) {
                    $info = '<span style="font-size: 120%; font-weight: bold; color: #28a745;">' . __('Your password and information has been changed successfully.') . '</span>';
                } else {
                    if ($change_pass === CURR_PASSWD_WRONG) {
                        $info = __('Your information is update but not password, Please insert the correct current password.');
                    } else if ($change_pass === PASSWD_NOT_MATCH) {
                        $info = __('Your information is update but not password, Password confirmation failed. Please try again.');
                    } else {
                        $info = __('Your information is update but not password, Password update failed due to database error. Please contact the librarian for help.');
                    }
                    $info = '<span style="font-size: 120%; font-weight: bold; color: red;">' . $info . '</span>';
                }
            } else {
                $info = '<span style="font-size: 120%; font-weight: bold; color: #28a745;">' . __('Your information has been changed successfully.') . '</span>';
            }
        } else {
            if ($change_pass === SOMETHING_WENT_WRONG) {
                $info = __('Something went wrong');
            }
            $info = '<span style="font-size: 120%; font-weight: bold; color: red;">' . $info . '</span>';
        }
    }

    // send reserve e-mail
    if (isset($_POST['sendReserve']) && $_POST['sendReserve'] == 1) {
        // Make a notification for librarian or member
        \SLiMS\Plugins::getInstance()->execute('custom_reserve_notification');
        // save reservation to database
        if ($sysconf['reserve_direct_database'] ?? false) {
            header('content-type: application/json');
            echo json_encode(saveReserve($dbs, $sysconf));
            exit;
        } else {
            // by email
            $mail = sendReserveMail();
            if ($mail['status'] != 'ERROR') {
                $_SESSION['info']['data'] = __('Reservation e-mail sent successfully!');
                $_SESSION['info']['status'] = 'success';
            } else {
                $_SESSION['info']['data'] = '<span style="font-size: 120%; font-weight: bold; color: red;">'.__(sprintf('Reservation e-mail failed to send with error: %s. Please contact the librarian.', $mail['message'])).'</span>';
                $_SESSION['info']['status'] = 'danger';
            }
            exit;
        }

    }

    ?>
<section class="container mt-8">
<div class="paragraph" id="account">
		<div class="container">
    <div class="d-flex">
        <div class="flex-grow-1" id="member_content">
            <div class="text-sm text-grey-dark">
                <?php
                if ($_SESSION['m_membership_pending']) :
                    $info = 'Your membership is pending. Please contact the librarian for more detail.';
                    ?>
                    <i class="fas fa-lock mr-2 text-red"></i>Membership status pending
                <?php
                elseif ($_SESSION['m_is_expired']) :
                    $info = 'Your membership has expired. Please contact the librarian for more detail.';
                    ?>
                    <i class="far fa-calendar-times mr-2 text-red"></i>Membership expired
                <?php else: ?>
                <?php endif; ?>
            </div>
            <h4 class="mb-4">Welcome <?php echo $_SESSION['m_name']; ?></h4>
            <div class="row"></div>
            <div class="my-4">
                <ul class="nav nav-tabs nav-fill">
                    <?php
                    $tabs_menus = [
                        'current_loan' => [
                            'text' => __('Current Loans'),
                            'link' => 'index.php?p=member'
                        ],
                        'bookmark' => [
                            'text' => __('Bookmark List'),
                            'link' => 'index.php?p=member&sec=bookmark'
                        ],
                        'title_basket' => [
                            'text' => __('Reserve List'),
                            'link' => 'index.php?p=member&sec=title_basket'
                        ],
                        'loan_history' => [
                            'text' => __('Loan History'),
                            'link' => 'index.php?p=member&sec=loan_history'
                        ],
                        'my_account' => [
                            'text' => __('My Account'),
                            'link' => 'index.php?p=member&sec=my_account'
                        ]
                    ];
                    $section = isset($_GET['sec']) ? trim($_GET['sec']) : 'current_loan';
                    foreach ($tabs_menus as $km => $kv) {
                        $active = $section === $km ? 'active' : '';
                        $m = '<li class="nav-item">';
                        $m .= '<a class="nav-link ' . $active . '" href="' . $kv['link'] . '">' . $kv['text'] . '</a>';
                        $m .= '</li>';
                        echo $m;
                    }
                    ?>
                </ul>
                <div class="bg-white border-right border-left">
                    <?php
                    switch ($section) {
                        case 'current_loan':
                            echo showLoanList();
                            break;
                        case 'bookmark':
                            echo showBookmarkList();
                            break;
                        case 'title_basket':
                            echo showBasket();
                            break;
                        case 'loan_history':
                            echo showLoanHist();
                            break;
                        case 'my_account':
                            echo '<div class="tagline">';
                            echo '<div class="memberInfoHead">' . __('Member Details') . '</div>' . "\n";
                            echo '</div>';
                            echo showMemberDetail();
                            // change password only form NATIVE authentication, not for others such as LDAP
                            if ($sysconf['auth']['member']['method'] == 'native') {
                                echo '<div class="tagline">';
                                echo '<div class="memberInfoHead mt-8">' . __('Information') . '</div>' . "\n";
                                echo '</div>';
                                echo changePassword();
                            }
                            break;
                    }
                    ?>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>

    <script type="text/javascript">
        $(document).ready(function () {
                $('.clearAll').click(function (evt) {
                    evt.preventDefault();
                    var anchor = $(this);
                    // get anchor href
                    var aHREF = anchor.attr('href');
                    var postData = anchor.attr('postdata');
                    if (confirm('Clear your Reserve List?')) {
                        // send ajax
                        $.ajax({
                            type: 'POST',
                            url: aHREF, cache: false, data: postData, async: false,
                            success: function (ajaxRespond) {
                                alert('Reserve List cleared!');
                                window.location.href = aHREF;
                            }
                        });
                    }
                });

                $('.clearOne').click(function (evt) {
                    evt.preventDefault();
                    var basketForm = $('#memberBasketListForm');
                    var basketData = basketForm.serialize() + '&basketRemove=1';
                    // get anchor href
                    var basketAction = basketForm.attr('action');
                    if (confirm('Remove selected title(s) from basket?')) {
                        // send ajax
                        $.ajax({
                            type: 'POST',
                            url: basketAction, cache: false, data: basketData, async: false,
                            success: function (ajaxRespond) {
                                alert('Selected basket data removed!');
                                window.location.href = 'index.php?p=member&sec=title_basket';
                            }
                        });
                    }
                });

                $('.reserve').click(function (evt) {
                    evt.preventDefault();
                    var anchor = $(this);
                    // get anchor href
                    var aHREF = anchor.attr('href');
                    // set alert to wait
                    $('#info').html('<div class="alert alert-info"><?= __('Please wait, your reservation is being sent') ?>...</div>');
                    // send ajax
                    $.ajax({
                        type: 'POST',
                        url: aHREF, cache: false, data: 'sendReserve=1', async: false,
                        success: function (ajaxRespond) {
                            console.log(ajaxRespond)

                            <?php if ($sysconf['reserve_direct_database'] ?? false): ?>

                                if(Array.isArray(ajaxRespond)) {

                                    for (let i = 0; i < ajaxRespond.length; i++) {
                                        const element = ajaxRespond[i];
                                        let message = element.message ?? '<?= __('Reservation request sent') ?>';
                                        if(element.status == 'ERROR') {
                                            toastr.error(message)
                                        } else {
                                            toastr.success(message)
                                            setTimeout(() => window.location.href = '?p=member&sec=title_basket', 2500);
                                        }
                                    }

                                } else {
                                    let message = ajaxRespond.message ?? '<?= __('Reservation request sent') ?>';
                                    if(ajaxRespond.status == 'ERROR') {
                                        toastr.error(message)
                                    } else {
                                        toastr.success(message)
                                        setTimeout(() => window.location.href = '?p=member&sec=title_basket', 2500);
                                    }
                                }

                            <?php else: ?>
                                toastr.success('<?= __('Reservation e-mail sent') ?>');
                                setTimeout(() => {
                                    window.location.href = aHREF; 
                                }, 5000);
                                
                            <?php endif ?>
                        }
                    });
                });
                
                $('.deleteBookmark').click(function(e){
                    e.preventDefault();
                    let id = $(this).data('id')
                    $.post('index.php?p=member', {bookmark_id:id,delete_bookmark: true}, function(res,state) {
                        if (!res.status)
                        {
                            toastr.error(res.message)    
                        }
                        else
                        {
                            toastr.success(res.message, '',{
                                timeOut: 2000,
                                onHidden: function() {
                                    window.location.replace('index.php?p=member&sec=bookmark')
                                }
                            })
                        }
                    }).fail(function(state){
                        console.log(state)
                        toastr.error('<?= __('Unexcpected error. Please contact the librarian') ?>')
                    })
                })
            }
        );
    </script>
<?php else: ?>
    <div>
        <h4 class="mb-4" style="text-align: center;"><?php echo $opac->page_title = __('Account Login');?></h4>
		<div class="loginInfo">
            <?php 
            if ($key = flash()->includes('wrong_password','csrf_failed','empty_field','captchaInvalid'))
            {
                flash()->danger($key);
            }
            ?>
        </div>
        <div class="loginInfo">
            <form class="login100-form validate-form" action="index.php?p=member&destination=<?= urlencode($_GET['destination'] ?? '') ?>" method="post">						
					<div class="wrap-input100 validate-input" data-validate = "Your library card number">
						<input class="input100" type="text" name="memberID">
						<span class="focus-input100"></span>
						<span class="label-input100">Member ID</span>
					</div>
										
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="memberPassWord">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-8">
						<a href="index.php?p=forgot" class="txt1">
							Forgot Password?
						</a>
					</div>
			
                <?= \Volnix\CSRF\CSRF::getHiddenInputString() ?>
                <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token']??'' ?>">
                <!-- Captcha in form - start -->
                <div>
                    <?php if ($sysconf['captcha']['member']['enable']) { ?>
                        <?php if ($sysconf['captcha']['member']['type'] == "recaptcha") { ?>
                            <div class="captchaMember">
                                <?php
                                require_once LIB . $sysconf['captcha']['member']['folder'] . '/' . $sysconf['captcha']['member']['incfile'];
                                $publickey = $sysconf['captcha']['member']['publickey'];
                                echo recaptcha_get_html($publickey);
                                ?>
                            </div>
                            <!-- <div><input type="text" name="captcha_code" id="captcha-form" style="width: 80%;" /></div> -->
                            <?php
                        } elseif ($sysconf['captcha']['member']['type'] == "others") {
                            #code here
                        }
                        #debugging
                        #echo SWB.'lib/'.$sysconf['captcha']['folder'].'/'.$sysconf['captcha']['webfile'];
                    } ?>
                </div>
                <!-- Captcha in form - end -->
                <div class="container-login100-form-btn">
				<input type="submit" name="logMeIn" value="<?php echo __('Login'); ?>" class="memberButton"/>
				</div>
				<br>
				<p style="text-align: center;">Not a member? <a href="https://muslimconnect.io/library/join">Join now</a></p>
            </form>
        </div>
    </div>
	
	<script src="js/animsition/js/animsition.min.js"></script>
	<script src="js/select2/select2.min.js"></script>
	<script src="js/daterangepicker/moment.min.js"></script>
	<script src="js/daterangepicker/daterangepicker.js"></script>
	<script src="js/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>
<?php endif; ?>
