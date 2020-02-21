<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Parent 1 Information</h5>
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
            <?php //print_r($_SESSION);?>
            <div class="ibox-content">
                <form role="form" name="Contact_form" class="form-horizontal" action="<?php echo site_url('Home/addparent1/')?><?php if (isset($id)) echo $id?>" method="post">
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1type">Parent 1 Type<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="Parent1type" name="Parent1type" class="form-control">
                            <<option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($Parent1type) && $Parent1type == 'Mother') echo  "selected=selected"?> value="Mother" <?php echo set_select('Parent1type','Mother'); ?>>Mother</option>
                            <option <?php if(isset($Parent1type) && $Parent1type == 'Father') echo  "selected=selected"?> value="Father" <?php echo set_select('Parent1type','Father'); ?>>Father</option>
                            <option <?php if(isset($Parent1type) && $Parent1type == 'I have limited Information about this Parent') echo  "selected=selected"?> value="I have limited Information about this Parent" <?php echo set_select('Parent1type','I have limited Information about this Parent'); ?>>I have limited Information about this Parent</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1type',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="parent1Living">Is Parent 1 Living?<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="parent1Living" name="parent1Living" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($parent1Living) && $parent1Living == 'Yes') echo  "selected=selected"?> value="Yes" <?php echo set_select('parent1Living','Yes'); ?>>Yes</option>
                            <option <?php if(isset($parent1Living) && $parent1Living == 'No') echo  "selected=selected"?> value="No" <?php echo set_select('parent1Living','No'); ?>>No</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('parent1Living',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1prefix">Prefix</label>
                    <div class="col-md-5">
                        <select id="Parent1prefix" name="Parent1prefix" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($Parent1prefix) && $Parent1prefix == 'Dr.') echo  "selected=selected"?> value="Dr." <?php echo set_select('Parent1prefix','Dr.'); ?>>Dr.</option>
                            <option <?php if(isset($Parent1prefix) && $Parent1prefix == 'Mr.') echo  "selected=selected"?> value="Mr." <?php echo set_select('Parent1prefix','Mr.'); ?>>Mr.</option>
                            <option <?php if(isset($Parent1prefix) && $Parent1prefix == 'Ms.') echo  "selected=selected"?> value="Ms." <?php echo set_select('Parent1prefix','Ms.'); ?>>Ms.</option>
                            <option <?php if(isset($Parent1prefix) && $Parent1prefix == 'Mrs.') echo  "selected=selected"?> value="Mrs." <?php echo set_select('Parent1prefix','Mrs.'); ?>>Mrs.</option>
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1FirstName">First / Given Name<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="Parent1FirstName" name="Parent1FirstName" type="text" placeholder="" class="form-control input-md" value="<?php if(isset($Parent1FirstName)) echo $Parent1FirstName; ?><?php echo set_value('Parent1FirstName'); ?>">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1FirstName',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1MiddleInitial">Middle Initial</label>  
                    <div class="col-md-5">
                        <input id="Parent1MiddleInitial" name="Parent1MiddleInitial" type="text" placeholder="" class="form-control input-md" value="<?php if(isset($Parent1MiddleInitial)) echo $Parent1MiddleInitial; ?><?php echo set_value('Parent1MiddleInitial'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1MiddleInitial',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1LastName">Last / Family / Surname<span class="required">*</span></label>  
                    <div class="col-md-5">
                        <input id="Parent1LastName" name="Parent1LastName" type="text" placeholder="" class="form-control input-md" value="<?php if(isset($Parent1LastName)) echo $Parent1LastName; ?><?php echo set_value('Parent1LastName'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1LastName',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1FormerLastName">Former Last / Family / Surname</label>  
                    <div class="col-md-5">
                        <input id="Parent1FormerLastName" name="Parent1FormerLastName" type="text" placeholder="" class="form-control input-md" value="<?php if(isset($Parent1FormerLastName)) echo $Parent1FormerLastName; ?><?php echo set_value('Parent1FormerLastName'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1FormerLastName',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1Suffix">Suffix</label>
                    <div class="col-md-5">
                        <select id="Parent1Suffix" name="Parent1Suffix" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'Jr.') echo  "selected=selected"?> value="Jr." <?php echo set_select('Parent1Suffix','Jr.'); ?>>Jr.</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'Sr.') echo  "selected=selected"?> value="Sr." <?php echo set_select('Parent1Suffix','Sr.'); ?>>Sr.</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'II') echo  "selected=selected"?> value="II" <?php echo set_select('Parent1Suffix','II'); ?>>II</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'III') echo  "selected=selected"?> value="III" <?php echo set_select('Parent1Suffix','III'); ?>>III</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'IV') echo  "selected=selected"?> value="IV" <?php echo set_select('Parent1Suffix','IV'); ?>>IV</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'V') echo  "selected=selected"?> value="V" <?php echo set_select('Parent1Suffix','V'); ?>>V</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'VI') echo  "selected=selected"?> value="VI" <?php echo set_select('Parent1Suffix','VI'); ?>>VI</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'VII') echo  "selected=selected"?> value="VII" <?php echo set_select('Parent1Suffix','VII'); ?>>VII</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'VIII') echo  "selected=selected"?> value="VIII" <?php echo set_select('Parent1Suffix','VIII'); ?>>VIII</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'IX') echo  "selected=selected"?> value="IX" <?php echo set_select('Parent1Suffix','IX'); ?>>IX</option>
                            <option <?php if(isset($Parent1Suffix) && $Parent1Suffix == 'X') echo  "selected=selected"?> value="X" <?php echo set_select('Parent1Suffix','X'); ?>>X</option>
                        </select>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1CountryOfBirth">Country of Birth<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="Parent1CountryOfBirth" name="Parent1CountryOfBirth" class="form-control">
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('Parent1CountryOfBirth',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1Occupation">Occupation</label>
                    <div class="col-md-5">
                        <select id="Parent1Occupation" name="Parent1Occupation" class="form-control">
                        </select>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="Parent1EducationLevel">Education Level</label>
                    <div class="col-md-5">
                        <select id="Parent1EducationLevel" name="Parent1EducationLevel" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'None') echo  "selected=selected"?> value="None" <?php echo set_select('Parent1EducationLevel','None'); ?>>None</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Some grade/primary school') echo  "selected=selected"?> value="Some grade/primary school" <?php echo set_select('Parent1EducationLevel','Some grade/primary school'); ?>>Some grade/primary school</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'completed grade/primary school') echo  "selected=selected"?> value="completed grade/primary school" <?php echo set_select('Parent1EducationLevel','completed grade/primary school'); ?>>completed grade/primary school</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'some high/secondary school') echo  "selected=selected"?> value="some high/secondary school" <?php echo set_select('Parent1EducationLevel','some high/secondary school'); ?>>some high/secondary school</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Graduated from high/secondary school (or equivalent)') echo  "selected=selected"?> value="Graduated from high/secondary school (or equivalent)" <?php echo set_select('Parent1EducationLevel','Graduated from high/secondary school (or equivalent)'); ?>>Graduated from high/secondary school (or equivalent)</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Some trade school or community college') echo  "selected=selected"?> value="Some trade school or community college" <?php echo set_select('Parent1EducationLevel','Some trade school or community college'); ?>>Some trade school or community college</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Graduated from trade school or community college') echo  "selected=selected"?> value="Graduated from trade school or community college" <?php echo set_select('Parent1EducationLevel','Graduated from trade school or community college'); ?>>Graduated from trade school or community college</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'some college/University') echo  "selected=selected"?> value="some college/University" <?php echo set_select('Parent1EducationLevel','some college/University'); ?>>some college/University</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Graduated from college/University') echo  "selected=selected"?> value="Graduated from college/University" <?php echo set_select('Parent1EducationLevel','Graduated from college/University'); ?>>Graduated from college/University</option>
                            <option <?php if(isset($Parent1EducationLevel) && $Parent1EducationLevel == 'Graduate School') echo  "selected=selected"?> value="Graduate School" <?php echo set_select('Parent1EducationLevel','Graduate School'); ?>>Graduate School</option>
                        </select>
                    </div>
                </div>

                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="singlebutton"></label>
                    <div class="col-sm-5">
                        <input type="submit" id="singlebutton" name="savecontinue" class="btn btn-primary" value="Save and Continue"> 
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('Home') ?>/getAllCountries',
            success: function (data) {
                var json = JSON.parse(data);
                //                console.log(json);
                var propertytype = '<option value="0">--Select School Country--</option>';
                var isChecked = "";
                for (var i = 0; i < json.countries.length; i++)
                {   
                    <?php if(isset($Parent1CountryOfBirth)){ ?>
                        if(<?php if(isset($Parent1CountryOfBirth) && $Parent1CountryOfBirth) echo $Parent1CountryOfBirth;?> == json.countries[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                    propertytype += '<option value="' + json.countries[i].id + '" '+isChecked+'>' + json.countries[i].countryName + '</option>';
                }
                $("select#Parent1CountryOfBirth").html(propertytype);
            }
        });


        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('Home') ?>/Occupations',
            success: function (data) {
                var json = JSON.parse(data);
                //                console.log(json);
                var propertytype = '<option value="0">--Select Occupation--</option>';
                var isChecked = "";
                for (var i = 0; i < json.Occupations.length; i++)
                {   
                    <?php if(isset($Parent1Occupation)){ ?>
                        if(<?php if(isset($Parent1Occupation) && $Parent1Occupation) echo $Parent1Occupation;?> == json.Occupations[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                    propertytype += '<option value="' + json.Occupations[i].id + '" '+isChecked+'>' + json.Occupations[i].occupation + '</option>';
                }
                $("select#Parent1Occupation").html(propertytype);
            }
        });
    });
</script>
