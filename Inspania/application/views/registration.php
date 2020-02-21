<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>GTS | Register</title>

    <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo site_url($this->config->item('theme_path')); ?>font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/plugins/iCheck/custom.css" rel="stylesheet">
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

    <div class="middle-box text-center loginscreen   animated fadeInDown" style="padding-top: 0px;">
        <div>
            <div style="margin-top: 50px; margin-bottom: 20px;">
                <img src="/Inspania/img/logo.jpg" alt="Global Talent Search" style="width:100%;">
            </div>
                <!--<form class="" method="post" action="<?php //echo base_url('Login/userRegister/') ?>">-->
                <?php
                    $attributes = array('name' => 'register_form', 'id' => 'register_form', 'class' => '');
                    echo form_open_multipart(site_url('Login/userRegister/'), $attributes);
                ?>
    
                    <div class="form-group">
                                <input type="email" class="form-control" name="emailAddress" id="email"  placeholder="Enter your Email" required/>
                                     <?php echo form_error('emailAddress', "<div class=\"error\">", '</div>' . "\n"); ?>
                            
                        
                    </div>  
    
                    <div class="form-group">
                        
                                <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username" required/>
                                    <?php echo form_error('username', "<div class=\"error\">", '</div>' . "\n"); ?>
                            
                    </div>
    
                    <div class="form-group">
                        
                                <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password" required/>
                                    <?php echo form_error('password', "<div class=\"error\">", '</div>' . "\n"); ?>
                            
                    </div>
    
                    <div class="form-group">
                        
                                <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password" required/>
                            
                    </div>
    
                    <div class="form-group ">
                        <button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                    </div>
                    
                    <div class="form-group">
                        <p class="text-muted text-center"><small>Already have an account?</small></p>
                        <a class="btn btn-sm btn-white btn-block" href="login.html">Login</a>
                    </div>
    
                </form>
                </div>

</div>
<script type="text/javascript" src="<?php echo site_url(); ?>js/jquery-3.1.1.min.js"></script>    
<script type="text/javascript" src="<?php echo site_url(); ?>js/jquery.validate.js"></script> 
<script type="text/javascript" src="<?php echo site_url(); ?>js/additional-methods.js"></script>
<script>
$(document).ready(function(){


    $('#loading-example-btn').click(function () {
        btn = $(this);
        simpleLoad(btn, true)

        // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

        simpleLoad(btn, false)
    });
});
$("#register_form").validate();
function simpleLoad(btn, state) {
    if (state) {
        btn.children().addClass('fa-spin');
        btn.contents().last().replaceWith(" Loading");
    } else {
        setTimeout(function () {
            btn.children().removeClass('fa-spin');
            btn.contents().last().replaceWith(" Refresh");
        }, 2000);
    }
}
</script>

</body>

</html>
