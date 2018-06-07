<?php echo $header; ?>

<!-- start main-login -->
<div class="main-login bg-light-grey">

<div class="container">
	<h3>APPLICATION FORM</h3>
	<br><br><br>

	<ul class="nav nav-justified">
	    <li class="active"><a data-toggle="tab" href="#step1">STEP 1</a></li>
	    <li><a data-toggle="tab" href="#step2">STEP 2</a></li>
	    <li><a data-toggle="tab" href="#step3">STEP 3</a></li>
	    <li><a data-toggle="tab" href="#step4">STEP 4</a></li>
	</ul>
	<br><br><br>


<!-- begin steps -->
	
	<!-- begin step 1 -->
  <div class="tab-content">
    <div id="step1" class="tab-pane fade in active">
      	<div class="step1-dt" id="step1-dt">
      		

	      	<div id="note">
	      		<h1>NOTE</h1>
	      		<p>
	      			
	      		Your account will be the email you registered for the application.
	      		We will be sending important notices so please make sure that your email address is correct.
	      		Please register an email address if you don't have one.

	      		</p>
	      	</div>
	      	<div class="clear"></div>
	      	<!-- end note -->
	      	<br><br>

	      	<table class="table table-bordered">
	  			<tbody>
	  				<tr>
				        <td class="td-left" valign="middle">Email</td>
				        <td class="td-right" valign="middle">
					        <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="email" id="step1-dt-email" name="email" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Email <span>(re-enter)</span></td>
				        <td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="email" id="step1-dt-re-email" name="email" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Password</td>
				        <td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="password" id="step1-dt-pass" name="password" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Password <span>(re-enter)</span></td>
				       	<td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="password" id="step1-dt-re-pass" name="confirm" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
	  			</tbody>
	  		</table>

	  		<br><br>

	  		<div class="privacy">
	  			<h4>Privacy Policy</h4>
	  			<div>
	  			<p>
	  			This privacy notice discloses the privacy practices for kantanwifi-JP.com. this privacy practice applies solely to information collected by this website. It will notify you of the following:
	  			</p>

	  			<ol type="1">
	  				<li>
	  					What personally identifiable information collected from you through the website, how it is used and with whom it may be shared.
	  				</li>
	  				<li>
	  					What choices are available to you regarding the use of your data.
	  				</li>
	  				<li>
	  					The security procedures in place to protect the misuse of your information.
	  				</li>
	  				<li>
	  					How you can correct any inaccuracies in the information.
	  				</li>
	  			</ol>
	  			<br><br>
	  		
	  			<p><b>Information Collection, Use, and Sharing</b></p>

	  			<span>
	  				We are the sole owners of the information collected on this web site. We only have access to/collect information that you voluntarily give us via email or other direct cotact from you. We will not sell or rent this information to anyone.
	  			</span><br>
	  			<span>
	  				We will use information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g to ship an order.
	  			</span><br>
	  			<span>
	  				Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.
	  			</span>

	  			<br><br>

	  			<p><b>Your Access to and Control Over Information</b></p>

	  			<span>
	  				You may opt out of any future contacts from us at any time. You can fo the following at any time by contacting is via the email address or phone number given on our website.
	  			</span><br>
	  			<span>
	  				See what data we have about you, if any.
	  			</span><br>
	  			<span>
	  				Change/correct any data we have about you.
	  			</span><br>
	  			<span>
	  				Help us delete any data we have about you.
	  			</span><br>
	  			<span>
	  				Express any concern you have about our use of your data.
	  			</span>

	  			<br><br>

	  			<p><b>Security</b></p>
	  			<span>
	  				We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.
	  			</span><br>
	  			<span>
	  				Wherever we collect sensitive information (such as credit card data), that information is encypted and transmitted to us via secure way. You can verify it by looking for a lock icon in the address bar and looking for "https" at the beginning of the address of the Web page.
	  			</span><br>
	  			<span>
	  				While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer services) are granted access to personally identifiable information. The computers/servers in which we store personally indentifiacble information are kept in a secure environment.
	  			</span><br><br>
	  			<span>
	  				If you feel that we are not abiding by this privacy, you should contact us immediately via email <b>abc@xyx</b>
	  			</span>
	  			</div>
	  		</div>
	  		<!-- end Privacy -->
	  		<br><br>

	  		
	  		<input type="checkbox" id="step1-dt-agree">
	  		<span><b>I agree with this policy</b></span><br><br>
	  		<button type="submit" class="btn btn-primary" id="step1-dt-btn">Proceed to enter customer information</button>
	  		

      	</div>
      	<div id="step1-dt-1" style="display: none;">
      		<img class="img-responsive" src="<?php echo $done_img;?>" style="margin: 0px auto; display: block;">
      	</div>
    </div>
    <!-- end step 1 -->

    <br><br>

    <!-- begin step 2 -->
    <div id="step2" class="tab-pane fade">
      <div class="step2-dt" id="step2-dt">
      		<h5><b>ENTER CUSTOMER INFORMATION</b></h5>
      		<br>

      		<table class="table table-bordered upload-info">
      			<tbody>
      				<tr>
				        <td class="td-left">Name</td>
				        <td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="text" id="step2-dt-name" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Address</td>
				        <td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="text" id="step2-dt-address" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Phone Number</td>
				        <td class="td-right">
				        	 <div>
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<input type="text" id="step2-dt-phone" class="form-control">
					        	</div>
					        </div>
				        </td>
				    </tr>
				    <tr>
				        <td class="td-left">Available time for calling</td>
				        <td class="td-right">
				        	<div id="sel">
					        	<div class="required"><span>Required</span></div>
					        	<div class="input-field">
					        		<select class="form-control" id="step2-dt-time">
								        <option>10.am - 11.am</option>
								        <option>11.am - 12.am</option>
								        <option>12.am - 1.pm</option>
								        <option>1.pm - 2.pm</option>
								        <option>2.pm - 3.pm</option>
								        <option>3.pm - 4.pm</option>
								        <option>4.pm - 5.pm</option>
								        <option>5.pm - 6.pm</option>
								        <option>6.pm - 7.pm</option>
								    </select>
					        	</div>
				        	</div>
				        </td>
				    </tr>
      			</tbody>
      		</table>

      		<br><br>

      		<h5><b>UPLOAD INFORMATION</b></h5>
      		<br>
      		<!-- begin note -->
      		<div id="note">
      			<h1>NOTE</h1>
      			<p>
      				Please upload the first page photo of your passport (The first page is the one with your photo and info on it, and not visa page). 
      			</p>
      			<div class="clear"></div>
      		</div>
      		<!-- end note -->
      		<br><br>

      		<table class="table table-bordered">
      			<tbody>
      				<tr>
				        <td class="td-passport-left">Passport</td>
				        <td class="td-passport-right">
					        <!-- <div class="container"> -->
						        <div class="row">
							        <div class="col-sm-3">
								        <div class="passport-note">
								        	<span>Required</span><br><br>
								        	<span><i>* Note: Please upload the first page photo of your passport (The first page is the one with your photo and info on it, and not visa page). </i></span>
								        </div>
								    </div>
								    <div class="col-sm-6">   
								        <div class="passport-img">
								        	<img  id="passport-image" src="<?php echo $custome_sample ?>" class="img-responsive">
								        </div>
								    </div> 
								    <div class="col-sm-1">
								    	<div class="image-upload">
										    <label for="file-input1">
										        <img src="<?php echo $custome_upload ?>"/>
										    </label>
										    <input id="file-input1" type="file" name="file" style="display: none;"/>
										</div>
								    	<button id="btn-file-input1" class="btn btn-primary">Re-up</button>
								    </div>
							    </div>
						    <!-- </div> -->
				        </td>
				    </tr>
				    <tr>
				        <th class="td-card-left" rowspan="2">Residence card photos</th>
				        <td class="td-card-right" style="border-bottom: none;">
					        <div class="row">
					        	<div class="col-sm-3">
						        	<div class="card-note">
						        		<span>Required</span><br><br>
						        		<span><i>* Note: Please upload both front and back photos of your residence card.</i></span>
						        	</div>
					        	</div>
					        	<div class="col-sm-6">
						        	<div class="card-img">
						        		<div class="front">
						        			<p><b>Front</b></p>
						        			<img  id="card-image1" src="<?php echo $custome_sample ?>" class="img-responsive">
						        		</div>						        		
						        	</div>
					        	</div>
					        	<div class="col-sm-1">
							    	<div class="image-upload">
									    <label for="file-input2">
									        <img src="<?php echo $custome_upload ?>"/>
									    </label>
									    <input id="file-input2" type="file" name="file" style="display: none;" />
									</div>
							    	<button id="btn-file-input2" class="btn btn-primary">Re-up</button>
							    </div>
					        </div>
				        </td>				        
				    </tr>
				    <tr>
				    	<td class="td-card-right">
					        <div class="row">
					        	<div class="col-sm-3"></div>
					        	<div class="col-sm-6">
						        	<div class="card-img">
						        		<div class="back">
						        			<p><b>Back</b></p>
						        			<img id="card-image2" src="<?php echo $custome_sample ?>" class="img-responsive">
						        		</div>
						        	</div>
					        	</div>
					        	<div class="col-sm-1">
							    	<div class="image-upload">
									    <label for="file-input3">
									        <img src="<?php echo $custome_upload ?>"/>
									    </label>
									    <input id="file-input3" type="file" name="file" style="display: none;" />
									</div>
							    	<button id="btn-file-input3" class="btn btn-primary">Re-up</button>
							    </div>
					        </div>
				        </td>	
				    </tr>
      			</tbody>
      		</table>

      		
	  		<button type="submit" class="btn btn-primary" id="step2-dt-btn">Proceed to enter customer information</button>
	  		
      </div>
      <div id="step2-dt-1" style="display: none;">
      		<img class="img-responsive" src="<?php echo $done_img;?>" style="margin: 0px auto; display: block;">
      </div>
    </div>
    <!-- end step 2 -->



    <!-- begin step 3 -->
    <div id="step3" class="tab-pane fade">
     	<div class="step3-dt" id="step3-dt">
     		<div class="step3-dt1">
     			<p class="intro">
     				This document explains important points that customers should take into consideration when using the services. After fully understanding the contents of the contract, please proceed to the call from Softbank center. If you have any questions concerning features and details of our services, please refer to our homepage.
     			</p>
     			<br>
     			<div>
     				<p><b>A. Contract and Usage Fees</b></p>
     				<ol type="1">
     					<li>Using the documents you provided at the time of contract application, we will carry out necessary inspection designated by our company.
	     					<br>
	     					<span>- Verification documents required for contract application.</span>
	     					<br>
	     					<span>- Passport (valid).</span>
	     					<br>
	     					<span>- Residence card (valid).</span>     						
     					</li>
     					<li>
     						Fees to be paid at the time of making the contract. 
     						<br>
     						<span>3000 yen initial fee for starting using the service (only in the first month).</span>
     					</li>
     					<li>
     						Monthly Usage Fee:
     						<br>
							<span>The monthly basic charge is 3800 yen/month (tax excluded).</span>
     					</li>
     				</ol>

     				<p><b>B. Contract Change and Contract Cancelation</b></p>
     				<span>
     					The contract term of SoftBank Air is two years. If cancellation is made outside the month of expiration of the contract term, there will be a cancellation fee of 9,500 yen.
     				</span><br>
     				<span>
     					If there is no offer for cancelation at the end of contract term, the contract will be renewed for 2 years more. The monthly basic charge will be 4,880 yen/month (tax excluded) for the next 2 years. 
     				</span>
     			</div>
     		</div>
     		<br><br>

     		<div class="step3-dt2">
     			<span>
     				You will receive a call from Softbank Center at your available time, which is only for confirming that you agreed to use the service. 
     			</span><br>
     			<span>
     				The call will not succeed if there is something about the service you are not sure about. 
     			</span>
     			<span>
     				If you have further questions, please contact us in advance.  
     			</span><br>
     			<span><i>(Please note that they will call you in Japanese language)</i></span>
     		</div>

     		<br><br>
     		<form id="form-step3">
	  			<input type="checkbox">
	  			<span><b>I agree with the contract and ready for the call</b></span><br><br>
	  			<button type="submit" class="btn btn-primary">Ok</button>
	  		</form>

     	</div>    	
    </div>
    <!-- end step 3 -->



    <div id="step4" class="tab-pane fade">
      	<div class="step4-dt" id="step4-dt"></div>
    </div>
  </div>

</div>

</div> 
<!-- end main-login -->

<div id="initStates" style="display: none;"><?php echo $customer_states ?></div>
<div id="customer_id" style="display: none;"><?php echo $customer_id ?></div>

<!-- include custome script here -->
<script type="text/javascript">
//script for initial states
$(document).ready(function(){
	// this is the beginning of entering the login page
	var str_initStates = $('#initStates').html();
	var arr_initStates = JSON.parse(str_initStates);
	
	if(arr_initStates[0] != 'none' && arr_initStates[0] == '0'){
		$('#step2-dt').hide();
		$('#step3-dt').hide();
		$('#step4-dt').hide();
	} else {		
		$('#step2-dt').hide();
		$('#step3-dt').hide();
		$('#step4-dt').hide();
	}

	// check state 1
	if(arr_initStates[0] == '1'){
		$('#step2-dt').show();
		$('#step1-dt').hide();
		$('#step1-dt-1').show();
	}

	// check state 2
	if(arr_initStates[1] == '1'){
		$('#step3-dt').show();
		$('#step2-dt').hide();
		$('#step2-dt-1').show();
	}

	// check state 3
	if(arr_initStates[2] == '1'){
		$('#step4-dt').show();
	} else if(arr_initStates[2] == '3'){
		// todo: do st in current tab -> wait for admin to check data uploaded
		// 
		// 
	}else if(arr_initStates[2] == '4'){
		// get msg from admin to re-up data
		// 
		// 
		$('#step2-dt').show();
	}


	// action after checking all states
	$('#step1-dt-btn').click(function(e){
		e.preventDefault();
		$('#step2-dt').show();
	});

	$('#step2-dt-btn').click(function(e){
		e.preventDefault();
		$('#step3-dt').show();
	});
});
</script>
<script src="catalog/view/javascript/custome/custome-register.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-preview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-single-upload.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-multiple-upload.js" type="text/javascript"></script>

<?php echo $footer; ?>