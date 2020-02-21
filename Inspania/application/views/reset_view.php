<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>GTS | Login </title>

        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>font-awesome/css/font-awesome.css" rel="stylesheet">

        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/animate.css" rel="stylesheet">
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/style.css" rel="stylesheet">
        
        <!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window,document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
         fbq('init', '2481101092147351'); 
        fbq('track', 'PageView');
        </script>
        <noscript>
         <img height="1" width="1" 
        src="https://www.facebook.com/tr?id=2481101092147351&ev=PageView
        &noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
        
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-149365319-1"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
        
          gtag('config', 'UA-149365319-1');
        </script>
        <!--End of Global site tag (gtag.js) - Google Analytics-->

    </head>

    <body class="gray-bg">


<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">IN+</h1>

        </div>
        <h3>Welcome to IN+</h3>
        <p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.
            <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
        </p>
        <p>Reset Password</p>
        <p style="color: red;"><?php
             if(isset($error)){
            echo $error;
           }
           
           if($this->session->flashdata('error')!=''){
                echo $this->session->flashdata('error');
            }
            $this->session->flashdata('error','');
           
            ?></p>
             <?php
       
        if($num_q>0){
           
           $curDate = date("Y-m-d H:i:s");
           $expDate = $result->expDate;
           if ($expDate >= $curDate){
            
        ?>
        <form class="m-t" role="form" action="<?php echo site_url('login/resetp'); ?>" method="post" onsubmit="return valid();">
           
            <div class="form-group">
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" required>
            </div>
             <div class="form-group">
                <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm Password" required>
            </div>
            <div id="eer_email" style="color:red;"></div>
            <input type="hidden" name="email" value="<?php echo $emailid;?>"/>
            <input type="submit" name="Login" class="btn btn-primary block full-width m-b" value="Reset">
            
        </form>
        <?php
           }else{
               echo '<h4>The link has been expired.</h4>
        <p><a href="'.base_url().'login">Click here</a> to reset password.</p>';
                   }
        }else{
            echo '<h4>The link is invalid.</h4>
        <p><a href="'.base_url().'login">Click here</a> to reset password.</p>';
        }
        ?>
        
    </div>
</div>


<script type="text/javascript" src="<?php echo site_url(); ?>js/jquery-3.1.1.min.js"></script>    
<script src="<?php echo site_url($this->config->item('theme_path')); ?>js/bootstrap.js"></script>
<script>

function valid(){
   	var password = $("#password").val();
	var cpassword = $("#cpassword").val();
	if(password!=cpassword){
	 $('#eer_email').html("Mismatched password's");
	return false;
	}else{
		 $('#eer_email').html("");
	}
}
</script>
  </body>

</html>