
var _customer_id = $('#customer_id').html();

$('#cb-bank').change(function(){
	if($('#cb-bank').is(':checked')){
		$('#cb-credit').prop( "checked", false );
		$('.credit-card').hide();
		$('.bank-withdraw').fadeIn();
	}else{
		$('.bank-withdraw').fadeOut();
	}
});

$('#cb-credit').change(function(){
	if($('#cb-credit').is(':checked')){
		$('#cb-bank').prop( "checked", false );
		$('.bank-withdraw').hide();
		$('.credit-card').fadeIn();
	}else{
		$('.credit-card').fadeOut();
	}
});



$('#cb-other').change(function(){
	if($('#cb-other').is(':checked')){
		$('.other').fadeIn();
		$('#tr-mufg').fadeOut();
	}else{
		$('.other').fadeOut();
	}
});

$('#cb-mufg').change(function(){
	if($('#cb-mufg').is(':checked')){
		$('#tr-mufg').fadeIn();
		$('.other').fadeOut();
	}else{
		$('#tr-mufg').fadeOut();
	}
});

$("input:checkbox").on('change', function(){
	var $box = $(this);
	if($box.attr('name') == 'bank'){
		if($box.is(':checked')){
			var group = "input:checkbox[name='" + $box.attr("name") + "']";
			$(group).prop("checked", false);
			$box.prop("checked", true);
		}

		if($box.attr('id') != 'cb-other' && $box.attr('id') != 'cb-mufg'){
			$('#tr-mufg').fadeOut();
			$('.other').fadeOut();
		}
	}
});

//for submiting to server

$('#btn-payment-bank').click(function(){
	var payment_method = 1;
	var input_link = $('#input_link').val();
	var $box = "none";

	$("input[type=checkbox][name='bank']").each(function(){
		if($(this).is(':checked')){
			$box = $(this);
		}
	});

	if($box != 'none'){		
		var bank_name = $box.val();
		var security_code = $('#security_code').val();
		var file_data1 = $('#file-input4').prop('files')[0];
		var form_data = new FormData();

		if($.trim(input_link) != ''){

			if(security_code.length == 4 && $.isNumeric(security_code) == true ){					
				form_data.append('file1', file_data1);
				form_data.append('security_code', security_code);
				form_data.append('input_link', input_link);
				form_data.append('customer_id', _customer_id);
				form_data.append('image_name1', "image_4");
				form_data.append('bank_name', bank_name);
				form_data.append('payment_method', payment_method);

				if(bank_name == 'bank4') {
					var file_data2 = $('#file-input5').prop('files')[0];
					form_data.append('file2', file_data2);
					form_data.append('image_name2', "image_5");
				}

				$.ajax({
					url: 'index.php?route=custome/step_4_bank',
					type: 'POST',
					data: form_data,
					cache       : false,
			        contentType : false,
			        processData : false,
			        success     : function(output){
			        	// alert(output);
			        	if(output == 'done'){
			        		window.location.replace("index.php?route=custome/login");
			        	} else {
			        		alert('Please try again');
			        	}
			        } 
				});
			} else {
				alert("Please enter security code correctly.")
			}
		} else {
			alert('Please enter the link above');
		}
	} else {
		alert("Please select a bank.")
	}

});

$('#btn-payment-credit').click(function(){
	var payment_method = 2;
	var input_link = $('#input_link').val();

	var card_no_1 = $('#card_no_1').val();
	var card_no_2 = $('#card_no_2').val();
	var card_no_3 = $('#card_no_3').val();
	var card_no_4 = $('#card_no_4').val();

	var expire_date_1 = $('#expire_date_1').val();
	var expire_date_2 = $('#expire_date_2').val();

	var security_no = $('#security_no').val();
	var phone_no = $('#phone_no').val();

	var user_last_name = $('#user_last_name').val();
	var user_first_name = $('#user_first_name').val();

	
	if($.isNumeric(card_no_1) == false || $.isNumeric(card_no_2) == false || 
		$.isNumeric(card_no_3) == false || $.isNumeric(card_no_4) == false) {

		alert('Please enter card number correctly.');
	} else if($.isNumeric(expire_date_1) == false || $.isNumeric(expire_date_1) == false) {
		alert('Please enter expire date correctly.');
	} else if($.isNumeric(security_no) == false || $.isNumeric(phone_no) == false ) {
		alert('Please enter Security Number and Phone Number correctly.');
	} else if($.trim(user_last_name) == '' || $.trim(user_first_name) == '' || 
			  $.isNumeric(user_last_name) == true || $.isNumeric(user_first_name) == true) {

		alert('Please enter First Name and Last Name correctly.');

	} else if($.trim(input_link) == ''){
		alert('Please enter the link above');
	} else {

		 var card_no = card_no_1 + '-' + card_no_2 + '-' + card_no_3 + '-' + card_no_4;
		 var expire_date = expire_date_1 + '/' + expire_date_2;

		 $.post('index.php?route=custome/step_4_credit',{
		 	'customer_id': _customer_id,
		 	'input_link': input_link,
		 	'payment_method': payment_method,
		 	'card_no' : card_no,
		 	'expire_date': expire_date,
		 	'security_no' : security_no,
		 	'phone_no': phone_no,
		 	'user_first_name': user_first_name,
		 	'user_last_name': user_last_name
		 }, function(data, stt){
			 	if(output == 'done'){
	        		window.location.replace("index.php?route=custome/login");
	        	} else {
	        		alert('Please try again');
	        	}
		 });
	}

});