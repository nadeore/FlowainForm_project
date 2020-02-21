<!-- <!DOCTYPE html>
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
<!--         <script>
<!--         !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)}; -->
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
<!--         <script async src="https://www.googletagmanager.com/gtag/js?id=UA-149365319-1"></script> -->
        <script>
//           window.dataLayer = window.dataLayer || [];
//           function gtag(){dataLayer.push(arguments);}
//           gtag('js', new Date());
        
//           gtag('config', 'UA-149365319-1');
        </script> -->
        <!--End of Global site tag (gtag.js) - Google Analytics-->
<style>
    a.social_media {
    height: 30px;
    width: 100%;
    display: inline-block;
}

a.social_media img {
    height: 30px;
    width: 100%;
}
</style>
    </head>

    <body class="gray-bg">


<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <img src="/Inspania/img/logo.jpg" alt="Global Talent Search" style="width:100%;">

        </div>
        <h3>Hey! Welcome to the Global Talent Search Application Portal</h3>
        <p><i>To start your application or continue where you left off, please Log In or Create an Account.</i>
        </p>
        <p style="color: red;"><?php
         if(isset($error)){
            echo $error;
           } 
            if($this->session->flashdata('error')!=''){
                echo $this->session->flashdata('error');
            }
            $this->session->flashdata('error','');
           
           ?></p>
            <p style="color: green;"><?php
            if($this->session->flashdata('success')!=''){
                echo $this->session->flashdata('success');
            }
            $this->session->flashdata('success','');
            
            ?></p>
        <form class="m-t" role="form" action="<?php echo site_url('login/in/'); ?>" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div>
            <input type="submit" name="Login" class="btn btn-primary block full-width m-b" value="Login">
            
             <a class="btn btn-sm btn-white btn-block" href="javascript:void(0);" data-toggle="modal" data-target="#myModal">Forgot Password?</a>

<!--            <a href="#"><small>Forgot password?</small></a>
            <p class="text-muted text-center"><small>Do not have an account?</small></p>-->
            <a class="btn btn-sm btn-white btn-block" href="<?php echo site_url('login/register/'); ?>">Create an account</a>
        </form><br>
         <a class="social_media" href="javascript:void(0);" onclick="Login();" style="cursor:pointer;"><img src="<?php echo site_url('img/g_login.png');?>"/></a> &nbsp; <a class="social_media" href="javascript:void(0);" onclick="fbLogin();" id="fbLink" style="cursor:pointer;"><img src="<?php echo site_url('img/fb_login.png');?>"/></a>
        <!--<p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 © 2014</small> </p>-->
    </div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <h4 class="modal-title">Forgot Password?</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url();?>login/forgot" method="post" class="m-t" onsubmit="return validEmail();">
            <div class="form-group">
                <input type="email" class="form-control" name="email" id="vemail" placeholder="Please enter email" required>
                <div id="eer_email" style="color:red;"></div>
            </div>
           
            <input type="submit" name="Login" class="btn btn-primary block full-width m-b" value="Submit">
            
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script type="text/javascript" src="<?php echo site_url(); ?>js/jquery-3.1.1.min.js"></script>    
<script src="<?php echo site_url($this->config->item('theme_path')); ?>js/bootstrap.js"></script>
<script>


// window.fbAsyncInit = function() {
//     // FB JavaScript SDK configuration and setup
//     FB.init({
//       appId      : '498141807632948', // FB App ID
//       cookie     : true,  // enable cookies to allow the server to access the session
//       xfbml      : true,  // parse social plugins on this page
//       version    : 'v2.5' // use graph api version 2.8
//     });
    
//     // Check whether the user already logged in
//     /*FB.getLoginStatus(function(response) {
//         if (response.status === 'connected') {
//             //display user data
//             getFbUserData();
//         }
//     });*/
// };

// Load the JavaScript SDK asynchronously
//  (function(d, s, id){
//      var js, fjs = d.getElementsByTagName(s)[0];
//      if (d.getElementById(id)) {return;}
//      js = d.createElement(s); js.id = id;
//      js.src = "https://connect.facebook.net/en_US/sdk.js";
//      fjs.parentNode.insertBefore(js, fjs);
//    }(document, 'script', 'facebook-jssdk'));

// Facebook login with JavaScript SDK
// function fbLogin() {
//     FB.login(function (response) {
//         if (response.authResponse) {
//             // Get and display the user profile data
//             getFbUserData();
//         } else {
//             document.getElementById('status').innerHTML = 'User cancelled login or did not fully authorize.';
//         }
//     }, {scope: 'email'});
// }

// Fetch the user profile data from facebook
// function getFbUserData(){
// 	var array = [];
//     FB.api('/me', {locale: 'en_US', fields: 'id,first_name,last_name,email,link,gender,locale,picture'},
//     function (response) {
//         //console.log(response);
//              saveUserData(response);
//     });
// }

// function saveUserData(userData){
//     $.post('<?php echo base_url(); ?>login/saveUserData', {'userData': userData}, function(data){
    
//        if(data==1){
//           alert("Please verify your account first!");
// 	      return false;
		 
// 	  }else{
// 	      window.location.href="<?php echo base_url();?>"+data;
// 	  }
   
      /*if(data==2){
		  window.location.href="<?php echo base_url();?>home";
	  }else if(data==1){
	      alert("Please verify your account first!");
	      return false;
	  }else{
	      alert("Verfication email sent successfully.Please verify to login.");
	      return false;
	  }*/
//     });
// }

// function validEmail(){
//    var vemail = $('#vemail').val();
//    var atpos = vemail.indexOf("@");
//    var dotpos = vemail.lastIndexOf(".");
//    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=vemail.length) {
//     $('#eer_email').html("Not a valid e-mail address");
//     return false;
//    }else{
//         $('#eer_email').html("");
//    }
// }

// function logout()
// {
//     gapi.auth.signOut();
//     location.reload();
// }

// function Login() 
// {
//   var myParams = {
//     'clientid' : '1089945789081-cj6cden9brkf9kegodhr956jnisb706g.apps.googleusercontent.com',
//     'cookiepolicy' : 'single_host_origin',
//     'callback' : 'loginCallback',
//     'approvalprompt':'force',
//     'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
//   };
//   gapi.auth.signIn(myParams);
// }

// function loginCallback(result)
// {

//     if(result['status']['signed_in'])
//     {
//         var request = gapi.client.plus.people.get(
//         {
//             'userId': 'me'
//         });
//         request.execute(function (resp)
//         { 
	    
//             var email = '';
//             if(resp['emails'])
//             {
//                 for(i = 0; i < resp['emails'].length; i++)
//                 {
//                     if(resp['emails'][i]['type'] == 'account')
//                     {
//                         email = resp['emails'][i]['value'];
//                     }
//                 }
//             }
            
//             if(email!=''){
			
// 			$.post("<?php echo base_url();?>login/email_check",{'email' : email}, function( data ) {
			
// 			  if(data==0){				
// 				call_google(resp,email); //Call for signup a new user;
// 			  }else{ 
				
// 				alert("* Email Id already Exists!");
// 				return false;
// 			  }	  
// 			});     
//             }else{
//                 alert("*Please try to login again!");
// 				return false;
//             }
//         });
// 		function call_google(resp,email){
		    
		    
// 		     $.post('<?php echo base_url(); ?>login/saveUserData1', {'userData': resp,'email' : email}, function(data){
		     
// 		          if(data==1){
//                       alert("Please verify your account first!");
//             	      return false;
            		 
//             	  }else{
//             	      window.location.href="<?php echo base_url();?>"+data;
//             	  }
   
              /*if(data==2){
        		  window.location.href="<?php echo base_url();?>home";
        	  }else if(data==1){
        	      alert("Please verify your account first!");
        	      return false;
        	  }else{
        	      alert("Verfication email sent successfully.Please verify to login.");
        	      return false;
        	  }*/
            });		
		}
	} 
}

// function onLoadCallback()
// {
//     gapi.client.setApiKey('AIzaSyBIkfxoDt8LKfC8PO0cQoOe_r5MLwpeqT8');
//     gapi.client.load('plus', 'v1',function(){});
// }
// </script>
// <script type="text/javascript">
//       (function() {
//        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
//        po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
//        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
//      })();
// </script>

    </body>

</html> -->
