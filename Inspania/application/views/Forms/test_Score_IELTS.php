<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Test Score IELTS</h5>
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
                 <form role="form" name="" class="form-horizontal" action="<?php echo site_url('Home/addTest_Score_IELTS/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data">

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="testDate">Date you took the test<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="testDate" name="testDate" type="date" placeholder="" class="form-control input-md" required="" value="<?php if (isset($testDate)) echo $testDate?><?php echo set_value('testDate'); ?>">

                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('testDate',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>


                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="readingScore">Reading Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="readingScore" name="readingScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($readingScore) && $readingScore == '0') echo  "selected=selected"?> value="0" <?php echo set_select('readingScore','0'); ?>>0</option>
                            <option <?php if(isset($readingScore) && $readingScore == '0.5') echo  "selected=selected"?> value="0.5" <?php echo set_select('readingScore','0.5'); ?>>0.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('readingScore','1'); ?>>1</option>
                            <option <?php if(isset($readingScore) && $readingScore == '1.5') echo  "selected=selected"?> value="1.5" <?php echo set_select('readingScore','1.5'); ?>>1.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('readingScore','2'); ?>>2</option>
                            <option <?php if(isset($readingScore) && $readingScore == '2.5') echo  "selected=selected"?> value="2.5" <?php echo set_select('readingScore','2.5'); ?>>2.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('readingScore','3'); ?>>3</option>
                            <option <?php if(isset($readingScore) && $readingScore == '3.5') echo  "selected=selected"?> value="3.5" <?php echo set_select('readingScore','3.5'); ?>>3.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('readingScore','4'); ?>>4</option>
                            <option <?php if(isset($readingScore) && $readingScore == '4.5') echo  "selected=selected"?> value="4.5" <?php echo set_select('readingScore','4.5'); ?>>4.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('readingScore','5'); ?>>5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '5.5') echo  "selected=selected"?> value="5.5" <?php echo set_select('readingScore','5.5'); ?>>5.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('readingScore','6'); ?>>6</option>
                            <option <?php if(isset($readingScore) && $readingScore == '6.5') echo  "selected=selected"?> value="6.5" <?php echo set_select('readingScore','6.5'); ?>>6.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('readingScore','7'); ?>>7</option>
                            <option <?php if(isset($readingScore) && $readingScore == '7.5') echo  "selected=selected"?> value="7.5" <?php echo set_select('readingScore','7.5'); ?>>7.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('readingScore','8'); ?>>8</option>
                            <option <?php if(isset($readingScore) && $readingScore == '8.5') echo  "selected=selected"?> value="8.5" <?php echo set_select('readingScore','8.5'); ?>>8.5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('readingScore','9'); ?>>9</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('readingScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>


                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="listeningScore">Listening Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="listeningScore" name="listeningScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '0') echo  "selected=selected"?> value="0" <?php echo set_select('listeningScore','0'); ?>>0</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '0.5') echo  "selected=selected"?> value="0.5" <?php echo set_select('listeningScore','0.5'); ?>>0.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('listeningScore','1'); ?>>1</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '1.5') echo  "selected=selected"?> value="1.5" <?php echo set_select('listeningScore','1.5'); ?>>1.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('listeningScore','2'); ?>>2</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '2.5') echo  "selected=selected"?> value="2.5" <?php echo set_select('listeningScore','2.5'); ?>>2.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('listeningScore','3'); ?>>3</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '3.5') echo  "selected=selected"?> value="3.5" <?php echo set_select('listeningScore','3.5'); ?>>3.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('listeningScore','4'); ?>>4</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '4.5') echo  "selected=selected"?> value="4.5" <?php echo set_select('listeningScore','4.5'); ?>>4.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('listeningScore','5'); ?>>5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '5.5') echo  "selected=selected"?> value="5.5" <?php echo set_select('listeningScore','5.5'); ?>>5.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('listeningScore','6'); ?>>6</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '6.5') echo  "selected=selected"?> value="6.5" <?php echo set_select('listeningScore','6.5'); ?>>6.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('listeningScore','7'); ?>>7</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '7.5') echo  "selected=selected"?> value="7.5" <?php echo set_select('listeningScore','7.5'); ?>>7.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('listeningScore','8'); ?>>8</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '8.5') echo  "selected=selected"?> value="8.5" <?php echo set_select('listeningScore','8.5'); ?>>8.5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('listeningScore','9'); ?>>9</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('listeningScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>


                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="speakingScore">Speaking Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="speakingScore" name="speakingScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '0') echo  "selected=selected"?> value="0" <?php echo set_select('speakingScore','0'); ?>>0</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '0.5') echo  "selected=selected"?> value="0.5" <?php echo set_select('speakingScore','0.5'); ?>>0.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('speakingScore','1'); ?>>1</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '1.5') echo  "selected=selected"?> value="1.5" <?php echo set_select('speakingScore','1.5'); ?>>1.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('speakingScore','2'); ?>>2</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '2.5') echo  "selected=selected"?> value="2.5" <?php echo set_select('speakingScore','2.5'); ?>>2.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('speakingScore','3'); ?>>3</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '3.5') echo  "selected=selected"?> value="3.5" <?php echo set_select('speakingScore','3.5'); ?>>3.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('speakingScore','4'); ?>>4</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '4.5') echo  "selected=selected"?> value="4.5" <?php echo set_select('speakingScore','4.5'); ?>>4.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('speakingScore','5'); ?>>5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '5.5') echo  "selected=selected"?> value="5.5" <?php echo set_select('speakingScore','5.5'); ?>>5.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('speakingScore','6'); ?>>6</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '6.5') echo  "selected=selected"?> value="6.5" <?php echo set_select('speakingScore','6.5'); ?>>6.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('speakingScore','7'); ?>>7</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '7.5') echo  "selected=selected"?> value="7.5" <?php echo set_select('speakingScore','7.5'); ?>>7.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('speakingScore','8'); ?>>8</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '8.5') echo  "selected=selected"?> value="8.5" <?php echo set_select('speakingScore','8.5'); ?>>8.5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('speakingScore','9'); ?>>9</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('speakingScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>


                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="writingScore">Writing Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="writingScore" name="writingScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($writingScore) && $writingScore == '0') echo  "selected=selected"?> value="0" <?php echo set_select('writingScore','0'); ?>>0</option>
                            <option <?php if(isset($writingScore) && $writingScore == '0.5') echo  "selected=selected"?> value="0.5" <?php echo set_select('writingScore','0.5'); ?>>0.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('writingScore','1'); ?>>1</option>
                            <option <?php if(isset($writingScore) && $writingScore == '1.5') echo  "selected=selected"?> value="1.5" <?php echo set_select('writingScore','1.5'); ?>>1.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('writingScore','2'); ?>>2</option>
                            <option <?php if(isset($writingScore) && $writingScore == '2.5') echo  "selected=selected"?> value="2.5" <?php echo set_select('writingScore','2.5'); ?>>2.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('writingScore','3'); ?>>3</option>
                            <option <?php if(isset($writingScore) && $writingScore == '3.5') echo  "selected=selected"?> value="3.5" <?php echo set_select('writingScore','3.5'); ?>>3.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('writingScore','4'); ?>>4</option>
                            <option <?php if(isset($writingScore) && $writingScore == '4.5') echo  "selected=selected"?> value="4.5" <?php echo set_select('writingScore','4.5'); ?>>4.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('writingScore','5'); ?>>5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '5.5') echo  "selected=selected"?> value="5.5" <?php echo set_select('writingScore','5.5'); ?>>5.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('writingScore','6'); ?>>6</option>
                            <option <?php if(isset($writingScore) && $writingScore == '6.5') echo  "selected=selected"?> value="6.5" <?php echo set_select('writingScore','6.5'); ?>>6.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('writingScore','7'); ?>>7</option>
                            <option <?php if(isset($writingScore) && $writingScore == '7.5') echo  "selected=selected"?> value="7.5" <?php echo set_select('writingScore','7.5'); ?>>7.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('writingScore','8'); ?>>8</option>
                            <option <?php if(isset($writingScore) && $writingScore == '8.5') echo  "selected=selected"?> value="8.5" <?php echo set_select('writingScore','8.5'); ?>>8.5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('writingScore','9'); ?>>9</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('writingScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="scoreCard">Upload a PDF of your Score Report<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="scoreCard" name="scoreCard" class="input-file" type="file" required="">
                        <p><?php if (isset($scoreCard)) echo $scoreCard; ?></p>
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
