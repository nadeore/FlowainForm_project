<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Add Siblings</h5>
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
                <form role="form" name="Siblings" class="form-horizontal" action="<?php echo site_url('Home/addsiblings/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="firstName">First Name<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="firstName" name="firstName" type="text" placeholder="" class="form-control input-md" value="<?php if (isset($firstName)) echo $firstName; ?><?php echo set_value('firstName'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('firstName',"<p class='text-danger'>","</p>");?>

                    </div>

                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="middleInitial">Middle Initials</label>  
                    <div class="col-md-5">
                        <input id="middleInitial" name="middleInitial" type="text" placeholder="" class="form-control input-md" value="<?php if (isset($middleInitial)) echo $middleInitial; ?><?php echo set_value('middleInitial'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('middleInitial',"<p class='text-danger'>","</p>");?>

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="lastName">Last Name<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="lastName" name="lastName" type="text" placeholder="" class="form-control input-md" value="<?php if (isset($lastName)) echo $lastName; ?><?php echo set_value('lastName'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('lastName',"<p class='text-danger'>","</p>");?>

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="age">Age<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="age" name="age" type="text" placeholder="" class="form-control input-md" value="<?php if (isset($age)) echo $age; ?><?php echo set_value('age'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('age',"<p class='text-danger'>","</p>");?>

                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="relationship">Relationship<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="relationship" name="relationship" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($relationship) && $relationship == 'Brother') echo  "selected=selected"?> value="Brother" <?php echo set_select('relationship','Brother'); ?>>Brother</option>
                            <option <?php if(isset($relationship) && $relationship == 'Sister') echo  "selected=selected"?> value="Sister" <?php echo set_select('relationship','Sister'); ?>>Sister</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('relationship',"<p class='text-danger'>","</p>");?>

                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="educationLevel">Level of Education</label>
                    <div class="col-md-5">
                        <select id="educationLevel" name="educationLevel" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'None') echo  "selected=selected"?> value="None" <?php echo set_select('educationLevel','None'); ?>>None</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Some grade/primary school') echo  "selected=selected"?> value="Some grade/primary school" <?php echo set_select('educationLevel','Some grade/primary school'); ?>>Some grade/primary school</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'completed grade/primary school') echo  "selected=selected"?> value="completed grade/primary school" <?php echo set_select('educationLevel','completed grade/primary school'); ?>>completed grade/primary school</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'some high/secondary school') echo  "selected=selected"?> value="some high/secondary school" <?php echo set_select('educationLevel','some high/secondary school'); ?>>some high/secondary school</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Graduated from high/secondary school (or equivalent)') echo  "selected=selected"?> value="Graduated from high/secondary school (or equivalent)" <?php echo set_select('educationLevel','Graduated from high/secondary school (or equivalent)'); ?>>Graduated from high/secondary school (or equivalent)</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Some trade school or community college') echo  "selected=selected"?> value="Some trade school or community college" <?php echo set_select('educationLevel','Some trade school or community college'); ?>>Some trade school or community college</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Graduated fro trade school or community college') echo  "selected=selected"?> value="Graduated fro trade school or community college" <?php echo set_select('educationLevel','Graduated fro trade school or community college'); ?>>Graduated fro trade school or community college</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'some college/University') echo  "selected=selected"?> value="some college/University" <?php echo set_select('educationLevel','some college/University'); ?>>some college/University</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Graduated from college/University') echo  "selected=selected"?> value="Graduated from college/University" <?php echo set_select('educationLevel','Graduated from college/University'); ?>>Graduated from college/University</option>
                            <option <?php if(isset($educationLevel) && $educationLevel == 'Graduate School') echo  "selected=selected"?> value="Graduate School" <?php echo set_select('educationLevel','Graduate School'); ?>>Graduate School</option>
                        </select>
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
