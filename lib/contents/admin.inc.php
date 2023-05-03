<?php
/**
 *
 * Librarian login page
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com), Hendro Wicaksono (hendrowicaksono@yahoo.com)
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

// be sure that this file not accessed directly
if (!defined('INDEX_AUTH')) {
    die("can not access this file directly");
} elseif (INDEX_AUTH != 1) {
    die("can not access this file directly");
}

#use SLiMS\AdvancedLogging;
use SLiMS\AlLibrarian;
use Volnix\CSRF\CSRF;

if ($sysconf['baseurl'] != '') {
  $_host = $sysconf['baseurl'];
  header("Access-Control-Allow-Origin: $_host", FALSE);
}

/*
if (defined('LIGHTWEIGHT_MODE')) {
    header('Location: index.php');
}
*/

// required file
require LIB.'admin_logon.inc.php';
require SIMBIO.'simbio_DB/simbio_dbop.inc.php';

// https connection (if enabled)
if ($sysconf['https_enable']) {
    simbio_security::doCheckHttps($sysconf['https_port']);
}

// check if session browser cookie already exists
if (isset($_COOKIE['admin_logged_in'])) {
    redirect()->to('admin/index.php');
}

if (isset($_GET['wrongpass'])) {
    redirect()->withMessage('wrong_password', __('Wrong Username or Password. ACCESS DENIED'))->toPath('login');
} 

// start the output buffering for main content
ob_start();

// if there is login action
if (isset($_POST['logMeIn'])) {
    if (!CSRF::validate($_POST) ) {
        session_unset();
        redirect()->withMessage('csrf_failed', __('Invalid login form!'))->back();
    }
    $username = strip_tags($_POST['userName']);
    $password = strip_tags($_POST['passWord']);
    if (empty($username) OR empty($password)) {
        redirect()->withMessage('empty_field', __('Please supply valid username and password'))->back();
    } else {
        // destroy previous session set in OPAC
        simbio_security::destroySessionCookie(null, MEMBER_COOKIES_NAME, SWB, false);
        require SB.'admin/default/session.inc.php';
        // regenerate session ID to prevent session hijacking
        session_regenerate_id(true);
        // create logon class instance
        $logon = new admin_logon($username, $password, $sysconf['auth']['user']['method']);
        if ($sysconf['auth']['user']['method'] == 'LDAP') {
            $ldap_configs = $sysconf['auth']['user'];
        }
        if ($logon->adminValid($dbs)) {

            # <!-- Captcha form processing - start -->
            if ($sysconf['captcha']['smc']['enable']) {
                if ($sysconf['captcha']['smc']['type'] == 'recaptcha') {
                    require_once LIB.$sysconf['captcha']['smc']['folder'].'/'.$sysconf['captcha']['smc']['incfile'];
                    $privatekey = $sysconf['captcha']['smc']['privatekey'];
                    $resp = recaptcha_check_answer ($privatekey,
                                          $_SERVER["REMOTE_ADDR"],
                                          $_POST["g-recaptcha-response"]);

                    if (!$resp->is_valid) {
                        // What happens when the CAPTCHA was entered incorrectly
                        session_unset();
                        redirect()->toPath($path);
                        die();
                    }
                } elseif ($sysconf['captcha']['smc']['type'] == 'others') {
                    # other captchas here
                }
            }
            # <!-- Captcha form processing - end -->

            // remember me
            if (isset($_POST['remember']) && $_POST['remember'] == 1) $_SESSION['remember_me'] = true;

            // set cookie admin flag
            #setcookie('admin_logged_in', true, time()+14400, SWB);
            #setcookie('admin_logged_in', true, time()+14400, SWB, "", FALSE, TRUE);

            setcookie('admin_logged_in', TRUE, [
                'expires' => time()+14400,
                'path' => SWB,
                'domain' => '',
                'secure' => false,
                'httponly' => true,
                'samesite' => 'Lax',
            ]);


            // write log
            utility::writeLogs($dbs, 'staff', $username, 'Login', 'Login success for user '.$username.' from address '.ip());

            # ADV LOG SYSTEM - STIIL EXPERIMENTAL
            $log = new AlLibrarian('1001', array("username" => $username, "realname" => $logon->real_name));

            if ($sysconf['login_message']) utility::jsAlert(__('Welcome to Library Automation, ').$logon->real_name);
            
            redirect('admin/index.php');
        } else {
            // write log
            utility::writeLogs($dbs, 'staff', $username, 'Login', 'Login FAILED for user '.$username.' from address '.ip());

            // maybe still use md5 encryption
            if (isset($logon->errors['status']) && $logon->errors['status'] == 'md5_encryption') {
                $token = utility::createRandomString(32);
                #setcookie('token', $token, time()+3600, SWB);
                #setcookie('token', $token, time()+3600, SWB, "", FALSE, TRUE);

                setcookie('token', $token, [
                    'expires' => time()+3600,
                    'path' => SWB,
                    'domain' => '',
                    'secure' => false,
                    'httponly' => true,
                    'samesite' => 'Lax',
                ]);
    

                #setcookie('uname', $logon->errors['uname'], time()+3600, SWB);
                #setcookie('uname', $logon->errors['uname'], time()+3600, SWB, "", FALSE, TRUE);

                setcookie('uname', $logon->errors['uname'], [
                    'expires' => time()+3600,
                    'path' => SWB,
                    'domain' => '',
                    'secure' => false,
                    'httponly' => true,
                    'samesite' => 'Lax',
                ]);



                // message
                redirect()->toPath($path.'&update='.$token);
            } else {
                // message
                simbio_security::destroySessionCookie(__('Wrong Username or Password. ACCESS DENIED'), COOKIES_NAME, SWB.'admin', false);
                redirect('?p=login&wrongpass=true');
            }
            exit();
        }
    }
}

// uname
$_uname = (isset($_COOKIE['uname'])) ? trim($_COOKIE['uname']) : '';

// update password
if (isset($_POST['updatePassword'])) {
    $cpasswd = trim($_POST['currentPasswd']);
    $passwd = trim($_POST['newPasswd']);
    $passwd2 = trim($_POST['newPasswd2']);
    if (empty($cpasswd)) {
        utility::jsAlert(__('Current password can not be empty!'));
    } else if (($passwd AND $passwd2) AND ($passwd !== $passwd2)) {
        utility::jsAlert(__('Password confirmation does not match. See if your Caps Lock key is on!'));
    } else {

        $logon = new admin_logon($_uname, $cpasswd);
        if ($logon->changePasswd($dbs, $passwd2)) {

            // write log
            utility::writeLogs($dbs, 'staff', $_uname, 'Login', 'Change password SUCCESS for user '.$_uname.' from address '.ip());

            // clear cookie
            #setcookie('token', '', time()-3600, SWB);
            #setcookie('token', '', time()-3600, SWB, "", FALSE, TRUE);

            setcookie('token', '', [
                'expires' => time()-3600,
                'path' => SWB,
                'domain' => '',
                'secure' => false,
                'httponly' => true,
                'samesite' => 'Lax',
            ]);


            #setcookie('uname', '', time()-3600, SWB);
            #setcookie('uname', '', time()-3600, SWB, "", FALSE, TRUE);

            setcookie('uname', '', [
                'expires' => time()-3600,
                'path' => SWB,
                'domain' => '',
                'secure' => false,
                'httponly' => true,
                'samesite' => 'Lax',
            ]);

            echo '<script type="text/javascript">';
            echo 'alert("Password Updated. Please log in again!");';
            echo 'location.href = \'index.php?p='.$path.'\';';
            echo '</script>';
            exit();
        } else {
            // write log
            utility::writeLogs($dbs, 'staff', $_uname, 'Login', 'Change password FAILED for user '.$_uname.' from address '.ip());
            utility::jsAlert($logon->errors);
        }
    }
}
?>

<h4 class="mb-4" style="text-align: center;"><?php echo $opac->page_title = __('Admin Login');?></h4>
<div id="loginForm">
    <noscript>
        <div style="font-weight: bold; color: #FF0000;"><?php echo __('Your browser does not support Javascript or Javascript is disabled. Application won\'t run without Javascript!'); ?><div>
    </noscript>
    <form class="login100-form admin validate-form" action="index.php?p=<?php echo $path; ?>" method="post">
    <?php
    if (isset($_GET['update']) && !empty($_GET['update'])) { ?>
        <?php if (isset($_COOKIE['token']) && $_GET['update'] === $_COOKIE['token']) { ?>
        <div class="alert alert-danger"><?php echo str_replace('{username}', $_uname, __('Hi {username}, please update your password!')) ?></div>
        <div class="heading1"><?php echo __('Current Password'); ?></div>
        <div class="login_input"><input type="password" name="currentPasswd" id="userName" class="login_input" /></div>
        <div class="heading1"><?php echo __('New Password'); ?></div>
        <div class="login_input"><input type="password" name="newPasswd" class="login_input" /></div>
        <div class="heading1"><?php echo __('Confirm New Password'); ?></div>
        <div class="login_input"><input type="password" name="newPasswd2" class="login_input" /></div>
        <!-- Captcha in form - start -->
        <?php if ($sysconf['captcha']['smc']['enable']) { ?>
          <?php if ($sysconf['captcha']['smc']['type'] == "recaptcha") { ?>
          <div class="captchaAdmin">
          <?php
            require_once LIB.$sysconf['captcha']['smc']['folder'].'/'.$sysconf['captcha']['smc']['incfile'];
            $publickey = $sysconf['captcha']['smc']['publickey'];
            echo recaptcha_get_html($publickey);
          ?>
          </div>
          <!-- <div><input type="text" name="captcha_code" id="captcha-form" style="width: 80%;" /></div> -->
        <?php
          } elseif ($sysconf['captcha']['smc']['type'] == "others") {

          }
          #debugging
          #echo SWB.'lib/'.$sysconf['captcha']['folder'].'/'.$sysconf['captcha']['webfile'];
        } ?>
        <!-- Captcha in form - end -->

        <div class="marginTop">
        <input type="submit" name="updatePassword" value="<?php echo __('Update'); ?>" class="loginButton" />
        <input type="button" value="Home" class="homeButton" onclick="javascript: location.href = 'index.php';" />
        </div>
        <?php } else { ?>
            <div class="alert alert-danger"><?= __('Not valid token!') ?></div>
            <a class="homeButton" href="index.php"><?= __('Go Home') ?></a>
        <?php } ?>
        <?php 
        } else { 
            if ($key = flash()->includes('wrong_password','csrf_failed','empty_field','captchaInvalid'))
            {
                flash()->danger($key);
            }
        ?>
        
<div class="wrap-input100 validate-input">
			<input class="input100" type="text" name="userName" id="userName" required />
			<span class="focus-input100"></span>
			<span class="label-input100">Username</span>
		</div>
		
        <div class="wrap-input100 validate-input">
			<input class="input100" type="password" name="passWord" autocomplete="off" required />
			<span class="focus-input100"></span>
			<span class="label-input100">Password</span>
		</div>
        <?= \Volnix\CSRF\CSRF::getHiddenInputString() ?>
        <!-- Captcha in form - start -->
        <?php if ($sysconf['captcha']['smc']['enable']) { ?>
          <?php if ($sysconf['captcha']['smc']['type'] == "recaptcha") { ?>
          <div class="captchaAdmin">
          <?php
            require_once LIB.$sysconf['captcha']['smc']['folder'].'/'.$sysconf['captcha']['smc']['incfile'];
            $publickey = $sysconf['captcha']['smc']['publickey'];
            echo recaptcha_get_html($publickey);
          ?>
          </div>
          <div><input type="text" name="captcha_code" id="captcha-form" style="width: 80%;" /></div>
        <?php
          } elseif ($sysconf['captcha']['smc']['type'] == "others") {

          }
          #debugging
          #echo SWB.'lib/'.$sysconf['captcha']['folder'].'/'.$sysconf['captcha']['webfile'];
        } ?>
        <!-- Captcha in form - end -->

        <div class="flex-sb-m w-full p-t-3 p-b-8" style="font-size: 14px;">
			<div class="contact100-form-checkbox">
				<?php if ($sysconf['always_user_login']) : ?>
				<input type="checkbox" id="remember_me" name="remember" value="1">
				<label for="remember_me"><?= __('Remember me') ?></label>
				<?php endif; ?>
			</div>
			<div>
				<a href="index.php?p=forgot"><?php echo __('Forgot Password?') ?></a>
			</div>
		</div>
		
		<div class="container-login100-form-btn">
		<input type="submit" name="logMeIn" value="<?php echo __('Login'); ?>" class="memberButton" />
        <input type="button" value="Home" class="homeButton" onclick="javascript: location.href = 'index.php';" />
        </div>
    <?php } ?>
    </form>
</div>
<script type="text/javascript">jQuery('#userName').focus();</script>
<script>
$('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
	</script>

<?php
// main content
$main_content = ob_get_clean();

// page title
$opac->page_title = __('Library Automation Login').' | '.$sysconf['library_name'];
$page_title = __('Admin');

if ($sysconf['template']['base'] == 'html') {
    // create the template object
    $template = new simbio_template_parser($sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/login_template.html');
    // assign content to markers
    $template->assign('<!--PAGE_TITLE-->', $page_title);
    $template->assign('<!--CSS-->', $sysconf['template']['css']);
    $template->assign('<!--MAIN_CONTENT-->', $main_content);
    // print out the template
    $template->printOut();
} else if ($sysconf['template']['base'] == 'php') {
    require_once $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/login_template.inc.php';
}
exit();
