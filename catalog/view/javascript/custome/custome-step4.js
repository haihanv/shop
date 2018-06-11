

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

		if(security_code.length == 4 && $.isNumeric(security_code) == true ){					
			form_data.append('file1', file_data1);
			if(bank_name == 'bank4') {
				var file_data2 = $('#file-input5').prop('files')[0];
				form_data.append('file2', file_data2);
			}

			$.ajax({
				url: 'index.php?route=custome/step_4_bank',
				type: 'POST',
				data: form_data,
				cache       : false,
		        contentType : false,
		        processData : false,
		        success     : function(output){
		        	alert(output);
		        } 
			});
		} else {
			alert("Please enter security code correctly.")
		}
	} else {
		alert("Please select a bank.")
	}

});

$('#btn-payment-credit').click(function(){
	alert('haha');
});