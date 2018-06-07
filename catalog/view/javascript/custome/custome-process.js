
var _customer_id = $('#customer_id').html();

$('#step3-dt-btn').click(function(){
	if($('#step3-dt-agree').is(':checked')){

		$.post('index.php?route=custome/step_3',{
			customer_id: _customer_id
		}, function(data, stt){
			
			if(data != 'failed' && data == 'done'){
				$('#step3-dt').hide();
				$('#step3-dt-1').fadeIn();
				$('#step3-dt-1').html("Please wait to get confirmation from Admin...");
			}

		});

	}else {
		alert("Please check 'I agree' box");
	}
});