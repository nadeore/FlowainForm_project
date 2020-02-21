<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>IB Subject Test Details</h2>
        <!--<ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a>IB Subject Test Tables</a>
            </li>
            <li class="breadcrumb-item active">
                <strong>IB Subject Test Tables</strong>
            </li>
        </ol>-->
    </div>
    <div class="col-lg-2">

    </div>
</div> 

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
<!--                <h5>IB Subject Tests</h5>-->
                <!--<div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#" class="dropdown-item">Config option 1</a>
                        </li>
                        <li><a href="#" class="dropdown-item">Config option 2</a>
                        </li>
                    </ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>-->
            </div>
            <div class="ibox-content">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Score</th>
                            <th>Level</th>
                            <th>Subject</th>
                            <th>Test Date</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                              
                                if ($ibsubject) { 
                                    foreach ($ibsubject as $test) {
                                    ?>
                        <tr>
                            <td>1</td>
                            <td><?php echo $test->score; ?></td>
                            <td><?php echo $test->level; ?></td>
                            <td><?php echo $test->subjectName; ?></td>
                            <td><?php echo $test->testDate; ?></td>
                            <td>
                                <a href="<?php echo site_url('Home/studentTest_Score_IB_Subject_Test/'); ?><?php echo $test->id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <?php }
                        } else {
                        ?><tr><td colspan="6" align="centre">No Record data found.</td></tr><?php
                        } 
                        ?>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>