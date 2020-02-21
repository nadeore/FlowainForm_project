
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>High Schools</h5>
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
                <form role="form" name="Contact_form" class="form-horizontal" action="<?php echo site_url('Home/addhigh_Schools/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="schoolName">Name of your High School<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="schoolName" name="schoolName" type="text" placeholder="" class="form-control input-md" required="" value="<?php if(isset($schoolName)) echo $schoolName; ?><?php echo set_value('schoolName'); ?>">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('schoolName',"<p class='text-danger'>","</p>");?>
        
                    </div>

                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="schoolDateOfEntry">Date of Entry<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="schoolDateOfEntry" name="schoolDateOfEntry" type="date" placeholder="" class="form-control input-md" required="" value="<?php if(isset($schoolDateOfEntry)) echo $schoolDateOfEntry; ?><?php echo set_value('schoolDateOfEntry'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('schoolDateOfEntry',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="schoolCity">City where your school is located<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="schoolCity" name="schoolCity" type="text" placeholder="" class="form-control input-md" required="" value="<?php if(isset($schoolCity)) echo $schoolCity; ?><?php echo set_value('schoolCity'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('schoolCity',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="schoolZipCode">Zip Code where your school is located<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="schoolZipCode" name="schoolZipCode" type="text" placeholder="" class="form-control input-md" required="" value="<?php if(isset($schoolZipCode)) echo $schoolZipCode; ?><?php echo set_value('schoolZipCode'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('schoolZipCode',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="schoolCountry">Country where your school is located<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="schoolCountry" name="schoolCountry" class="form-control">
                            
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('schoolCountry',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <!-- Multiple Radios (inline) -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="boarindSchool">Is this a boarding school?</label>
                    <div class="col-md-5">
                        <label class="radio-inline" for="boarindSchool-0">
                            <input type="radio" name="boarindSchool" id="boarindSchool-0" value="Yes" <?php if(isset($boarindSchool) && $boarindSchool == 'Yes')    echo "checked"?>>
                            Yes
                        </label>
                        <label class="radio-inline" for="boarindSchool-1">
                            <input type="radio" name="boarindSchool" id="boarindSchool-1" value="No" <?php if(isset($boarindSchool) && $boarindSchool == 'No')    echo "checked"?>>
                            No
                        </label>
                    </div>
                </div>

                <!-- Multiple Radios (inline) -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="guaduatedFromSchool">Will you or have you graduated from this High School?</label>
                    <div class="col-md-5">
                        <label class="radio-inline" for="guaduatedFromSchool-0">
                            <input type="radio" name="guaduatedFromSchool" id="guaduatedFromSchool-0" value="Yes"  <?php if(isset($guaduatedFromSchool) && $guaduatedFromSchool == 'Yes')    echo "checked"?> >
                            Yes
                        </label>
                        <label class="radio-inline" for="guaduatedFromSchool-1">
                            <input type="radio" name="guaduatedFromSchool" id="guaduatedFromSchool-1" value="No"   <?php if(isset($guaduatedFromSchool) && $guaduatedFromSchool == 'No')    echo "checked"?>>
                            No
                        </label>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('guaduatedFromSchool',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group row  row">
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
                var isChecked2 = "";
                for (var i = 0; i < json.countries.length; i++)
                {   <?php if(isset($schoolCountry)){ ?>
                        if(<?php if(isset($schoolCountry) && $schoolCountry) echo $schoolCountry;?> == json.countries[i].id){
                         isChecked2="selected=selected"; 
                        }else{
                            isChecked2="";
                        }   
                    <?php } ?>
                    propertytype += '<option value="' + json.countries[i].id + '" '+isChecked2+'>' + json.countries[i].countryName + '</option>';
                }
                $("select#schoolCountry").html(propertytype);
            }
        });
    });
</script>
