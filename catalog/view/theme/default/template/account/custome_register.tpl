<?php echo $header; ?>


<div class="container">
  <h2>Vertical (basic) form</h2>
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
      <label><input type="checkbox" id="agree" name="agree" value="1"> Remember me</label>
    </div>

    <div id="hidden-field" style="display: none;">
    	<!-- default info for step 1 -->
    	<input type="text" class="form-control" id="firstname" name="firstname" value="Not Enter"><br>
    	<input type="text" class="form-control" id="lastname" name="lastname" value="Not Enter"><br>
    	<input type="tel" class="form-control" id="telephone" name="telephone" value="123456789"><br>
    	<input type="text" class="form-control" id="address_1" name="address_1" value="Not Enter"><br>
    	<input type="text" class="form-control" id="city" name="city" value="Not Enter"><br>
    	<input type="text" class="form-control" id="postcode" name="postcode" value="700000"><br>
    	<select name="country_id" class="form-control">
    		<option value="107" selected="selected">Japan</option>
    	</select>
    	<select name="zone_id" class="form-control">
    		<option value="1678" selected="selected">Kyoto</option>
    	</select>
    </div>


    <button id="click" type="submit" class="btn btn-default">Submit</button>
  </form>
</div>



<script type="text/javascript">
  
$(document).ready(function(){

    $('#click').click(function(event){
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
              alert('plase enter the from correctly!');
            } else{
              //window.location.replace("<?php echo $custome_home?>");
              $('#hidden-field').css("display", "");
            }

          });
          // .fail(function(data){
          //   alert(data);
          // });
    });

});

</script>
<?php echo $footer; ?>