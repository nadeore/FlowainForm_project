<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Upload Documents</h5>
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
                  <form role="form" name="" class="form-horizontal" action="<?php echo site_url('Home/addUploadDoc/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data">
                      
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="transcript9th">9th Standard Transcript<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="transcript9th" name="transcript9th" class="input-file" type="file" required="">
                        <p download><?php if(isset($transcript9th)) echo $transcript9th; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="transcript10th">10th Standard Transcript<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="transcript10th" name="transcript10th" class="input-file" type="file" required="">
                        <p download><?php if(isset($transcript10th)) echo $transcript10th; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="transcript11th">11th Standard Transcript<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="transcript11th" name="transcript11th" class="input-file" type="file" required="">
                        <p download><?php if(isset($transcript11th)) echo $transcript11th; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="transcript12th">12th Standard Transcript<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="transcript12th" name="transcript12th" class="input-file" type="file" required="">
                        <p download><?php if(isset($transcript12th)) echo $transcript12th; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="lor1">Letter of Recommendation:1<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="lor1" name="lor1" class="input-file" type="file" required="">
                        <p download><?php if(isset($lor1)) echo $lor1; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="lor2">Letter of Recommendation:2<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="lor2" name="lor2" class="input-file" type="file" required="">
                        <p download><?php if(isset($lor2)) echo $lor2; ?></p>
                    </div>
                </div>
                
                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="lor3">Letter of Recommendation:3<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="lor3" name="lor3" class="input-file" type="file" required="">
                        <p download><?php if(isset($lor3)) echo $lor3; ?></p>
                    </div>
                </div>
                      
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="singlebutton"></label>
                    <div class="col-sm-5">
                        <input type="submit" id="singlebutton" name="savecontinue" class="btn btn-primary" value="Save and Continue"> 
                    </div>
                </div>
                <div style="border:1px solid black;">
                <p style="text-align:right">Please Note that you will have to re upload the documents if you want to edit the form.</p>
                <p style="text-align:right">You can add multiple records using this form, to do so you need to refill this form and then save and continue.(PS: does not apply to Edit view)</p>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('Home') ?>/schoolName',
            success: function (data) {
                var json = JSON.parse(data);
//                console.log(json);
                var propertytype = '<option value="0">--Select School--</option>';
                for (var i = 0; i < json.school.length; i++)
                {
                    propertytype += '<option value="' + json.school[i].schoolName + '">' + json.school[i].schoolName + '</option>';
                }
                $("select#schoolName").html(propertytype);
            }
        });
    });
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>