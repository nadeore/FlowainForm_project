<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Add College or University</h5>
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
                 <form role="form" name="Addcollege" class="form-horizontal" action="<?php echo site_url('Home/addAddcollege/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="collegeName">Name of the College<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="collegeName" name="collegeName" type="text" placeholder="" class="form-control input-md" required="" value="<?php if(isset($collegeName)) echo $collegeName; ?><?php echo set_value('collegeName'); ?>">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('collegeName',"<p class='text-danger'>","</p>");?>
        
                    </div>

                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="joiningDate">Date of Joining<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="joiningDate" name="joiningDate" type="date" placeholder="" class="form-control input-md" value="<?php if(isset($joiningDate)) echo $joiningDate; ?><?php echo set_value('joiningDate'); ?>">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('joiningDate',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="courseDetails">Course Details<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="courseDetails" name="courseDetails" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($courseDetails) && $courseDetails == 'Dual enrollment with high school') echo  "selected=selected"?> value="Dual enrollment with high school" <?php echo set_select('courseDetails','Dual enrollment with high school'); ?>>Dual enrollment with high school</option>
                            <option <?php if(isset($courseDetails) && $courseDetails == 'Summer program') echo  "selected=selected"?> value="Summer program" <?php echo set_select('courseDetails','Summer program'); ?>>Summer program</option>
                            <option <?php if(isset($courseDetails) && $courseDetails == 'Credit awarded directly by college') echo  "selected=selected"?> value="Credit awarded directly by college" <?php echo set_select('courseDetails','Credit awarded directly by college'); ?>>Credit awarded directly by college</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('courseDetails',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="degreeEarned">Degree Earned<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="degreeEarned" name="degreeEarned" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($degreeEarned) && $degreeEarned == 'AA') echo  "selected=selected"?> value="AA" <?php echo set_select('degreeEarned','AA'); ?>>AA</option>
                            <option <?php if(isset($degreeEarned) && $degreeEarned == 'AS') echo  "selected=selected"?> value="AS" <?php echo set_select('degreeEarned','AS'); ?>>AS</option>
                            <option <?php if(isset($degreeEarned) && $degreeEarned == 'BA') echo  "selected=selected"?> value="BA" <?php echo set_select('degreeEarned','BA'); ?>>BA</option>
                            <option <?php if(isset($degreeEarned) && $degreeEarned == 'BS') echo  "selected=selected"?> value="BS" <?php echo set_select('degreeEarned','BS'); ?>>BS</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('degreeEarned',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="singlebutton"></label>
                    <div class="col-sm-5">
                        <input type="submit" id="singlebutton" name="savecontinue" class="btn btn-primary" value="Save and Continue"> 
                    </div>
                </div>
                <div style="border:1px solid black;">
                <p style="text-align:right">You can add multiple records using this form, to do so you need to refill this form and then save and continue.(PS: does not apply to Edit view)&nbsp&nbsp</p>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>