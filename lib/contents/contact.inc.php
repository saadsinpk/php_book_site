<?php

$opac->page_title = __('Contact') ;


?>

<div class="paragraph" id="contact">
	<div class="container">
		<div class="para-left">
			<img alt="icon-contact.png" src="template/default/assets/images/line_contact.png" width="486">
		</div>
		<div class="para-right">
			<h4 class=" mb-4">Contact Us</h4>
				<p>For any catalogue or account queries, contact us using the form below, or send an email to: <a href="mailto:library@muslimconnect.io">library@muslimconnect.io</a></p>
				<p>Follow our social media pages for important updates, events and more, and feel free to DM us for any general queries as well.</p>
		</div>
	</div>
	
<div class="form h-100 contact-wrap p-5">
<form class="mb-5" method="post" id="contactForm" name="contactForm">
<div class="row">
<div class="col-md-6 form-group mb-3">
<label for="" class="col-form-label">Name<span class="required">*</span></label>
<input type="text" class="form-control" name="name" id="name" placeholder="Your name">
</div>
<div class="col-md-6 form-group mb-3">
<label for="" class="col-form-label">Email<span class="required">*</span></label>
<input type="email" class="form-control" name="email" id="email" placeholder="Your email">
</div>
</div>
<div class="row">
<div class="col-md-12 form-group mb-3">
<label for="budget" class="col-form-label">Subject</label>
<input type="text" class="form-control" name="subject" id="subject" placeholder="Your subject">
</div>
</div>
<div class="row mb-5">
<div class="col-md-12 form-group mb-3">
<label for="message" class="col-form-label">Message<span class="required">*</span></label>
<textarea class="form-control" name="message" id="message" cols="30" rows="4" placeholder="Write your message"></textarea>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-5 form-group text-center">
<input type="submit" value="Send Message" class="btn btn-block btn-primary py-2 px-4">
<span class="submitting"></span>
</div>
</div>
</form>
<div id="form-message-warning mt-4"></div> 
            <div id="form-message-success">
              Your message was sent, thank you!
            </div>
</div>
</div>


    <script src="js/contactForm/jquery-3.3.1.min.js"></script>
    <script src="js/contactForm/popper.min.js"></script>
    <script src="js/contactForm/bootstrap.min.js"></script>
    <script src="js/contactForm/jquery.validate.min.js"></script>
    <script src="js/contactForm/main.js"></script>