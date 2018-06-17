

//clearInterval(timer);
var str_customer_id = $('#admin_customer_id').html();
var str_customer_step = $('#admin_customer_step').html();
var str_order_state = $('#order_state_int').html();





var _customer_id = parseInt(str_customer_id);
var _customer_step = parseInt(str_customer_step);
var _order_state = parseInt(str_order_state);


$('#btn_admin_apply1').on('click', function(e) {
	e.preventDefault();

	var token = $('#admin_token').html();
	var str_admin_order_nextstate = $('#admin-order-nextstate option:selected').val();
	var str_admin_order_note = $('#admin-order-note').val();
	var _order_nextstate = parseInt(str_admin_order_nextstate);
	var str_delivery_time = $('#admin-delivery-time').val();

	var url = "index.php?route=custome/customer_info&token="+token;

	$.post(url, {
		order_note: str_admin_order_note,
		order_nextstate: _order_nextstate,
		order_state: _order_state,
		delivery_time: str_delivery_time,
		customer_id: _customer_id
	}, function(value, stt){

		if(value == 'order_done' || value == 'done') {
			window.location.replace("index.php?route=customer/customer/edit&token="+token+ "&customer_id=" + _customer_id);
		} else if(value == 'order_failed'){
			alert('Order state must be the states after current state');
		} else {
			alert('Failed');
		}

	});

});

$('#btn_admin_apply2').on('click', function(e) {

	e.preventDefault();

	var token = $('#admin_token').html();
	var str_admin_step_nextstate = $('#admin-step-nextstate option:selected').val();
	var str_action = $('#admin-step-action option:selected').val();
	var _admin_step_nextstate = parseInt(str_admin_step_nextstate);
	var _action = parseInt(str_action);

	// if(_admin_step_nextstate != 11){

		var url = "index.php?route=custome/customer_info&token="+token;

		
		var str_customer_remind = $('#admin-step-customer-remind').val();		
		var str_admin_remind = $('#admin-step-admin-remind').val();

		$.post(url, {
			step_next_state: _admin_step_nextstate,
			admin_action: _action,
			customer_remind: str_customer_remind,
			admin_remind: str_admin_remind,
			customer_step: _customer_step,
			customer_id: _customer_id
		}, function(value, stt){
			// alert(value);

			if(value == 'step_done' || value == 'done') {
				window.location.replace("index.php?route=customer/customer/edit&token="+token+ "&customer_id=" + _customer_id);
			} else {
				alert('Failed');
			}
		});
		
		// alert('ki ta');
				
	// } else {
	// 	alert(typeof _admin_step_nextstate);
	// }

});


// for sending email in email tab
// 

$('#btn_admin_sendMail').on('click', function(e) {

	e.preventDefault();

	var token = $('#admin_token').html();
	var url = "index.php?route=custome/customer_mail&token="+token;

	var str_customer_email = $('#customer_email').html();
	var str_subject = $('#customer_subject').val();
	var str_content = $('#customer_content').val();

	if($.trim(str_subject) == '' || $.trim(str_content) == ''){
		alert("Please fill both Subject and Content of email");
	} else {

		$.post(url, {
			customer_id: _customer_id,
			subject: str_subject,
			content: str_content,
			email: str_customer_email
		}, function(value, stt){
			if(value == 'done') {
				$('#customer_subject').val("");
				$('#customer_content').val("");
				alert('Email sent successfully');
			}else {
				alert('Failed to send email')
			}	
		});

	}

});

