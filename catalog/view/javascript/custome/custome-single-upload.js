
var customer_id = $('#customer_id').html();

$('#btn-file-input1').click(function(){

	var file_data = $('#file-input1').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);
	form_data.append('image_name', "image_1");

	$.ajax({
		url: 'index.php?route=custome/single_file_ajax',
		type: 'POST',
		data: form_data,
		cache       : false,
        contentType : false,
        processData : false,
        success     : function(output){
        	alert(output);
        } 
	});

});

$('#btn-file-input2').click(function(){

	var file_data = $('#file-input2').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);
	form_data.append('image_name', "image_2");


	$.ajax({
		url: 'index.php?route=custome/single_file_ajax',
		type: 'POST',
		data: form_data,
		cache       : false,
        contentType : false,
        processData : false,
        success     : function(output){
        	alert(output);
        } 
	});

});


$('#btn-file-input3').click(function(){

	var file_data = $('#file-input3').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);
	form_data.append('image_name', "image_3");

	$.ajax({
		url: 'index.php?route=custome/single_file_ajax',
		type: 'POST',
		data: form_data,
		cache       : false,
        contentType : false,
        processData : false,
        success     : function(output){
        	alert(output);
        } 
	});

});

$('#btn-file-input4').click(function(){

	var file_data = $('#file-input4').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);
	form_data.append('image_name', "image_4");

	$.ajax({
		url: 'index.php?route=custome/single_file_ajax',
		type: 'POST',
		data: form_data,
		cache       : false,
        contentType : false,
        processData : false,
        success     : function(output){
        	alert(output);
        } 
	});

});

$('#btn-file-input5').click(function(){

	var file_data = $('#file-input5').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);
	form_data.append('image_name', "image_5");

	$.ajax({
		url: 'index.php?route=custome/single_file_ajax',
		type: 'POST',
		data: form_data,
		cache       : false,
        contentType : false,
        processData : false,
        success     : function(output){
        	alert(output);
        } 
	});

});