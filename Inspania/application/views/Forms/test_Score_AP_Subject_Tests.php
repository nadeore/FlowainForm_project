<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Test Score AP  Subject Tests</h5>
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
                <form role="form" name="Test_Score_AP_Subject_Tests" class="form-horizontal" action="<?php echo site_url('Home/addTest_Score_AP_Subject_Tests/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data">

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="testDate">Date you took the test<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="testDate" name="testDate" type="date" placeholder="" class="form-control input-md" required="" value="<?php if (isset($testDate)) echo $testDate; ?><?php echo set_value('testDate'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('testDate',"<p class='text-danger'>","</p>");?>
		            </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="subject">Subject<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="APsubjectName" name="subject" class="form-control">
                            <!--                    <option>--Select Subject--</option>
                                                <option value="10">Subject</option>-->
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('subject',"<p class='text-danger'>","</p>");?>
		            </div>
                </div>
                
                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="score">Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="score" name="score" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($score) && $score == '1') echo  "selected=selected"?> value="1" <?php echo set_select('score','1'); ?>>1</option>
                            <option <?php if(isset($score) && $score == '2') echo  "selected=selected"?> value="2" <?php echo set_select('score','2'); ?>>2</option>
                            <option <?php if(isset($score) && $score == '3') echo  "selected=selected"?> value="3" <?php echo set_select('score','3'); ?>>3</option>
                            <option <?php if(isset($score) && $score == '4') echo  "selected=selected"?> value="4" <?php echo set_select('score','4'); ?>>4</option>
                            <option <?php if(isset($score) && $score == '5') echo  "selected=selected"?> value="5" <?php echo set_select('score','5'); ?>>5</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('score',"<p class='text-danger'>","</p>");?>
		            </div>
                </div>

                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="scoreCard">Upload a PDF of your Score Report<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="scoreCard" name="scoreCard" class="input-file" type="file" required="">
                        <p download><?php if(isset($scoreCard)) echo $scoreCard; ?></p>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="singlebutton"></label>
                    <div class="col-sm-5">
                        <input type="submit" id="singlebutton" name="savecontinue" class="btn btn-primary" value="Save and Continue"> 
                    </div>
                </div>
                <div style="border:1px solid black;">
                <p style="text-align:right">Please Note that you will have to re upload the documents if you want to edit the form.&nbsp&nbsp</p>
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
            url: '<?php echo base_url('Home') ?>/APsubjectName',
            success: function (data) {
                var json = JSON.parse(data);
//                console.log(json);
                var propertytype = '<option value="0">--Select AP Subjects--</option>';
                var isChecked="";
                for (var i = 0; i < json.APsubjectName.length; i++)
                {   
                    <?php if(isset($subject)){ ?>
                        if(<?php echo $subject;?> == json.APsubjectName[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                    propertytype += '<option value="' + json.APsubjectName[i].id + '" '+isChecked+'>' + json.APsubjectName[i].APsubjectName + '</option>';
                }
                $("select#APsubjectName").html(propertytype);
            }
        });
    });
</script>
