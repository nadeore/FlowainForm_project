
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Contact Information</h5>
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
                <form role="form" name="Contact_form" class="form-horizontal" action="<?php echo site_url('Home/addContactInfo/')?><?php if (isset($id)) echo $id?>" method="post">
                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="streetAddress1">Street Address 1<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="streetAddress1" name="streetAddress1" value="<?php if(isset($streetAddress1)) echo $streetAddress1; ?> <?php echo set_value('streetAddress1'); ?>" type="text" placeholder="" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('streetAddress1',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="streetAddress3">Street Address 2</label>
                    <div class="col-sm-5">
                        <input id="streetAddress3" name="streetAddress2" value="<?php if(isset($streetAddress2)) echo $streetAddress2; ?><?php echo set_value('streetAddress2'); ?>" type="text" placeholder="" class="form-control input-md">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('streetAddress2',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="streetAddress2">Street Address 3</label>
                    <div class="col-sm-5">
                        <input id="streetAddress2" name="streetAddress3" value="<?php if(isset($streetAddress3)) echo $streetAddress3; ?><?php echo set_value('streetAddress3'); ?>" type="text" placeholder="" class="form-control input-md">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('streetAddress3',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="city">City<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="city" name="city" type="text" value="<?php if(isset($city)) echo $city; ?><?php echo set_value('city'); ?>" placeholder="" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('city',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="postalCode">Postal Code<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="postalCode" name="postalCode" value="<?php if(isset($postalCode)) echo $postalCode; ?><?php echo set_value('postalCode'); ?>" type="text" placeholder="" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('postalCode',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="regionOrProvince">Region or Province<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="regionOrProvince" name="regionOrProvince" value="<?php if(isset($regionOrProvince)) echo $regionOrProvince; ?><?php echo set_value('regionOrProvince'); ?>" type="text" placeholder="" class="form-control input-md">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('regionOrProvince',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="countryCode">Phone - Country Code<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <select id="countryCode" name="countryCode" class="form-control">
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('countryCode',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="mobileNumber">Mobile number<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="mobileNumber" name="mobileNumber" value="<?php if(isset($mobileNumber)) echo $mobileNumber; ?><?php echo set_value('mobileNumber'); ?>" type="text" placeholder="" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('mobileNumber',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group  row">
                    <label class="col-sm-2 col-form-label" for="emailAddress">Email address<span class="required">*</span></label>
                    <div class="col-sm-5">
                        <input id="emailAddress" name="emailAddress" value="<?php if(isset($emailAddress)) echo $emailAddress; ?><?php echo set_value('emailAddress'); ?>" type="text" placeholder="" class="form-control input-md" required="">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('emailAddress',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Button -->
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
            url: '<?php echo base_url('Home') ?>/getcountriescode',
            success: function (data) {
//                    console.log(data);
                var json = JSON.parse(data);
//                console.log(json.Countries);
                var propertytype = '<option value="0">--Select Country Code--</option>';
                var isChecked = "";
                for (var i = 0; i < json.Countries.length; i++)
                {
                    <?php if(isset($countryCode)){ ?>
                        if(<?php echo $countryCode;?> == json.Countries[i].countryCode){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                    propertytype += '<option value="' + json.Countries[i].countryCode + '" '+isChecked+'>' + json.Countries[i].countryCode + '&nbsp;' + json.Countries[i].countryName + '</option>';
                }
                $("select#countryCode").html(propertytype);
            }
        });
    });
</script>