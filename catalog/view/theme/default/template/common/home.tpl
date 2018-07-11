<?php echo $header; ?>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.0&appId=1960321884020677&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="navigation" id="myPage">
    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-11">
            <nav class="navbar navbar-default">
                <div class="container" style="padding-left: 0px;">

                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                      </button>
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar" style="padding-left: 0px;">
                    <ul class="nav navbar-nav">
                      <li>
                        <a href="#myPage">
                            <i><img src="<?php echo $img_1; ?>"></i>
                            <h5>Home</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#generalReason" id="aGeneralReason">
                            <i><img src="<?php echo $img_2; ?>"></i>
                            <h5>Reason</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#price" id="aPrice">
                            <i><img src="<?php echo $img_3; ?>"></i>
                            <h5>Price</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#description" id="aDescription">
                            <i><img src="<?php echo $img_4; ?>"></i>
                            <h5>Description</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#flow-of-use" id="aflow-of-use">
                            <i><img src="<?php echo $img_5; ?>"></i>
                            <h5>Flow Of Use</h5>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo $custome_login ?>"><button class="btn navbar-btn"><b>APPLY NOW</b></button></a>
                      </li>
                    </ul>
                    </div>                  
                </div>
            </nav>
            </div>
        </div>
    </div>
</div><!--end navigation-->

<div class="navigation" id="myPage1">
    <div class="container">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-11">
            <nav class="navbar navbar-default" style="margin-bottom: 0px;">
                <div class="container">

                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                      </button>
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                      <li>
                        <a href="#myPage">
                            <i><img src="<?php echo $img_1; ?>"></i>
                            <h5>Home</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#generalReason" id="aGeneralReason1">
                            <i><img src="<?php echo $img_2; ?>"></i>
                            <h5>Reason</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#price" id="aPrice1">
                            <i><img src="<?php echo $img_3; ?>"></i>
                            <h5>Price</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#description" id="aDescription1">
                            <i><img src="<?php echo $img_4; ?>"></i>
                            <h5>Description</h5>
                        </a>
                      </li>
                      <li>
                        <a href="#flow-of-use" id="aflow-of-use1">
                            <i><img src="<?php echo $img_5; ?>"></i>
                            <h5>Flow Of Use</h5>
                        </a>
                      </li>
                      <li>
                        <a href="<?php echo $custome_login ?>"><button class="btn navbar-btn"><b>APPLY NOW</b></button></a>
                      </li>
                    </ul>
                    </div>                  
                </div>
            </nav>
            </div>
        </div>
    </div>
</div><!--end navigation-->


<div class="top-banner">
    <img src="<?php echo $img_17; ?>" class="img-responsive">
</div><!--end top-banner-->


<div class="container" id="generalReason">
    <div class="row reason-general">
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12">
          <img src="<?php echo $img_6; ?>" class="img-responsive">  
        </div>
        <div class="col-sm-1 col-xs-0"></div>
        
        
        <div class="col-sm-4 col-xs-4 reason" id="reason_p1">
            <div style="width: 73%; float: right;" id="reason_p11">
                <p>Point 1</p>
                <div>
                    <img src="<?php echo $img_7; ?>" class="img-responsive">
                    <p>Simple</p>
                </div>
            </div>
            <div class="clear" style="border-color: white;"></div>            
        </div>
        

        <div class="col-sm-4 col-xs-4 reason" id="reason_p2">
            <div style="width: 73%; margin-left: auto; margin-right: auto;" id="reason_p21">
                <p>Point 2</p>
                <div>
                    <img src="<?php echo $img_8; ?>" class="img-responsive">
                    <p>Unlimit Data</p>
                </div>
            </div>
            <div class="clear" style="border-color: white;"></div>          
        </div>
        

        <div class="col-sm-4 col-xs-4 reason" id="reason_p3">
            <div style="width: 73%; float: left;" id="reason_p31">
                <p>Point 3</p>
                <div>
                    <img src="<?php echo $img_9; ?>" class="img-responsive">
                    <p>High Speed</p>
                </div>
            </div>
            <div class="clear" style="border-color: white;"></div>
        </div>
        
        
    </div> <!-- end reason-general -->
    <br><br>

    <div class="row reason-detail">
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12 reason-dtt" id="reason-dtt_p1">
            <div>
                <p>Point 1</p>
            </div>
            <div>
                <p style="margin-left: 15%;">SIMPLE - NO INSTALLATION NEEDED</p>
            </div>
        </div>      
        
        <div class="col-sm-1 col-xs-0"></div>
    </div>

    <div class="row reason-dt1">
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12">
            <img class="img-responsive" src="<?php echo $img_10; ?>">
        </div>
        <div class="col-sm-1 col-xs-0"></div>
    </div>
    <br><br><br><br><br><br><!-- end point1-->


    <div class="row reason-detail">     
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12 reason-dtt" id="reason-dtt_p2">
            <div>
                <p>Point 2</p>
            </div>
            <div>
                <p style="margin-left: 25%;">UNLIMITED DATA</p>
            </div>
        </div>      
        
        <div class="col-sm-1 col-xs-0"></div>
    </div>

    <div class="row">
        <div class="col-sm-2 col-xs-0"></div>
        <div class="col-sm-8 col-xs-12 reason-dt2">
            <p>Using the internet with various devices without worying about data capacity</p>
        </div>
        <div class="col-sm-2 col-xs-0"></div>
    </div>

    <div class="row reason-dt2">
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12">
            <img class="img-responsive" src="<?php echo $img_11; ?>">
        </div>
        <div class="col-sm-1 col-xs-0"></div>
    </div>
    <br><br><br><br><br><br><!-- end point2-->


    <div class="row reason-detail">         
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12 reason-dtt" id="reason-dtt_p3">
            <div>
                <p>Point 3</p>
            </div>
            <div>
                <p style="margin-left: 30%;">HIGH-SPEED</p>
            </div>
        </div>      
        
        <div class="col-sm-1 col-xs-0"></div>
    </div>

    <div class="row">
        <div class="col-sm-2 col-xs-0"></div>
        <div class="col-sm-8 col-xs-12 reason-dt3">
            <p>The speed now is even faster than conventional model</p>
        </div>
        <div class="col-sm-2 col-xs-0"></div>
    </div>

    <div class="row reason-dt3">
        <div class="col-sm-1 col-xs-0"></div>
        <div class="col-sm-10 col-xs-12">
            <img class="img-responsive" src="<?php echo $img_12; ?>">
        </div>
        <div class="col-sm-1 col-xs-0"></div>
    </div>

    <br>
    <div class="row">
        <div class="col-sm-2 col-xs-0"></div>
        <div class="col-sm-8 col-xs-12 reason-dt3">
            <p>
                <i> * The actual communication speed varies depending on the customers' environment
                (can reach maximum downlink from 261 to 350Mbps).<br> Communication speed may be lower due to the speed limitation
                due to the stable provision of service during timezone (such as night time) when usage is concentrated.</i>
            </p>
        </div>
        <div class="col-sm-2 col-xs-0"></div>
    </div><!-- end point3-->

</div><!-- end container-->
<br><br>

<div class="price bg-light-blue" id="price">
    <div class="container">
        <div class="row">
            <div class="col-sm-1 col-xs-0"></div>
            <div class="col-sm-10 col-xs-12">
                <img src="<?php echo $img_13; ?>" class="img-responsive">
            </div>
            <div class="col-sm-1 col-xs-0"></div>
        </div>
    </div>
</div><!-- end price-->
<br>

<div class="description" id="description"></div>
    <div class="container">
        <div class="row description-dt">
            <div class="col-sm-1 col-xs-0"></div>
            <div class="col-sm-10 col-xs-12">
                <img src="<?php echo $img_14; ?>" class="img-responsive">
            </div>
            <div class="col-sm-1 col-xs-0"></div>            
        </div>
        <div class="description-dt">
            <p> Compact size, only about  <span>20cm</span>  height </p>
        </div>
        <div class="row description-dt">
            <div class="col-sm-1 col-xs-0"></div>
            <div class="col-sm-10 col-xs-12">
                <img class="img-responsive" src="<?php echo $img_15; ?>" />
            </div>
            <div class="col-sm-1 col-xs-0"></div>            
        </div>
    </div>
</div><!-- end description-->
<br>


<div class="flow-of-use bg-light-blue" id="flow-of-use">
    <div class="container">
        <div class="row">
            <div class="col-sm-1 col-xs-0"></div>
            <div class="col-sm-10 col-xs-12">
                <img class="img-responsive" src="<?php echo $img_16; ?>" />
            </div>
            <div class="col-sm-1 col-xs-0"></div>    
        </div>
        <div class="row">
            <div class="col-sm-12 col-xs-12" style="margin: 0 auto; display: block;">
                <div class="col-sm-4 col-xs-4">
                    <a href="<?php echo $custome_login ?>"><img class="img-responsive" src="<?php echo $img_30; ?>" style="display: inline-block; float: left;" /></a>
                </div>

                <div class="col-sm-4 col-xs-4">
                    <img class="img-responsive" src="<?php echo $img_31; ?>" style="display: inline-block;"/>
                </div>
                <div class="col-sm-4 col-xs-4">
                    <img class="img-responsive" src="<?php echo $img_32; ?>" style="display: inline-block; float: left;"/>
                </div>
            </div>
        </div>
    </div>
</div><!-- end low-of-use-->
<script src="catalog/view/javascript/custome/custome-home.js" type="text/javascript"></script>
<?php echo $footer; ?>