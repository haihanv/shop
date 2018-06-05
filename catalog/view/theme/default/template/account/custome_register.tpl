<?php echo $header; ?>


<div class="container">
  <div class="row">
    <div class="col-sm-3"></div> 
    <div class="col-sm-6">
      <h2 style="font-weight: bold; color: #0099cc;">Registration Form</h2><br>
      <form id="ajax-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
        </div>
        <div class="form-group">
          <label for="password">Re-enter Password:</label>
          <input type="password" class="form-control" id="confirm" placeholder="Re-enter password" name="confirm">
        </div>
        <div class="checkbox">
          <label><input type="checkbox" id="agree" name="agree" value="1"><span  style="text-align: center; font-weight: bold; padding-left: 10px; font-size: 15px;">Agree With Policy </span></label>
        </div>

        <div id="hidden-field" style="display: none;">
        	<!-- default info for step 1 -->
        	<input type="text" class="form-control" id="firstname" name="firstname" value="Not Enter"><br>
        	<input type="text" class="form-control" id="lastname" name="lastname" value="Not Enter"><br>
        	<input type="tel" class="form-control" id="telephone" name="telephone" value="000000000"><br>
        	<input type="text" class="form-control" id="address_1" name="address_1" value="Not Enter"><br>
        	<input type="text" class="form-control" id="city" name="city" value="Not Enter"><br>
        	<input type="text" class="form-control" id="postcode" name="postcode" value="Not Enter"><br>
        	<select name="country_id" class="form-control">
        		<option value="107" selected="selected">Japan</option>
        	</select>
        	<select name="zone_id" class="form-control">
        		<option value="1678" selected="selected">Kyoto</option>
        	</select>
        </div>


        <button id="register-click" type="submit" class="btn btn-primary">Register</button>
      </form>
    </div>  
    <div class="col-sm-3"></div>
  </div>
</div>



<script type="text/javascript">
  
$(document).ready(function(){

    $('#register-click').click(function(event){
          event.preventDefault();

          var form = $('#ajax-form');
          var formData = $(form).serialize();
          $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData
          })
          .done(function(response){
            if(response == 'false'){
              alert('Please Enter the Form correctly and Agree the Policy');
            } else{
              window.location.replace("<?php echo $custome_home?>");
            }

          });
          .fail(function(data){
             alert("Failed to send request to server. Please try again.");
          });
    });

});

</script>
