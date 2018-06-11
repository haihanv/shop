 
// this function to let user preview images before uploading to server
function previewImage(input, imageId) {
	if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $('#'+ imageId).attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
	}
}

$('#file-input1').change(function(){
	previewImage(this, "passport-image");
});

$('#file-input2').change(function(){
	previewImage(this, "card-image1");
});

$('#file-input3').change(function(){
	previewImage(this, "card-image2");
});

$('#file-input4').change(function(){
	previewImage(this, "payment-image1");
});

$('#file-input5').change(function(){
	previewImage(this, "payment-image2");
});