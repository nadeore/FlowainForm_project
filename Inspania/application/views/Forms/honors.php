<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Honors Information</h5>
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
                 <form role="form" name="" class="form-horizontal" action="<?php echo site_url('Home/addHonors/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="honorTitle">Title of the Honor<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="honorTitle" name="honorTitle" type="text" placeholder="" class="form-control input-md" value="<?php if (isset($honorTitle)) echo $honorTitle?><?php echo set_value('honorTitle'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('honorTitle',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="gradeLevel">Grade Level<span class="required">*</span></label>
                    <div class="col-md-5">
                    <select id="gradeLevel" name="gradeLevel" class="form-control">
                        <option selected="selected" disabled>--Select--</option>
                        <option <?php if(isset($gradeLevel) && $gradeLevel == '9') echo  "selected=selected"?> value="9" <?php echo set_select('gradeLevel','9'); ?>>9</option>
                        <option <?php if(isset($gradeLevel) && $gradeLevel == '10') echo  "selected=selected"?> value="10" <?php echo set_select('gradeLevel','10'); ?>>10</option>
                        <option <?php if(isset($gradeLevel) && $gradeLevel == '11') echo  "selected=selected"?> value="11" <?php echo set_select('gradeLevel','11'); ?>>11</option>
                        <option <?php if(isset($gradeLevel) && $gradeLevel == '12') echo  "selected=selected"?> value="12" <?php echo set_select('gradeLevel','12'); ?>>12</option>
                        <option <?php if(isset($gradeLevel) && $gradeLevel == 'Post-Graduage') echo  "selected=selected"?> value="Post-Graduage" <?php echo set_select('gradeLevel','Post-Graduage'); ?>>Post-Graduage</option>
                    </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('gradeLevel',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="levelOfRecognition">Level of Recognition<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="levelOfRecognition" name="levelOfRecognition" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($levelOfRecognition) && $levelOfRecognition == 'School') echo  "selected=selected"?> value="School" <?php echo set_select('levelOfRecognition','School'); ?>>School</option>
                            <option <?php if(isset($levelOfRecognition) && $levelOfRecognition == 'State/Regional') echo  "selected=selected"?> value="State/Regional" <?php echo set_select('levelOfRecognition','State/Regional'); ?>>State/Regional</option>
                            <option <?php if(isset($levelOfRecognition) && $levelOfRecognition == 'National') echo  "selected=selected"?> value="National" <?php echo set_select('levelOfRecognition','National'); ?>>National</option>
                            <option <?php if(isset($levelOfRecognition) && $levelOfRecognition == 'International') echo  "selected=selected"?> value="International" <?php echo set_select('levelOfRecognition','International'); ?>>International</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('levelOfRecognition',"<p class='text-danger'>","</p>");?>
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
