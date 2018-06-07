$('#step1-dt-btn').click(function(){
	if($('#step1-dt-agree').is(':checked')){

		var email = $('#step1-dt-email').val();
		var re_email = $('#step1-dt-re-email').val();
		var pass = $('#step1-dt-pass').val();
		var re_pass = $('#step1-dt-re-pass').val();

		var form_data = new FormData();

		if($.trim(email) != $.trim(re_email) || $.trim(email) == ''){
			alert("Please enter email and re-enter email correctly !");
		}else {
			form_data.append('email', email);
			form_data.append('password', pass);
			form_data.append('confirm', re_pass);
			form_data.append('agree', 1);
			form_data.append('firstname', 'Not Enter');
			form_data.append('lastname', 'Not Enter');
			form_data.append('telephone', '000000000');
			form_data.append('address_1', 'Not Enter');
			form_data.append('city', 'Not Enter');
			form_data.append('postcode', 'Not Enter');
			form_data.append('country_id', 107);
			form_data.append('zone_id', 1678);
			form_data.append('register_step', '1');

			$.ajax({
				url: 'index.php?route=account/register',
				type: 'POST',
				data: form_data,
				cache       : false,
		        contentType : false,
		        processData : false,
		        success     : function(output){
		        	if(output != 'failed')
		        		window.location.replace("index.php?route=custome/login");
		        	else{
		        		alert("Failed ! Please try again.");
		        	}
		        } 
			});
		}

	}else {
		alert("Please check 'I agree with this policy'");
	}
});