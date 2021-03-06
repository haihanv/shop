<!-- <footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer> -->

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.0&appId=796777377189380&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<footer class="custome-footer" style="margin-top: 0px;">  
  <div class="container">
   

    <div class="col-sm-6">
        <h2> Company Information</h2>
        <div class="row" style="border-bottom: 1px solid black; border-top: 1px solid #000;">
            <div class="col-sm-3 col-xs-3"><span>Name</span></div>
            <div class="col-sm-8 col-xs-8 company_name"><span><?php echo $company_name; ?></span></div>
        </div>
        <div class="row" style="border-bottom: 1px solid black;">
            <div class="col-sm-3 col-xs-3"><span>Location</span></div>
            <div class="col-sm-8 col-xs-8 company_location"><span><?php echo $company_loc; ?></span></div>
        </div>
        <div class="row" style="border-bottom: 1px solid black;">
            <div class="col-sm-3 col-xs-3"><span>Tel</span></div>
            <div class="col-sm-8 col-xs-8 company_tel"><span><?php echo $company_tel; ?></span></div>
        </div>
    </div>


    <div class="col-sm-6">





      <div class="fb-comments" data-href="https://www.facebook.com/KantanWifiJP/" data-width="100%" data-numposts="5"></div>

    </div>
  </div>
</footer>


<!-- <a href="<?php echo $custome_login ?>" class="btn navbar-btn-apply"><b>APPLY NOW</b></a> -->

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<script>
var windowWith = $(window).width();

window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        // document.getElementById("myBtn").style.display = "block";

       
        if(windowWith > 700)
            document.getElementById("myPage1").style.display = "block";
        else 
           $('#myPage_nav').addClass("navbar-fixed-top");

    } else {
        // document.getElementById("myBtn").style.display = "none";
        document.getElementById("myPage1").style.display = "none";
        $('#myPage_nav').removeClass("navbar-fixed-top");
    }
}

function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

if(windowWith <700) {
  $('.logo h4 i').hide();
  $('#myPage1').hide();
  $('#reason_p11').css("width", "100%");
  $('#reason_p21').css("width", "100%");
  $('#reason_p31').css("width", "100%");
  $('body').css("font-size", "11px");
  $('ul.list-inline').hide();
  $('ol.list-inline').show();
  $('#myPage_button').show();
  $('#logo_second_text').show();

}else {
  $('.logo h4 i').show();
  $('#reason_p11').css("width", "73%");
  $('#reason_p21').css("width", "73%");
  $('#reason_p31').css("width", "73%");
  $('ul.list-inline').show();
  $('ol.list-inline').hide();
  $('#myPage_button').hide();
  $('#logo_second_text').hide();
}

$('.navbar-collapse a').click(function(){
  $(".navbar-collapse").collapse('hide');
});

</script>



</body>
</html>