

<!--
*
*  INSPINIA - Responsive Admin Theme
*  version 2.9.2
*
-->

<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>GTS</title>

        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>font-awesome/css/font-awesome.css" rel="stylesheet">

        <!-- Toastr style -->
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/plugins/toastr/toastr.min.css" rel="stylesheet">
            <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/plugins/dataTables/datatables.min.css" rel="stylesheet">
        <!-- Gritter -->
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/animate.css" rel="stylesheet">
        <link href="<?php echo site_url($this->config->item('theme_path')); ?>css/style.css" rel="stylesheet">
        <style>
            .frmbtnMD {
    padding-bottom: 10px;
    padding-top: 10px;
}
.frmbtn{
    margin-right: 20px;
}.frmbtn.active{
    background: #1ab394;
    color: #fff;
}

        </style>
        
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

    <body>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="block m-t-xs font-bold"><h2>Global Talent Search</h2></span>
                                    
                                </a>
                            </div>
                            <div class="logo-element">
                                GTS
                            </div>
                        </li>
                        <?php if($this->session->userdata('isMandatory') == NULL || $this->session->userdata('isMandatory') == '0') {
                                $this->db->where('userId', $this->session->userdata('userId'));
                                $result = $this->db->get('students');
                                $row=$result->result_array();
                                $checkVari1 = $row[0]['personel_form'];
                                $checkVari2 = $row[0]['contact_form'];
                                $checkVari3 = $row[0]['parent_1'];
                                $checkVari4 = $row[0]['parent_2'];
                                $checkVari5 = $row[0]['highSchool_form'];
                                $checkVari6 = $row[0]['college_plans_form'];
                                $checkVari7 = $row[0]['majorSelect_form'];
                                
                            ?>
                        
                        <li  class="active">
                            <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">Edit Mandatory Forms</span> </span> <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="<?php echo site_url('Home/PersonelInfo/'); ?>">Personal Info</a></li>
                                <li><a href="<?php echo site_url('Home/ContactInfo/'); ?>">Contact Info</a></li>
                                <li><a href="<?php echo site_url('Home/Parent1/'); ?>">Add Parent-1 Form</a></li>
                                <li><a href="<?php echo site_url('Home/Parent2/'); ?>">Add Parent-2 Form</a></li>
                                <li><a href="<?php echo site_url('Home/High_Schools/'); ?>">High Schools Form</a></li>
                                <li><a href="<?php echo site_url('Home/CollegePlans/'); ?>">College Plans Form</a></li>
                                <li><a href="<?php echo site_url('Home/Mejor_Selection/'); ?>">Major Selection</a></li>
                            </ul>
                        </li>
                        <?php } ?>
                        <?php if($this->session->userdata('isMandatory') == '1') {?>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">SAT / ACT Scores</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse"> 
                                <li><a href="<?php echo site_url('Home/ScoreSAT/'); ?>">Add Test Score SAT</a></li>
                                <li><a href="<?php echo site_url('Home/Test_Score_ACT/'); ?>">Add Test Score ACT</a></li>                                
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">TOEFL / IELTS Scores</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse"> 
                                <li><a href="<?php echo site_url('Home/Test_Score_TOEFL_iBT/'); ?>">Add Test Score TOEFL iBT</a></li>
                                <li><a href="<?php echo site_url('Home/Test_Score_IELTS/'); ?>">Add Test Score IELTS</a></li>                                
                            </ul>
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Other Optional Information</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="<?php echo site_url('Home/Test_Score_SAT_Subject_Tests/'); ?>">Add Test Score SAT Subject Tests</a></li>
                                <li><a href="<?php echo site_url('Home/Test_Score_IB_Subject_Test/'); ?>">Add Test Score IB Subject Tests</a></li>                        
                                <li><a href="<?php echo site_url('Home/Test_Score_AP_Subject_Tests/'); ?>">Add Test Score AP Subject Tests</a></li>                                
                                <li><a href="<?php echo site_url('Home/Siblings/'); ?>">Add Siblings</a></li>                                
                                <li><a href="<?php echo site_url('Home/Addcollege/'); ?>">Add College</a></li>
                                <li><a href="<?php echo site_url('Home/Honors/'); ?>">Add honors</a></li>
                                <li><a href="<?php echo site_url('Home/Essay/'); ?>">Add essay</a></li>
                                <li><a href="<?php echo site_url('Home/UploadDoc/'); ?>">Upload Documents</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="<?php echo site_url('Home/students/'); ?>"><i class="fa fa-th-large"></i> <span class="nav-label">Edit Mandatory Section</span> <span class="fa arrow"></span></a>                        
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Edit Optional Sections</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">                               
                                <li><a href="<?php echo site_url('Home/satTestScore_Table/'); ?>">SAT Test Score</a></li>
                                <li><a href="<?php echo site_url('Home/testScoreACT_Table/'); ?>">ACT Test Score</a></li>
                                <li><a href="<?php echo site_url('Home/testScoreTOEFLiBT_Table/'); ?>">TOEFL iBT Test Score </a></li>
                                <li><a href="<?php echo site_url('Home/testScoreIELTS_Table/'); ?>">IELTS Test Score </a></li>
                                <li><a href="<?php echo site_url('Home/SATSubjectTests_Table/'); ?>">SAT Subject Tests Score </a></li>
                                <li><a href="<?php echo site_url('Home/IBSubjectTests_Table/'); ?>">IB Subject Tests Score </a></li>                        
                                <li><a href="<?php echo site_url('Home/APSubjectTests_Table/'); ?>">AP Subject Tests Score </a></li>                                
                                <li><a href="<?php echo site_url('Home/Siblings_Table/'); ?>">Siblings</a></li>                                
                                <li><a href="<?php echo site_url('Home/CollegeorUniversity_Table/'); ?>">Colleges</a></li>
                                <li><a href="<?php echo site_url('Home/HonorsInformation_Table/'); ?>">Honors</a></li>
                                <li><a href="<?php echo site_url('Home/Essay_Table/'); ?>">Essay</a></li>
                                <li><a href="<?php echo site_url('Home/UploadDocuments_Table/'); ?>">Uploaded Documents</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="<?php echo site_url('Home/termsConditions/'); ?>"><i class="fa fa-th-large"></i> <span class="nav-label">Approve FERPA and Submit Application</span> <span class="fa arrow"></span></a>                        
                        </li>
                        <?php } ?>
                    </ul>                    
                </div>
            </nav>
                        
            <div id="page-wrapper" class="gray-bg dashbard-1">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        
                        </div>
                        <ul class="nav navbar-top-links navbar-right">


                            <li>
                                <a href="<?php echo site_url('login/out/'); ?>">
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>
                <?php if($this->session->userdata('isMandatory') == NULL || $this->session->userdata('isMandatory') == '0') {?>
                <div class="row">
                    <div class="container" style="margin-left: 0px;">
                        <div class = "btn-group btn-group-md frmbtnMD">
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari1 == "1") { echo 'active'; }else{ echo ''; } ?>">Personal Info</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari2 == "1") { echo 'active'; }else{ echo ''; } ?>">Contact Info</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari3 == "1") { echo 'active'; }else{ echo ''; } ?>">Parent-1</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari4 == "1") { echo 'active'; }else{ echo ''; } ?>">Parent-2</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari5 == "1") { echo 'active'; }else{ echo ''; } ?>">High Schools</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari6 == "1") { echo 'active'; }else{ echo ''; } ?>">College Plans</button>
                            <button type = "button" class = "btn btn-default frmbtn <?php if($checkVari7 == "1") { echo 'active'; }else{ echo ''; } ?>">Major Selection</button>
                        </div>
                    </div>
                </div>
                <?php } ?>
