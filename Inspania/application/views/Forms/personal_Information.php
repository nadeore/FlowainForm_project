
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Personal Information</h5>
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
            <!--<?php print_r($_SESSION); ?>-->
            <div class="ibox-content">
                <form role="form" name="personel_form" class="form-horizontal" action="<?php echo site_url('Home/addPersonelInfo/')?><?php if (isset($id)) echo $id?>" method="post">
                
                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="firstName">First Name<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="firstName" name="firstName" type="text" placeholder="" value="<?php if(isset($firstName)) echo $firstName; ?><?php echo set_value('firstName'); ?>" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('firstName',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="middleInitial">Middle Initial<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="middleInitial" name="middleInitial" type="text" value="<?php if(isset($middleInitial)) echo $middleInitial; ?><?php echo set_value('middleInitial'); ?>" placeholder="" class="form-control input-md">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('middleInitial',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="lastName">Last Name<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="lastName" name="lastName" type="text" placeholder="" value="<?php if(isset($lastName)) echo $lastName; ?><?php echo set_value('lastName'); ?>" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('lastName',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Multiple Radios (inline) -->
                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="gender">Gender<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="gender" name="gender" class="form-control">
                            <option value="Male" <?php if(isset($gender) && $gender == 'Male')    echo "selected=selected"?> <?php echo set_select('gender','Male'); ?>>Male</option>
                            <option value="Female" <?php if(isset($gender) && $gender == 'Female')    echo "selected=selected"?> <?php echo set_select('gender','Female'); ?>>Female</option>
                            <option value="Another/Not Listed" <?php if(isset($gender) && $gender == 'Another/Not Listed')    echo "selected=selected"?> <?php echo set_select('gender','Another/Not Listed'); ?>>Another / Not Listed</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('gender',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="dateOfBirth">Date of Birth<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="dateOfBirth" name="dateOfBirth" type="date" value="<?php if(isset($dateOfBirth)) echo $dateOfBirth; ?><?php echo set_value('dateOfBirth'); ?>" placeholder="" class="form-control input-md" required="">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('dateOfBirth',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="countryOfResidence">Country of Residence<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="countryOfResidence" name="countryOfResidence" class="form-control">                           
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('countryOfResidence',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="countryOfBirth">Country of Birth<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="countryOfBirth" name="countryOfBirth" class="form-control">
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('countryOfBirth',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="cityOfBirth">City of birth<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="cityOfBirth" name="cityOfBirth" type="text" value="<?php if(isset($cityOfBirth)) echo $cityOfBirth; ?><?php echo set_value('cityOfBirth'); ?>" placeholder="Enter the city where you were born" class="form-control input-md" required="">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('cityOfBirth',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="noOfYrsInUS">Number of years you have lived in the USA</label>
                    <div class="col-sm-5">
                        <select id="noOfYrsInUS" name="noOfYrsInUS" class="form-control">
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '0')    echo "selected=selected"?>  value="0" <?php echo set_select('noOfYrsInUS','0'); ?>>0</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '1 Year')    echo "selected=selected"?> value="1 Year" <?php echo set_select('noOfYrsInUS','1 Year'); ?>> 1 Year</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '2')    echo "selected=selected"?> value="2" <?php echo set_select('noOfYrsInUS','2'); ?>>2</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '3')    echo "selected=selected"?> value="3" <?php echo set_select('noOfYrsInUS','3'); ?>>3</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '4')    echo "selected=selected"?> value="4" <?php echo set_select('noOfYrsInUS','4'); ?>>4</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '5')    echo "selected=selected"?> value="5" <?php echo set_select('noOfYrsInUS','5'); ?>>5</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '6')    echo "selected=selected"?> value="6" <?php echo set_select('noOfYrsInUS','6'); ?>>6</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '7')    echo "selected=selected"?> value="7" <?php echo set_select('noOfYrsInUS','7'); ?>>7</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '8')    echo "selected=selected"?> value="8"  <?php echo set_select('noOfYrsInUS','8'); ?> >8</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '9')    echo "selected=selected"?> value="9" <?php echo set_select('noOfYrsInUS','9'); ?>>9</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '10')    echo "selected=selected"?> value="10" <?php echo set_select('noOfYrsInUS','10'); ?>>10</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '11')    echo "selected=selected"?> value="11" <?php echo set_select('noOfYrsInUS','11'); ?>>11</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '12')    echo "selected=selected"?> value="12" <?php echo set_select('noOfYrsInUS','12'); ?>>12</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '13')    echo "selected=selected"?> value="13" <?php echo set_select('noOfYrsInUS','13'); ?>>13</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '14')    echo "selected=selected"?> value="14" <?php echo set_select('noOfYrsInUS','14'); ?>>14</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '15')    echo "selected=selected"?> value="15" <?php echo set_select('noOfYrsInUS','15'); ?>>15</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '16')    echo "selected=selected"?> value="16" <?php echo set_select('noOfYrsInUS','16'); ?>>16</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '17')    echo "selected=selected"?> value="17" <?php echo set_select('noOfYrsInUS','17'); ?>>17</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '18')    echo "selected=selected"?> value="18" <?php echo set_select('noOfYrsInUS','18'); ?>>18</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '19')    echo "selected=selected"?> value="19" <?php echo set_select('noOfYrsInUS','19'); ?>>19</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '20')    echo "selected=selected"?> value="20" <?php echo set_select('noOfYrsInUS','20'); ?>>20</option>
                            <option <?php if(isset($noOfYrsInUS) && $noOfYrsInUS == '>20 Years')    echo "selected=selected"?> value=">20 Years" <?php echo set_select('noOfYrsInUS','>20 Years'); ?>>>20 Years</option>
                        </select>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="noOfYrsOutOfUS">Number of years you have lived outside the USA</label>
                    <div class="col-sm-5">
                        <select id="noOfYrsOutOfUS" name="noOfYrsOutOfUS" class="form-control">
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '0')    echo "selected=selected"?>  value="0" <?php echo set_select('noOfYrsOutOfUS','0'); ?>>0</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '1 Year')    echo "selected=selected"?> value="1 Year" <?php echo set_select('noOfYrsOutOfUS','1 Year'); ?>> 1 Year</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '2')    echo "selected=selected"?> value="2" <?php echo set_select('noOfYrsOutOfUS','2'); ?>>2</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '3')    echo "selected=selected"?> value="3" <?php echo set_select('noOfYrsOutOfUS','3'); ?>>3</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '4')    echo "selected=selected"?> value="4" <?php echo set_select('noOfYrsOutOfUS','4'); ?>>4</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '5')    echo "selected=selected"?> value="5" <?php echo set_select('noOfYrsOutOfUS','5'); ?>>5</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '6')    echo "selected=selected"?> value="6" <?php echo set_select('noOfYrsOutOfUS','6'); ?>>6</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '7')    echo "selected=selected"?> value="7" <?php echo set_select('noOfYrsOutOfUS','7'); ?>>7</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '8')    echo "selected=selected"?> value="8" <?php echo set_select('noOfYrsOutOfUS','8'); ?>>8</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '9')    echo "selected=selected"?> value="9" <?php echo set_select('noOfYrsOutOfUS','9'); ?>>9</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '10')    echo "selected=selected"?> value="10" <?php echo set_select('noOfYrsOutOfUS','10'); ?>>10</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '11')    echo "selected=selected"?> value="11" <?php echo set_select('noOfYrsOutOfUS','11'); ?>>11</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '12')    echo "selected=selected"?> value="12" <?php echo set_select('noOfYrsOutOfUS','12'); ?>>12</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '13')    echo "selected=selected"?> value="13" <?php echo set_select('noOfYrsOutOfUS','13'); ?>>13</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '14')    echo "selected=selected"?> value="14" <?php echo set_select('noOfYrsOutOfUS','14'); ?>>14</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '15')    echo "selected=selected"?> value="15" <?php echo set_select('noOfYrsOutOfUS','15'); ?>>15</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '16')    echo "selected=selected"?> value="16" <?php echo set_select('noOfYrsOutOfUS','16'); ?>>16</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '17')    echo "selected=selected"?> value="17" <?php echo set_select('noOfYrsOutOfUS','17'); ?>>17</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '18')    echo "selected=selected"?> value="18" <?php echo set_select('noOfYrsOutOfUS','18'); ?>>18</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '19')    echo "selected=selected"?> value="19" <?php echo set_select('noOfYrsOutOfUS','19'); ?>>19</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '20')    echo "selected=selected"?> value="20" <?php echo set_select('noOfYrsOutOfUS','20'); ?>>20</option>
                            <option <?php if(isset($noOfYrsOutOfUS) && $noOfYrsOutOfUS == '>20 Years')    echo "selected=selected"?> value=">20 Years" <?php echo set_select('noOfYrsOutOfUS','>20 Years'); ?>>>20 Years</option>
                        </select>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="citizenshipStatus">Citizenship Status for USA<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="citizenshipStatus" name="citizenshipStatus" class="form-control">
                            <option <?php if(isset($citizenshipStatus) && $citizenshipStatus == 'U.S. Citizen or U.S. National')    echo "selected=selected"?> value="U.S. Citizen or U.S. National" <?php echo set_select('citizenshipStatus','U.S. Citizen or U.S. National'); ?>>U.S. Citizen or U.S. National</option>
                            <option <?php if(isset($citizenshipStatus) && $citizenshipStatus == 'U.S. Dual Citizen')    echo "selected=selected"?> value="U.S. Dual Citizen" <?php echo set_select('citizenshipStatus','U.S. Dual Citizen'); ?>>U.S. Dual Citizen</option>
                            <option <?php if(isset($citizenshipStatus) && $citizenshipStatus == 'U.S. Permanent Resident')    echo "selected=selected"?> value="U.S. Permanent Resident" <?php echo set_select('citizenshipStatus','U.S. Permanent Resident'); ?>>U.S. Permanent Resident</option>
                            <option <?php if(isset($citizenshipStatus) && $citizenshipStatus == 'U.S. Refugee or Asylee')    echo "selected=selected"?> value="U.S. Refugee or Asylee" <?php echo set_select('citizenshipStatus','U.S. Refugee or Asylee'); ?>>U.S. Refugee or Asylee</option>
                            <option <?php if(isset($citizenshipStatus) && $citizenshipStatus == 'Other (Non-US)')    echo "selected=selected"?> value="Other (Non-US)" <?php echo set_select('citizenshipStatus','Other (Non-US)'); ?>>Other (Non-US)</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('citizenshipStatus',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="parentsMaritalStatus">Parent's Marital Status</label>
                    <div class="col-sm-5">
                        <select id="parentsMaritalStatus" name="parentsMaritalStatus" class="form-control">
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Married')    echo "selected=selected"?> value="Married" <?php echo set_select('parentsMaritalStatus','Married'); ?>>Married</option>
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Separated')    echo "selected=selected"?> value="Separated" <?php echo set_select('parentsMaritalStatus','Separated'); ?>>Separated</option>
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Divorced')    echo "selected=selected"?> value="Divorced" <?php echo set_select('parentsMaritalStatus','Divorced'); ?>>Divorced</option>
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Never Married')    echo "selected=selected"?> value="Never Married" <?php echo set_select('parentsMaritalStatus','Never Married'); ?>>Never Married</option>
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Widowed')    echo "selected=selected"?> value="Widowed" <?php echo set_select('parentsMaritalStatus','Widowed'); ?>>Widowed</option>
                            <option <?php if(isset($parentsMaritalStatus) && $parentsMaritalStatus == 'Civil Union/Domestic Partners')    echo "selected=selected"?> value="Civil Union/Domestic Partners" <?php echo set_select('parentsMaritalStatus','Civil Union/Domestic Partners'); ?>>Civil Union/Domestic Partners</option>
                        </select>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="permenantHomeGuardian">Who do you make your permanent home with?<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="permenantHomeGuardian" name="permenantHomeGuardian" class="form-control">
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Parent 1')    echo "selected=selected"?> value="Parent 1" <?php echo set_select('permenantHomeGuardian','Parent 1'); ?>>Parent 1</option>
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Parent 2')    echo "selected=selected"?> value="Parent 2" <?php echo set_select('permenantHomeGuardian','Parent 2'); ?>>Parent 2</option>
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Both Parents')    echo "selected=selected"?> value="Both Parents" <?php echo set_select('permenantHomeGuardian','Both Parents'); ?>>Both Parents</option>
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Legal Guardian')    echo "selected=selected"?> value="Legal Guardian" <?php echo set_select('permenantHomeGuardian','Legal Guardian'); ?>>Legal Guardian</option>
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Other')    echo "selected=selected"?> value="Other" <?php echo set_select('permenantHomeGuardian','Other'); ?>>Other</option>
                            <option <?php if(isset($permenantHomeGuardian) && $permenantHomeGuardian == 'Ward of the Court/State')    echo "selected=selected"?> value="Ward of the Court/State" <?php echo set_select('permenantHomeGuardian','Ward of the Court/State'); ?>>Ward of the Court/State</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('permenantHomeGuardian',"<p class='text-danger'>","</p>");?>        
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function singlebutton() {
            alert("Are you Sure!!!")
            window.location.href = "<?php echo base_url('Home') ?>";
        }
    </script>
    <script>
        $(document).ready(function () {
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Home') ?>/getAllCountries',
                success: function (data) {
                    var json = JSON.parse(data);
    //                console.log(json);
                    var isChecked="";
                    
                    var propertytype = '<option value="0">--Select Country--</option>';
                    for (var i = 0; i < json.countries.length; i++)
                    {   
                        <?php if(isset($countryOfResidence)){ ?>
                            if(<?php if(isset($countryOfResidence) && $countryOfResidence) echo $countryOfResidence;?> == json.countries[i].id){
                             isChecked="selected=selected"; 
                            }else{
                                isChecked="";
                            }   
                        <?php } ?>              
                        propertytype += '<option value="' + json.countries[i].id + '" '+isChecked+'>' + json.countries[i].countryName + '</option>';
                    }
                    $("select#countryOfResidence").html(propertytype);
                    
                    var isChecked2="";                    
                    var propertytype2 = '<option value="0">--Select Country--</option>';
                    for (var i = 0; i < json.countries.length; i++)
                    {   
                        <?php if(isset($countryOfBirth)){ ?>
                            if(<?php if(isset($countryOfBirth) && $countryOfBirth) echo $countryOfBirth;?> == json.countries[i].id){
                             isChecked2="selected=selected"; 
                            }else{
                                isChecked2="";
                            }   
                        <?php } ?> 
                        propertytype2 += '<option value="' + json.countries[i].id + '" '+isChecked2+'>' + json.countries[i].countryName + '</option>';
                    }
                    $("select#countryOfBirth").html(propertytype2);
                }
            });
        });
    </script>
    <script>
  fbq('track', 'CompleteRegistration');
</script>