<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Parent 2 Information</h5>
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
                <form role="form" name="Contact_form" class="form-horizontal" action="<?php echo site_url('Home/addparent2/')?><?php if (isset($id)) echo $id?>" method="post">

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2type">Parent 2 Type</label>
                        <div class="col-md-5">
                            <select id="Parent2type" name="Parent2type" class="form-control">
                                <option selected="selected" disabled>--Select--</option>
                                <option <?php if(isset($Parent2type) && $Parent2type == 'Mother') echo  "selected=selected"?> value="Mother" <?php echo set_select('Parent2type','Mother'); ?>>Mother</option>
                                <option <?php if(isset($Parent2type) && $Parent2type == 'Father') echo  "selected=selected"?> value="Father" <?php echo set_select('Parent2type','Father'); ?>>Father</option>
                                <option <?php if(isset($Parent2type) && $Parent2type == 'I have limited Information about this Parent') echo  "selected=selected"?> value="I have limited Information about this Parent" <?php echo set_select('Parent2type','I have limited Information about this Parent'); ?>>I have limited Information about this Parent</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2type',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2Living">Is Parent 2 Living?<span class="required">*</span></label>
                        <div class="col-md-5">
                            <select id="Parent2Living" name="Parent2Living" class="form-control" required="">
                                <option selected="selected" disabled>--Select--</option>
                                <option <?php if(isset($Parent2Living) && $Parent2Living == 'Yes') echo  "selected=selected"?> value="Yes" <?php echo set_select('Parent2Living','Yes'); ?>>Yes</option>
                                <option <?php if(isset($Parent2Living) && $Parent2Living == 'No') echo  "selected=selected"?> value="No" <?php echo set_select('Parent2Living','No'); ?>>No</option>
                                <option <?php if(isset($Parent2Living) && $Parent2Living == 'I have limited Information about this Parent') echo  "selected=selected"?> value="I have limited Information about this Parent" <?php echo set_select('Parent2Living','I have limited Information about this Parent'); ?>>I have limited Information about this Parent</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2Living',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2prefix">Prefix</label>
                        <div class="col-md-5">
                            <select id="Parent2prefix" name="Parent2Prerix" class="form-control">
                                <option selected="selected" disabled>--Select--</option>
                                <option <?php if(isset($Parent2prefix) && $Parent2prefix == 'Dr.') echo  "selected=selected"?> value="Dr." <?php echo set_select('Parent2prefix','Dr.'); ?>>Dr.</option>
                                <option <?php if(isset($Parent2prefix) && $Parent2prefix == 'Mr.') echo  "selected=selected"?> value="Mr." <?php echo set_select('Parent2prefix','Mr.'); ?>>Mr.</option>
                                <option <?php if(isset($Parent2prefix) && $Parent2prefix == 'Ms.') echo  "selected=selected"?> value="Ms." <?php echo set_select('Parent2prefix','Ms.'); ?>>Ms.</option>
                                <option <?php if(isset($Parent2prefix) && $Parent2prefix == 'Mrs.') echo  "selected=selected"?> value="Mrs." <?php echo set_select('Parent2prefix','Mrs.'); ?>>Mrs.</option>
                            </select>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2FirstName">First / Given Name<span class="required">*</span></label>  
                        <div class="col-md-5">
                            <input id="Parent2FirstName" name="Parent2FirstName" value="<?php if(isset($Parent2FirstName)) echo $Parent2FirstName; ?><?php echo set_value('Parent2FirstName'); ?>" type="text" placeholder="" class="form-control input-md" >

                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2FirstName',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2MiddleInitial">Middle Initial<span class="required">*</span></label>  
                        <div class="col-md-5">
                            <input id="Parent2MiddleInitial" name="Parent2MiddleInitial" value="<?php if(isset($Parent2MiddleInitial)) echo $Parent2MiddleInitial; ?><?php echo set_value('Parent2MiddleInitial'); ?>"  type="text" placeholder="" class="form-control input-md" >

                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2MiddleInitial',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2LastName">Last / Family / Surname<span class="required">*</span></label>  
                        <div class="col-md-5">
                            <input id="Parent2LastName" name="Parent2LastName" value="<?php if(isset($Parent2LastName)) echo $Parent2LastName; ?> <?php echo set_value('Parent2LastName'); ?>"  type="text" placeholder="" class="form-control input-md">

                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2LastName',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2FormerLastName">Former Last / Family / Surname</label>  
                        <div class="col-md-5">
                            <input id="Parent2FormerLastName" name="Parent2FormerLastName" value="<?php if(isset($Parent2FormerLastName)) echo $Parent2FormerLastName; ?><?php echo set_value('Parent2FormerLastName'); ?>"  type="text" placeholder="" class="form-control input-md">

                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2FormerLastName',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2Suffix">Suffix</label>
                        <div class="col-md-5">
                            <select id="Parent2Suffix" name="Parent2Suffix" class="form-control">
                                <option selected="selected" disabled>--Select--</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'Jr.') echo  "selected=selected"?> value="Jr." <?php echo set_select('Parent2Suffix','Jr.'); ?>>Jr.</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'Sr.') echo  "selected=selected"?> value="Sr." <?php echo set_select('Parent2Suffix','Sr.'); ?>>Sr.</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'II') echo  "selected=selected"?> value="II" <?php echo set_select('Parent2Suffix','II'); ?>>II</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'III') echo  "selected=selected"?> value="III" <?php echo set_select('Parent2Suffix','III'); ?>>III</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'IV') echo  "selected=selected"?> value="IV" <?php echo set_select('Parent2Suffix','IV'); ?>>IV</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'V') echo  "selected=selected"?> value="V" <?php echo set_select('Parent2Suffix','V'); ?>>V</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'VI') echo  "selected=selected"?> value="VI" <?php echo set_select('Parent2Suffix','VI'); ?>>VI</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'VII') echo  "selected=selected"?> value="VII" <?php echo set_select('Parent2Suffix','VII'); ?>>VII</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'VIII') echo  "selected=selected"?> value="VIII" <?php echo set_select('Parent2Suffix','VIII'); ?>>VIII</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'IX') echo  "selected=selected"?> value="IX" <?php echo set_select('Parent2Suffix','IX'); ?>>IX</option>
                                <option <?php if(isset($Parent2Suffix) && $Parent2Suffix == 'X') echo  "selected=selected"?> value="X" <?php echo set_select('Parent2Suffix','X'); ?>>X</option>
                            </select>
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2CountryOfBirth">Country of Birth<span class="required">*</span></label>
                        <div class="col-md-5">
                            <select id="Parent2CountryOfBirth" name="Parent2CountryOfBirth" class="form-control">
                            </select>
                        </div>
                        <div class="col-md-4">
                            <?php echo form_error('Parent2CountryOfBirth',"<p class='text-danger'>","</p>");?>        
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2Occupation">Occupation</label>
                        <div class="col-md-5">
                            <select id="Parent2Occupation" name="Parent2Occupation" class="form-control">
                            </select>
                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group  row">
                        <label class="col-sm-2 col-form-label" for="Parent2EducationLevel">Education Level</label>
                        <div class="col-md-5">
                            <select id="Parent2EducationLevel" name="Parent2EducationLevel" class="form-control">
                                <option selected="selected" disabled>--Select--</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'None') echo  "selected=selected"?> value="None" <?php echo set_select('Parent2EducationLevel','None'); ?>>None</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Some grade/primary school') echo  "selected=selected"?> value="Some grade/primary school" <?php echo set_select('Parent2EducationLevel','Some grade/primary school'); ?>>Some grade/primary school</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'completed grade/primary school') echo  "selected=selected"?> value="completed grade/primary school" <?php echo set_select('Parent2EducationLevel','completed grade/primary school'); ?>>completed grade/primary school</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'some high/secondary school') echo  "selected=selected"?> value="some high/secondary school" <?php echo set_select('Parent2EducationLevel','some high/secondary school'); ?>>some high/secondary school</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Graduated from high/secondary school (or equivalent)') echo  "selected=selected"?> value="Graduated from high/secondary school (or equivalent)" <?php echo set_select('Parent2EducationLevel','Graduated from high/secondary school (or equivalent)'); ?>>Graduated from high/secondary school (or equivalent)</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Some trade school or community college') echo  "selected=selected"?> value="Some trade school or community college" <?php echo set_select('Parent2EducationLevel','Some trade school or community college'); ?>>Some trade school or community college</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Graduated from trade school or community college') echo  "selected=selected"?> value="Graduated from trade school or community college" <?php echo set_select('Parent2EducationLevel','Graduated from trade school or community college'); ?>>Graduated from trade school or community college</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'some college/University') echo  "selected=selected"?> value="some college/University" <?php echo set_select('Parent2EducationLevel','some college/University'); ?>>some college/University</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Graduated from college/University') echo  "selected=selected"?> value="Graduated from college/University" <?php echo set_select('Parent2EducationLevel','Graduated from college/University'); ?>>Graduated from college/University</option>
                                <option <?php if(isset($Parent2EducationLevel) && $Parent2EducationLevel == 'Graduate School') echo  "selected=selected"?> value="Graduate School" <?php echo set_select('Parent2EducationLevel','Graduate School'); ?>>Graduate School</option>
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
                    var isChecked="";
                    for (var i = 0; i < json.countries.length; i++)
                    {
                        <?php if(isset($Parent2CountryOfBirth)){ ?>
                        if(<?php echo $Parent2CountryOfBirth; ?> == json.countries[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                        propertytype += '<option value="' + json.countries[i].id + '" '+isChecked+'>' + json.countries[i].countryName + '</option>';
                    }
                    $("select#Parent2CountryOfBirth").html(propertytype);
                }
            });


            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Home') ?>/Occupations',
                success: function (data) {
                    var json = JSON.parse(data);
    //                console.log(json);
                    var propertytype = '<option value="0">--Select Occupation--</option>';
                    var isChecked="";
                    for (var i = 0; i < json.Occupations.length; i++)
                    {
                        <?php if(isset($Parent2Occupation)){ ?>
                        if(<?php echo $Parent2Occupation;?> == json.Occupations[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                        propertytype += '<option value="' + json.Occupations[i].id + '" '+isChecked+'>' + json.Occupations[i].occupation + '</option>';
                    }
                    $("select#Parent2Occupation").html(propertytype);
                }
            });
        });
    </script>
