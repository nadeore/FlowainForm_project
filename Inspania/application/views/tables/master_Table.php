<style>
    button.dim {
        margin-bottom: 0px !important;
    }
</style>
<div class="row">
<!--    <div class="col-lg-4">
        <div class="widget-head-color-box navy-bg p-lg text-center" style="padding: 3px;margin-top: 25px;">
            <div class="m-b-md">
                <h2 class="font-bold no-margins">
                    Alex Smith
                </h2>
                <small>Student of GTS</small>
            </div>
            <img src="<?php echo site_url($this->config->item('images_path')); ?>img/a4.jpg" class="rounded-circle circle-border m-b-md" alt="profile">
            <div>
                <span>100 Tweets</span> |
                <span>350 Following</span> |
                <span>610 Followers</span>
            </div>
        </div>
        <div class="widget-text-box">
            <h4 class="media-heading">Alex Smith</h4>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <div class="text-right">
                <a href=""  class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
                <a href="" class="btn btn-xs btn-primary"><i class="fa fa-heart"></i> Love</a>
            </div>
        </div>
    </div>-->
<?php //print_r($_SESSION); ?>
    <div class="col-lg-8">
        <div class="ibox " style="margin-top: 25px;">
            <div class="ibox-title">
                <h5>Student Details</h5>
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

                <table class="table table-hover " style="    text-align: center;">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Sub-Entity</th>
                            <!--<th>Status</th>-->
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <?php //echo $id; ?>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><div class="bg-primary p-xs b-r-sm"> Personal Information </div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentPersonelInfo/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><div class="bg-primary p-xs b-r-sm"> Contact Information </div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentContactInfo/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><div class="bg-primary p-xs b-r-sm"> Parent-1 Information</div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentParent1/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><div class="bg-primary p-xs b-r-sm"> Parent-2 Information</div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentParent2/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><div class="bg-primary p-xs b-r-sm"> High School Information</div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentHigh_Schools/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td><div class="bg-primary p-xs b-r-sm"> College Plans Information</div></td>
                            <td>
                                <a href="<?php echo site_url('Home/StudentCollegePlans/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td><div class="bg-primary p-xs b-r-sm"> Intended Major</div></td>
<!--                            <td> 
                                <button class="btn btn-outline btn-warning dim" type="button"><i class="fa fa-warning"></i></button>
                                <button class="btn btn-outline btn-primary dim" type="button"><i class="fa fa-check"></i></button>
                            </td>-->
                            <td>
                                <a href="<?php echo site_url('Home/StudentMejor_Selection/'); ?><?php echo $id; ?>" ><button class="btn btn-outline btn-success  dim" type="button"><i class="fa fa-pencil"></i></button></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>