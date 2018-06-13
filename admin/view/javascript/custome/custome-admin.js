

var str_customer_id = $('#admin_customer_id').html();
var str_customer_step = $('#admin_customer_step').html();
var token = $('#admin_token').html();

var customer_id = parseInt(str_customer_id);
var customer_step = parseInt(str_customer_step);


$('#btn-admin-apply1').click(function(e){
	e.preventDefault();



});

$('#btn_admin_apply2').on('click', function(e) {

	e.preventDefault();

	var str_admin_step_nextstate = $('#admin-step-nextstate option:selected').val();
	var str_action = $('#admin-step-action option:selected').val();
	var admin_step_nextstate = parseInt(str_admin_step_nextstate);
	var action = parseInt(str_action);

	if(admin_step_nextstate != 11){

		var url = "index.php?route=custome/custome_info";

		
		var customer_remind = $('#admin-step-customer-remind').val();		
		var admin_remind = $('#admin-step-admin-remind').val();

		$.post(url, {
			step_next_state: admin_step_nextstate,
			admin_action: action,
			customer_remind: customer_remind,
			admin_remind: admin_remind,
			customer_step: customer_step
		}, function(data, stt){
			alert('haha');
		});
		alert(url);
		
	} else {
		alert(str_admin_step_nextstate);
		//alert(str_customer_step);
	}

});

