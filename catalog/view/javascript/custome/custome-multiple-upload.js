
var customer_id = $('#customer_id').html();

function updateUX(input) {
	if(input == 'done'){
		$('#step3-dt').show();
		$('#step2-dt').hide();
		$('#step2-dt-1').show();
	} else{
		alert("Please try again.")
	}
}

$('#step2-dt-btn').click(function(e){
	var name = $('#step2-dt-name').val();
	var address = $('#step2-dt-address').val();
	var phone = $('#step2-dt-phone').val();
	var time = $('#step2-dt-time option:selected').text();


	
	if($.trim(name) == '' || $.trim(address) == '' || $.trim(phone) == ''){
		alert('Please fill all the missing fields');
	} else {
		var file_data1 = $('#file-input1').prop('files')[0];
		var file_data2 = $('#file-input2').prop('files')[0];
		var file_data3 = $('#file-input3').prop('files')[0];
		var form_data = new FormData();
		form_data.append('file1', file_data1);
		form_data.append('file2', file_data2);
		form_data.append('file3', file_data3);
		form_data.append('customer_id', customer_id);
		form_data.append('image_name1', "image_1");
		form_data.append('image_name2', "image_2");
		form_data.append('image_name3', "image_3");

		form_data.append('customer_name', name);
		form_data.append('customer_address', address);
		form_data.append('customer_phone', phone);
		form_data.append('customer_time', time);

		$.ajax({
			url: 'index.php?route=custome/multiple_file_ajax',
			type: 'POST',
			data: form_data,
			cache       : false,
	        contentType : false,
	        processData : false,
	        success     : function(output){
	        	updateUX(output);
	        } 
		});
	}

});