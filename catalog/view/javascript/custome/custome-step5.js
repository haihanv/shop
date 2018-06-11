var order_status = $('#order_status').html();
//remove all status class
$('#step5-dt-step1').removeClass('active');
$('#step5-dt-step2').removeClass('disabled');
$('#step5-dt-step3').removeClass('disabled');
$('#step5-dt-step4').removeClass('disabled');

// for step 5 - processing order status
switch(order_status) {
	case '0':
		$('#step5-dt-step1').addClass('active');
		$('#step5-dt-step2').addClass('disabled');
		$('#step5-dt-step3').addClass('disabled');
		$('#step5-dt-step4').addClass('disabled');
		break;
	case '1':
		$('#step5-dt-step1').addClass('complete');
		$('#step5-dt-step2').addClass('active');
		$('#step5-dt-step3').addClass('disabled');
		$('#step5-dt-step4').addClass('disabled');
		break;
	case '2':
		$('#step5-dt-step1').addClass('complete');
		$('#step5-dt-step2').addClass('complete');
		$('#step5-dt-step3').addClass('active');
		$('#step5-dt-step4').addClass('disabled');
		break;

	case '3':
		$('#step5-dt-step1').addClass('complete');
		$('#step5-dt-step2').addClass('complete');
		$('#step5-dt-step3').addClass('complete');
		$('#step5-dt-step4').addClass('active');
		break;
	case '4':
		$('#step5-dt-step1').addClass('complete');
		$('#step5-dt-step2').addClass('complete');
		$('#step5-dt-step3').addClass('complete');
		$('#step5-dt-step4').addClass('complete');
		break;
}