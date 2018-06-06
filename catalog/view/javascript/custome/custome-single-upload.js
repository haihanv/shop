
var customer_id = $('#customer_id').html();

$('#btn-file-input1').click(function(){

	var file_data = $('#file-input1').prop('files')[0];
	var form_data = new FormData();
	form_data.append('file', file_data);
	form_data.append('customer_id', customer_id);

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