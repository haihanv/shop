<?php echo $header; ?>

<!-- start main-login -->
<div class="main-login bg-light-grey">

<div class="container">
	<div id="application-form">
		<h3 style="color: #0099cc; font-size: 25px;"><b>APPLICATION FORM</b></h3>
		<br><br><br>

		<ul class="nav nav-justified nav-wizard">
		    <li class="active" id="li_step1"><a data-toggle="tab" href="#step1">STEP 1 <br> ACCOUNT REGISTRATION</a></li>
		    <li id="li_step2"><a data-toggle="tab" href="#step2">STEP 2 <br> CUSTOMER INFORMATION</a></li>
		    <li id="li_step3"><a data-toggle="tab" href="#step3">STEP 3 <br> CONTRACT INFORMATION</a></li>
		    <li id="li_step4"><a data-toggle="tab" href="#step4">STEP 4 <br> PAYMENT REGISTRATION</a></li>
		</ul>
		<br><br><br>


	<!-- begin steps -->
		
		<!-- begin step 1 -->
	  <div class="tab-content">
	    <div id="step1" class="tab-pane fade in active">
	      	<div class="step1-dt" id="step1-dt">
	      		
	      		<div class="row">
	  				<div class="col-sm-4"><h2 style="color: #0099cc;"><b>Select Product Category</b></h2></div>
	  				<div class="col-sm-8">
	  					<span style="float: left; position: relative; top: 70px; margin-right: 30px;"><input type="checkbox" checked></span>
	  					<img src="<?php echo $custome_29 ?>" class="img-responsive" style="float: left;">
	  					<div class="clear"></div>
	  				</div>
	      		</div>
	      		<br><br>

		      	<div id="note">
		      		<h1>NOTE</h1>
		      		<p style="padding-top: 18px;">
		      			
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
					        <td class="td-left" valign="middle"><p>Email</p></td>
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
					        <td class="td-left"><p>Email <span>(re-enter)</span></p></td>
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
					        <td class="td-left"><p>Password</p></td>
					        <td class="td-right">
					        	 <div>
						        	<div class="required"><span>Required</span></div>
						        	<div class="input-field">
						        		<input type="password" id="step1-dt-pass" name="password" class="form-control">
						        		<span><i style="font-size: 12px;">Password (at least 6 characters)</i></span>
						        	</div>
						        </div>
					        </td>
					    </tr>
					    <tr>
					        <td class="td-left"><p>Password <span>(re-enter)</span></p></td>
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

		  		<div style="text-align: center;">
			  		<input type="checkbox" id="step1-dt-agree">
			  		<span><b>I agree with this policy</b></span><br><br>
			  		<button type="submit" class="btn btn-primary submit-btn" id="step1-dt-btn" style="display: block; margin: 0 auto;">Proceed to enter customer information</button>
		  		</div>
		  		

	      	</div>
	      	<br><br>
	      	<div id="step1-dt-1" style="display: none;">
	      		<img class="img-responsive" src="<?php echo $done_img;?>" style="margin: 0px auto; display: block;">
	      	</div>
	    </div>
	    <!-- end step 1 -->

	    <br><br>

	    <!-- begin step 2 -->
	    <div id="step2" class="tab-pane fade">
	      <div class="step2-dt" id="step2-dt">
	      		<h4><b>ENTER CUSTOMER INFORMATION</b></h4>
	      		<br>

	      		<table class="table table-bordered upload-info">
	      			<tbody>
	      				<tr>
					        <td class="td-left"><p>Name</p></td>
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
					        <td class="td-left"><p>Address</p></td>
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
					        <td class="td-left"><p>Phone Number</p></td>
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
					        <td class="td-left"><p>Available time for calling</p></td>
					        <td class="td-right">
					        	<div id="sel">
						        	<div class="required"><span>Required</span></div>
						        	<div class="input-field">
						        		<select class="form-control" id="step2-dt-time">
						        			<option>None</option>
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

	      		<div style="text-align: center;">
	      			<span><button id="btn-file-input6" class="btn btn-primary btn-re-up">Re-up</button></span>
	      		</div>

	      		<br><br>

	      		<h4><b>UPLOAD INFORMATION</b></h4>
	      		<br>
	      		<!-- begin note -->
	      		<div id="note">
	      			<h1>NOTE</h1>
	      			<p style="padding-top: 27px;">
	      				Please check the date of expiration of your document. We do not accept expired passport or residence card 
	      			</p>
	      			<div class="clear"></div>
	      		</div>
	      		<!-- end note -->
	      		<br><br>

	      		<table class="table table-bordered">
	      			<tbody>
	      				<tr>
					        <td class="td-passport-left"><p>Passport</p></td>
					        <td class="td-passport-right">
						        <!-- <div class="container"> -->
							        <div class="row">
								        <div class="col-sm-3">
									        <div class="passport-note">											     
									        	<span style="margin-top: 20px;">Required</span><br><br>
									        	<span><i>* Note: Please upload the first page photo of your passport (The first page is the one with your photo and info on it, and not visa page). </i></span>
									        </div>
									    </div>
									    <div class="col-sm-6">   
									        <div class="passport-img">
									        	<img  id="passport-image" src="<?php echo $custome_sample ?>" class="img-responsive">
									        </div>
									    </div> 
									    <div class="col-sm-1">
									    	<div class="image-upload" style="margin-top: 100px; ">
											    <label for="file-input1">
											        <img src="<?php echo $custome_upload ?>"/>
											    </label>
											    <input id="file-input1" type="file" name="file" style="display: none;"/>
											</div>
									    	<button id="btn-file-input1" class="btn btn-primary btn-re-up">Re-up</button>
									    </div>
								    </div>
							    <!-- </div> -->
					        </td>
					    </tr>
					    <tr>
					        <th class="td-card-left" rowspan="2"><p>Residence card photos</p></th>
					        <td class="td-card-right" style="border-bottom: none;">
						        <div class="row">
						        	<div class="col-sm-3">
							        	<div class="card-note">
							        		<span style="margin-top: 40px;">Required</span><br><br>
							        		<span><i>* Note: Please upload both front and back photos of your residence card.</i></span>
							        	</div>
						        	</div>
						        	<div class="col-sm-6">
							        	<div class="card-img">
							        		<div class="front">
							        			<p><b>Front</b></p>
							        			<img  id="card-image1" src="<?php echo $custome_sample2 ?>" class="img-responsive">
							        		</div>						        		
							        	</div>
						        	</div>
						        	<div class="col-sm-1">
								    	<div class="image-upload" style="margin-top: 100px;">
										    <label for="file-input2">
										        <img src="<?php echo $custome_upload ?>"/>
										    </label>
										    <input id="file-input2" type="file" name="file" style="display: none;" />
										</div>
								    	<button id="btn-file-input2" class="btn btn-primary btn-re-up">Re-up</button>
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
							        			<img id="card-image2" src="<?php echo $custome_sample3 ?>" class="img-responsive">
							        		</div>
							        	</div>
						        	</div>
						        	<div class="col-sm-1">
								    	<div class="image-upload" style="margin-top: 100px;">
										    <label for="file-input3">
										        <img src="<?php echo $custome_upload ?>"/>
										    </label>
										    <input id="file-input3" type="file" name="file" style="display: none;" />
										</div>
								    	<button id="btn-file-input3" class="btn btn-primary btn-re-up">Re-up</button>
								    </div>
						        </div>
					        </td>	
					    </tr>
	      			</tbody>
	      		</table>

	      		<div style="text-align: center;">
			  		<button type="submit" class="btn btn-primary submit-btn" id="step2-dt-btn" style="display: inline-block; margin: 0 auto;  ">Proceed to enter customer information</button>
			  	</div>
			  	<div style="text-align: center;">
			  		<button type="submit" class="btn btn-primary submit-btn" id="step21-dt-btn" style="display: inline-block; margin: 0 auto;  ">Continue</button>
			  	</div>
		  		
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
	     		
	     		<div style="text-align: center;">
		  			<input type="checkbox" id="step3-dt-agree">
		  			<span><b>I agree with the contract and ready for the call</b></span><br><br>
		  			<button id="step3-dt-btn" class="btn btn-primary submit-btn" style="display: block; margin: 0 auto;">OK</button>
		  		</div>
		  		

	     	</div> 
	     	<div id="step3-dt-1" style="display: none; text-align: center; font-size: 25px; color: #FFD52B; font-style: italic;">

	     	</div>
	     	<div id="step3-dt-2" style="display: none;">
	      		<img class="img-responsive" src="<?php echo $done_img;?>" style="margin: 0px auto; display: block;">
	      	</div>   	
	    </div>
	    <!-- end step 3 -->



	    <div id="step4" class="tab-pane fade">
	     	<div class="step4-dt" id="step4-dt">
	     		<div id="note">
	      			<h1>NOTE</h1>
	      			<p style="padding-top: 30px;">
	      				You will receive a link after contract confirmation call from SoftBank center ( 0800-111-2009 )
	      			</p>
	      			<div class="clear"></div>
	      		</div>
	      		<!-- end note -->
	      		<div id="note-dt">
	      			<div class="row">
		      			<div class="col-sm-2">
		      				<p style="font-size: 15px;"><b>Message Sample:</b></p>
		      			</div>
		      			<div class="col-sm-8">

		      				SoftBank Airより <br>
		      				&lsaquo; &lsaquo; the link &rsaquo; &rsaquo; <br>
		      				上記URLよりご契約に必要な登録手続きをお願いします。

		      			</div>
	      			</div>
	      		</div>
	      		
	      		<div class="clear"></div><br>

	      		<div class="link">
	      			<div class="col-sm-3"><span><b>Please enter the link here:</b></span></div>
	      			<div class="col-sm-9">
	      				<input type="text" id="input_link" class="form-control">
	      			</div>
	      		</div>

	      		<br><br><br><br>
	      		<div class="payment">
	      			<div class="payment-img">
	      				<img src="<?php echo $custome_18 ?>" class="img-responsive" style="width: 100%;">
	      			</div>
	      			<br><br><br>
	      			<div class="col-sm-6">
	      				<div class="payment-type">
		      				<span><input type="checkbox" id="cb-bank"></span><br>
		      				<h4>BANK WITHDRAW</h4>
	      				</div>
	      			</div>

	      			<div class="col-sm-6">
	      				<div class="payment-type">
		      				<span><input type="checkbox" id="cb-credit"></span><br>
		      				<h4>CREDIT CARD</h4>
	      				</div>
	      			</div>

	      			<br><br><br><br>
	      			<div class="clear"></div>
	      			<div class="bank-withdraw" style="display: none;">
			      			<div class="block-1">
				      			<div class="row">
				      				<div class="col-sm-4 col-xs-4">
				      					<span><img class="img-responsive" src="<?php echo $custome_19 ?>"></span><br>
				      					<span><input type="checkbox" name="bank" value="Mizuho"></span>
				      				</div>
				      				<div class="col-sm-4 col-xs-4">
				      					<span><img class="img-responsive" src="<?php echo $custome_20 ?>"></span><br>
				      					<span><input type="checkbox" name="bank" value="Resona"></span>
				      				</div>
				      				<div class="col-sm-4 col-xs-4">
				      					<span><img class="img-responsive" src="<?php echo $custome_21 ?>"></span><br>
				      					<span><input type="checkbox" name="bank" value="Japan Post Bank (Yucho)"></span>
				      				</div>
				      			</div>
			      			</div>
			      			<div class="block-2">
			      				<div class="row">
			      				<div class="col-sm-4 col-xs-4">
			      					<span><img class="img-responsive" src="<?php echo $custome_22 ?>"></span><br>
			      					<span><input id="cb-mufg" type="checkbox" name="bank" value="Mitsubishi UFJ"></span>
			      				</div>
			      				<div class="col-sm-4 col-xs-4">
			      					<span><img class="img-responsive" src="<?php echo $custome_23 ?>"></span><br>
			      					<span><input type="checkbox" name="bank" value="Sumitomo (SMBC)"></span>
			      				</div>
			      				<div class="col-sm-4 col-xs-4">
			      					<span style="color: #0099cc;"><b>OTHERS</b></span><br>
			      					<span><input id="cb-other" type="checkbox" name="bank" value="other" style="margin-top: 17%;"></span>
			      				</div>
			      				</div>
		      				</div>
		      			<br>
		      			<div class="clear"></div>
		      			<div class="other" style="display: none;">
		      				<p>
		      					There is posibility that your bank is not supported to proceed payment registration online.
		      					Therefore, we will send payment registration documents to your address. Please fill in the registration form, stamp on it with your seal (印鑑), put it in the envelop and send back the document to us.
		      				</p>
		      			</div>

		      			<table class="table table-bordered">
	      					<tbody>
	      						<tr>
	      							<td class="payment-left" style="padding-top: 70px;">
	      								<span>Cash card or bank passbook cover</span>
	      							</td>
	      							<td class="payment-right">
	      								<div class="row">
									        <div class="col-sm-3">
										        <div class="payment-note">
										        	<span>Required</span><br><br>
										        	<span style="font-style: italic;">*Photo of bank cash card or bank passbook cover: (which has your name and bank account number on it).</span>
										        </div>
										    </div>
										    <div class="col-sm-6">   
										        <div class="payment-img">
										        	<img  id="payment-image1" class="img-responsive" src="" class="img-responsive">
										        </div>
										    </div> 
										    <div class="col-sm-1">
										    	<div class="image-upload" style="margin-top: 100px;">
												    <label for="file-input4">
												        <img src="<?php echo $custome_upload ?>"/>
												    </label>
												    <input id="file-input4" type="file" style="display: none;"/>
												</div>
										    	<button id="btn-file-input4" class="btn btn-primary btn-re-up">Re-up</button>
										    </div>
									    </div>
	      							</td>
	      						</tr>
	      						<tr>
	      							<td class="payment-left">
	      								<span>Security Code</span>
	      							</td>
	      							<td class="payment-right">
	      								<div class="row">
			      							<div class="col-sm-3">
			      								<span style="font-style: italic;">*4 digits</span>
			      							</div>
			      							<div class="col-sm-6">
			      								<input type="password" id="security_code" class="form-control" style="width: 90%; margin-left: 20px;">
			      							</div>
			      							<div class="col-sm-1">
										    	<button class="btn btn-primary btn-re-up">Re-up</button>
										    </div>
									    </div>
	      							</td>
	      						</tr>
	      						<tr id="tr-mufg" style="display: none;">
	      							<td class="payment-left" style="padding-top: 100px;">
	      								<span>Passbook last page</span>
	      							</td>
	      							<td class="payment-right">
	      								<div class="row">
									        <div class="col-sm-3">
										        <div class="payment-note" style="margin-top: 20px;">
										        	<span>Required</span><br><br>
										        	<span style="font-style: italic;">*Please send us the page below which shows the last printed account balance on your bank passbook.</span>
										        </div>
										    </div>
										    <div class="col-sm-6">   
										        <div class="payment-img">
										        	<img  id="payment-image2" class="img-responsive" src="<?php echo $custome_sample4 ?>" class="img-responsive">
										        </div>
										    </div> 
										    <div class="col-sm-1">
										    	<div class="image-upload" style="margin-top: 100px;">
												    <label for="file-input5">
												        <img src="<?php echo $custome_upload ?>"/>
												    </label>
												    <input id="file-input5" type="file" style="display: none;"/>
												</div>
										    	<button id="btn-file-input5" class="btn btn-primary btn-re-up">Re-up</button>
										    </div>
									    </div>
	      							</td>
	      						</tr>
	      					</tbody>
	      				</table>

	      				<div>
	      					<button id="btn-payment-bank" class="btn btn-primary submit-btn" style="display: block; margin: 0 auto;">Submit</button>
	      				</div>
	      			</div>
	      			<!-- end bank-withdraw -->

	      			<br><br>
	      			<div class="credit-card" style="display: none; ">

	      				<div class="credit-brand">
	      					<div class="row">
	      						<div class="col-sm-1"></div> 


	      						<div class="col-sm-2">
	      							<img src="<?php echo $custome_24 ?>" class="img-responsive">
	      						</div>
	      						<div class="col-sm-2">
	      							<img src="<?php echo $custome_25 ?>" class="img-responsive">
	      						</div>
	      						<div class="col-sm-2">
	      							<img src="<?php echo $custome_26 ?>" class="img-responsive">
	      						</div>
	      						<div class="col-sm-2">
	      							<img src="<?php echo $custome_27 ?>" class="img-responsive">
	      						</div>
	      						<div class="col-sm-2">
	      							<img src="<?php echo $custome_28 ?>" class="img-responsive">
	      						</div>


	      						<div class="col-sm-1"></div>
	      					</div>
	      				</div>
	      				<div class="clear"></div>
	      				<br><br><br>

	      				<table class="table table-bordered">
	      					<tbody>

	      						<tr>
	      							<td class="credit-left">
	      								<span>Card No</span>
	      							</td>
	      							<td class="credit-right">
	      								<div class="row">
		      								<div class="col-sm-2">
		      									<div class="credit-note">
		      										<span> Required</span>
		      									</div>
		      								</div>
		      								<div class="col-sm-10">
		      									<div>
		      										<input id="card_no_1" type="text" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		      										<span> - </span>
		      										<input id="card_no_2" type="text" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		      										<span> - </span>
		      										<input id="card_no_3" type="text" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		      										<span> - </span>
		      										<input id="card_no_4" type="text" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		      									</div>
		      								</div>
	      								</div>
	      							</td>
	      						</tr>
	      						<tr>
	      							<td class="credit-left">
	      								<span>Expire Date</span>
	      							</td>
	      							<td class="credit-right">
	      								<div class="row">
		      								<div class="col-sm-2">
		      									<div class="credit-note">
		      										<span> Required</span>
		      									</div>
		      								</div>
		      								<div class="col-sm-10">
		      									<input id="expire_date_1" type="text" placeholder="01" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		  										<span> / </span>
		  										<input id="expire_date_2" type="text" placeholder="2020" style="max-width: 80px; border-radius: 5px; margin: 3px; text-align: center;">
		      								</div>
	      								</div>
	      							</td>
	      						</tr>
	      						<tr>
	      							<td class="credit-left">
	      								<span>Security No</span>
	      							</td>
	      							<td class="credit-right">
	      								<div class="row">
		      								<div class="col-sm-2">
		      									<div class="credit-note">
		      										<span> Required</span>
		      									</div>
		      								</div>
		      								<div class="col-sm-5">
		      									<input id="security_no" type="text" class="form-control">
		      								</div>
	      								</div>
	      							</td>
	      						</tr>
	      						<tr>
	      							<td class="credit-left">
	      								<span>Phone No</span>
	      							</td>
	      							<td class="credit-right">
	      								<div class="row">
		      								<div class="col-sm-2">
		      									<div class="credit-note">
		      										<span> Required</span>
		      									</div>
		      								</div>
		      								<div class="col-sm-5">
		      									<input id="phone_no" type="text" class="form-control">
		      								</div>
	      								</div>
	      							</td>
	      						</tr>
	      						<tr>
	      							<td class="credit-left">
	      								<span>User Name</span>
	      							</td>
	      							<td class="credit-right">
	      								<div class="row">
		      								<div class="col-sm-2">
		      									<div class="credit-note">
		      										<span> Required</span>
		      									</div>
		      								</div>
		      								<div class="col-sm-2">
		      									<input id="user_last_name" type="text" placeholder="Last Name" class="form-control">
		      								</div>
		      								<div class="col-sm-2">
		      									<input id="user_first_name" type="text" placeholder="First Name" class="form-control">
		      								</div>
	      								</div>
	      							</td>
	      						</tr>

	      					</tbody>
	      				</table>

	      				<div>
	      					<button id="btn-payment-credit" class="btn btn-primary submit-btn" style="display: block; margin: 0 auto;">Submit</button>
	      				</div>
	      				<br><br>
	      			</div>
	      			<!-- end creadit-card -->
	      		</div>
	      		<!-- end payment -->
	     	</div>
	     	<!-- end step4-dt -->
	     	<div id="step4-dt-1" style="display: none; text-align: center; font-size: 20px; color: #FFD52B; font-style: italic;">

	     	</div>
	     	<div id="step4-dt-2" style="display: none;">
	      		<img class="img-responsive" src="<?php echo $done_img;?>" style="margin: 0px auto; display: block;">
	      	</div> 

	    </div>
	    <!-- end step 4 -->

	  </div>
	  <!-- end tabs contain -->
	</div>
<!-- end application-form -->


	<div class="step5-dt" id="step5-dt" style="display: none;">
		<h2>ORDER STATUS</h2>
		<br>
		<div class="row bs-wizard" style="border-bottom:0;">      
	      <div class="col-xs-3 bs-wizard-step active" id="step5-dt-step1">
	        <div class="text-center bs-wizard-stepnum">Order</div>
	        <div class="progress"><div class="progress-bar"></div></div>
	        <a class="bs-wizard-dot"></a>
	        <div class="bs-wizard-info text-center"></div>
	      </div>
	      
	      <div class="col-xs-3 bs-wizard-step disabled" id="step5-dt-step2"><!-- complete -->
	        <div class="text-center bs-wizard-stepnum">Payment</div>
	        <div class="progress"><div class="progress-bar"></div></div>
	        <a class="bs-wizard-dot"></a>
	        <div class="bs-wizard-info text-center"></div>
	      </div>
	      
	      <div class="col-xs-3 bs-wizard-step disabled" id="step5-dt-step3"><!-- complete -->
	        <div class="text-center bs-wizard-stepnum">Delivery</div>
	        <div class="progress"><div class="progress-bar"></div></div>
	        <a class="bs-wizard-dot"></a>
	        <div class="bs-wizard-info text-center"></div>
	      </div>
	      
	      <div class="col-xs-3 bs-wizard-step disabled" id="step5-dt-step4"><!-- active -->
	        <div class="text-center bs-wizard-stepnum">Done</div>
	        <div class="progress"><div class="progress-bar"></div></div>
	        <a class="bs-wizard-dot"></a>
	        <div class="bs-wizard-info text-center"></div>
	      </div>
		</div>

		<br><br>
		<div class="order-info">
			<div class="row">
				<div class="col-sm-3">
					<h4>Customer Address</h4><br>
					<p><?php echo $customer_address; ?></p>
				</div>
				<div class="col-sm-3">
					<h4>Delivery Time</h4><br>
					<p><?php echo $customer_delivery_time; ?></p>
				</div>
				<div class="col-sm-3">
					<h4>Payment Status</h4><br>
					<?php if($customer_order_status < 3){ ?>
					<p>In Progress</p>
					<?php } else { ?>
					<p>Done</p>
					<?php } ?>
				</div>
				<div class="col-sm-3">
					<h4>Payment Method</h4><br>
					<?php if($customer_payment_method == 1){ ?>
					<p>Bank Withdraw</p>
					<?php } else { ?>
					<p>Credit Card</p>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end container -->

</div> 
<!-- end main-login -->

<div id="initStates" style="display: none;"><?php echo $customer_states ?></div>
<div id="customer_id" style="display: none;"><?php echo $customer_id ?></div>
<div id="admin_message" style="display: none;"><?php echo $admin_message ?></div>
<div id="order_status" style="display: none;"><?php echo $order_status ?></div>
<div id="current_step" style="display: none;"><?php echo $current_step ?></div>


<!-- include custome script here -->
<script type="text/javascript">
//script for initial states
$(document).ready(function(){
	// this is the beginning of entering the login page
	var str_initStates = $('#initStates').html();
	var arr_initStates = JSON.parse(str_initStates);
	
	
	$('button.btn-re-up').hide();
	$('#step21-dt-btn').hide();


	if(arr_initStates[0] != 'none' && arr_initStates[0] == '0'){
		$('#step2-dt').hide();
		$('#step3-dt').hide();
		$('#step4-dt').hide();
		$('#step5-dt').hide();
	} else {		
		$('#step2-dt').hide();
		$('#step3-dt').hide();
		$('#step4-dt').hide();
		$('#step5-dt').hide();
	}

	// check state 1
	if(arr_initStates[0] == '1'){
		$('#step2-dt').show();
		$('#step1-dt').hide();
		$('#step1-dt-1').show();
	}

	

	// check state 2
	if(arr_initStates[1] == '1' && arr_initStates[2] == '0'){
		$('#step3-dt').show();
		$('#step3-dt-1').hide();
		$('#step3-dt-2').hide();
		$('#step2-dt').hide();
		$('#step2-dt-1').show();
	} else if(arr_initStates[1] == '1' && arr_initStates[2] == '4'){
		$('#step2-dt').show();
		$('#step2-dt-1').hide();
		$('.btn-re-up').show();

	} else if(arr_initStates[1] == '1' && arr_initStates[2] == '1'){
		$('#step2-dt').hide();
		$('#step2-dt-1').show();
	} 

	// check state 3
	if(arr_initStates[2] == '1'){
		$('#step4-dt').show();
		$('#step3-dt').hide();
		$('#step3-dt-1').hide();
		$('#step3-dt-2').show();

	} else if(arr_initStates[2] == '3' || arr_initStates[2] == '5'){
		//waiting confirmation from admin
		$('#step3-dt').hide();
		$('#step3-dt-1').fadeIn();
		$('#step3-dt-1').html("Please wait to get Confirmation from Admin");
		$('#step2-dt').hide();
		$('#step2-dt-1').show();

	}else if(arr_initStates[2] == '4'){
		// get msg from admin to re-up data
		$('#step3-dt').hide();
		$('#step3-dt-1').fadeIn();
		$('#step21-dt-btn').show();
		$('#step2-dt-btn').hide();
		var admin_msg = $('#admin_message').html();
		if(admin_msg !== 'none')
			$('#step3-dt-1').html(admin_msg); 
	} 

	// check for state 4
	if(arr_initStates[3] == '1'){
		$('#step5-dt').show();
		$('#application-form').hide();
	} else if(arr_initStates[3] == '3' || arr_initStates[3] == '5'){
		$('#step5-dt').hide();
		$('#step4-dt').hide();
		$('#step4-dt-2').hide();
		$('#step4-dt-1').fadeIn();
		$('#step4-dt-1').html("Please wait to get Confirmation from Admin");
	} else if(arr_initStates[3] == '4') {
		$('#step5-dt').hide();
		$('#step4-dt').show();
		$('#step4-dt-2').hide();
		$('#step4-dt-1').fadeIn();
		var admin_msg = $('#admin_message').html();
		if(admin_msg !== 'none')
			$('#step4-dt-1').html(admin_msg); 
		$('.btn-re-up').show();
	} else if(arr_initStates[3] == '0' && arr_initStates[2] == '1'){
		$('#step5-dt').hide();
		$('#step4-dt').show();
		$('#step4-dt-1').hide();
		$('#step4-dt-2').hide();
	}

	
	//active current step
	var current_step = parseInt($('#current_step').html());
	$('ul.nav-wizard li').each(function(index){
		if($(this).hasClass('active')){
			$(this).removeClass('active');
		}

		$(this).find('a').attr('data-toggle', '');
		$(this).find('a').removeAttr('href');

		if((index+1) == current_step){
			$(this).addClass('active');
			$(this).find('a').attr('data-toggle', 'tab');
			$(this).find('a').attr('href', '#step'+current_step);
		}

	});

	if(current_step == 0) {
		$('ul.nav-wizard li:first-child').addClass('active'); 
		$('ul.nav-wizard li:first-child a').attr('data-toggle', 'tab');
		$('ul.nav-wizard li:first-child a').attr('href', '#step1');

	}

	if(current_step == 3 && arr_initStates[2] == '4'){
		$('#li_step2 a').attr('data-toggle', 'tab');
		$('#li_step2 a').attr('href', '#step2');
	}



	for(var i=1; i<5; i++){
		$('#step'+i).removeClass('active');
		$('#step'+i).removeClass('in');
	}

	if(current_step == 0){
		$('#step1').addClass('active');
		$('#step1').addClass('in');
	} else {
		$('#step'+current_step).addClass('active');
		$('#step'+current_step).addClass('in');
	}

});
</script>


<script src="catalog/view/javascript/custome/custome-register.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-preview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-single-upload.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-multiple-upload.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-process.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-step4.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custome/custome-step5.js" type="text/javascript"></script>
<?php echo $footer; ?>