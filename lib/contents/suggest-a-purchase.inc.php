<?php

$opac->page_title = __('Suggest a Purchase') ;


?>
	
<div class="paragraph" id="suggest">
	<div class="container">
		<div class="para-left">
			<h4 class=" mb-4">Suggest a Purchase</h4>
				<p>Knowing what people are interested in reading is very helpful! If you can’t find what you are looking for in our catalogue, fill out the form below with the relevant details. If we do purchase your suggestion, you will be the first to be notified when it's available.</p>
				<p>We cannot guarantee that all requests will be met but each will be given due consideration. It will also be added to our Amazon Wish List in case someone would like to donate that title to us. </p>
		</div>
		<div class="para-right">
			<img alt="icon-suggest.png" src="template/default/assets/images/line_sap.png" width="486">
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
<div class="row mt-8">
<div class="col-md-6 form-group mb-3">
<label for="" class="col-form-label">Title<span class="required">*</span></label>
<input type="text" class="form-control" name="title" id="title" placeholder="Item title">
</div>
<div class="col-md-6 form-group mb-3">
<label for="" class="col-form-label">Author<span class="required">*</span></label>
<input type="text" class="form-control" name="author" id="author" placeholder="Item author">
</div>
</div>
<div class="row mb-5">
<div class="col-md-12 form-group mb-3">
<label for="message" class="col-form-label">Other info</label>
<textarea class="form-control" name="message" id="info" cols="30" rows="4" placeholder="Year, Edition, ISBN, Publisher"></textarea>
</div>
</div>

<div class="row justify-content-center">
<div class="col-md-5 form-group text-center">
<input type="submit" value="Submit Suggestion" class="btn btn-block btn-primary py-2 px-4">
<span class="submitting"></span>
</div>
</div>
</form>
<div id="form-message-warning mt-4"></div> 
            <div id="form-message-success">
              Your suggestion was submitted, thank you!
            </div>
</div>
</div>


    <script src="js/contactForm/jquery-3.3.1.min.js"></script>
    <script src="js/contactForm/popper.min.js"></script>
    <script src="js/contactForm/bootstrap.min.js"></script>
    <script src="js/contactForm/jquery.validate.min.js"></script>
    <script src="js/contactForm/main.js"></script>