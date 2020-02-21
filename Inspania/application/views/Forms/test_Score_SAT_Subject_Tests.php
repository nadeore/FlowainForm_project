<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Test Score SAT Subject Tests</h5>
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
                <form role="form" name="" class="form-horizontal" action="<?php echo site_url('Home/addTest_Score_SAT_Subject_Tests/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data">

                <!-- Text input-->
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
                        <select id="subjectName" name="subject" class="form-control">
                            <!--                    <option>--Select Subject--</option>
                                                <option value="5">Subject</option>-->
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
                            <option <?php if(isset($score) && $score == '200') echo  "selected=selected"?> value="200" <?php echo set_select('score','200'); ?>>200</option>
                            <option <?php if(isset($score) && $score == '210') echo  "selected=selected"?> value="210" <?php echo set_select('score','210'); ?>>210</option>
                            <option <?php if(isset($score) && $score == '220') echo  "selected=selected"?> value="220" <?php echo set_select('score','220'); ?>>220</option>
                            <option <?php if(isset($score) && $score == '230') echo  "selected=selected"?> value="230" <?php echo set_select('score','230'); ?>>230</option>
                            <option <?php if(isset($score) && $score == '240') echo  "selected=selected"?> value="240" <?php echo set_select('score','240'); ?>>240</option>
                            <option <?php if(isset($score) && $score == '250') echo  "selected=selected"?> value="250" <?php echo set_select('score','250'); ?>>250</option>
                            <option <?php if(isset($score) && $score == '260') echo  "selected=selected"?> value="260" <?php echo set_select('score','260'); ?>>260</option>
                            <option <?php if(isset($score) && $score == '270') echo  "selected=selected"?> value="270" <?php echo set_select('score','270'); ?>>270</option>
                            <option <?php if(isset($score) && $score == '280') echo  "selected=selected"?> value="280" <?php echo set_select('score','280'); ?>>280</option>
                            <option <?php if(isset($score) && $score == '290') echo  "selected=selected"?> value="290" <?php echo set_select('score','290'); ?>>290</option>
                            <option <?php if(isset($score) && $score == '300') echo  "selected=selected"?> value="300" <?php echo set_select('score','300'); ?>>300</option>
                            <option <?php if(isset($score) && $score == '310') echo  "selected=selected"?> value="310" <?php echo set_select('score','310'); ?>>310</option>
                            <option <?php if(isset($score) && $score == '320') echo  "selected=selected"?> value="320" <?php echo set_select('score','320'); ?>>320</option>
                            <option <?php if(isset($score) && $score == '330') echo  "selected=selected"?> value="330" <?php echo set_select('score','330'); ?>>330</option>
                            <option <?php if(isset($score) && $score == '340') echo  "selected=selected"?> value="340" <?php echo set_select('score','340'); ?>>340</option>
                            <option <?php if(isset($score) && $score == '350') echo  "selected=selected"?> value="350" <?php echo set_select('score','350'); ?>>350</option>
                            <option <?php if(isset($score) && $score == '360') echo  "selected=selected"?> value="360" <?php echo set_select('score','360'); ?>>360</option>
                            <option <?php if(isset($score) && $score == '370') echo  "selected=selected"?> value="370" <?php echo set_select('score','370'); ?>>370</option>
                            <option <?php if(isset($score) && $score == '380') echo  "selected=selected"?> value="380" <?php echo set_select('score','380'); ?>>380</option>
                            <option <?php if(isset($score) && $score == '390') echo  "selected=selected"?> value="390" <?php echo set_select('score','390'); ?>>390</option>
                            <option <?php if(isset($score) && $score == '400') echo  "selected=selected"?> value="400" <?php echo set_select('score','400'); ?>>400</option>
                            <option <?php if(isset($score) && $score == '410') echo  "selected=selected"?> value="410" <?php echo set_select('score','410'); ?>>410</option>
                            <option <?php if(isset($score) && $score == '420') echo  "selected=selected"?> value="420" <?php echo set_select('score','420'); ?>>420</option>
                            <option <?php if(isset($score) && $score == '430') echo  "selected=selected"?> value="430" <?php echo set_select('score','430'); ?>>430</option>
                            <option <?php if(isset($score) && $score == '440') echo  "selected=selected"?> value="440" <?php echo set_select('score','440'); ?>>440</option>
                            <option <?php if(isset($score) && $score == '450') echo  "selected=selected"?> value="450" <?php echo set_select('score','450'); ?>>450</option>
                            <option <?php if(isset($score) && $score == '460') echo  "selected=selected"?> value="460" <?php echo set_select('score','460'); ?>>460</option>
                            <option <?php if(isset($score) && $score == '470') echo  "selected=selected"?> value="470" <?php echo set_select('score','470'); ?>>470</option>
                            <option <?php if(isset($score) && $score == '480') echo  "selected=selected"?> value="480" <?php echo set_select('score','480'); ?>>480</option>
                            <option <?php if(isset($score) && $score == '490') echo  "selected=selected"?> value="490" <?php echo set_select('score','490'); ?>>490</option>
                            <option <?php if(isset($score) && $score == '500') echo  "selected=selected"?> value="500" <?php echo set_select('score','500'); ?>>500</option>
                            <option <?php if(isset($score) && $score == '510') echo  "selected=selected"?> value="510" <?php echo set_select('score','510'); ?>>510</option>
                            <option <?php if(isset($score) && $score == '520') echo  "selected=selected"?> value="520" <?php echo set_select('score','520'); ?>>520</option>
                            <option <?php if(isset($score) && $score == '530') echo  "selected=selected"?> value="530" <?php echo set_select('score','530'); ?>>530</option>
                            <option <?php if(isset($score) && $score == '540') echo  "selected=selected"?> value="540" <?php echo set_select('score','540'); ?>>540</option>
                            <option <?php if(isset($score) && $score == '550') echo  "selected=selected"?> value="550" <?php echo set_select('score','550'); ?>>550</option>
                            <option <?php if(isset($score) && $score == '560') echo  "selected=selected"?> value="560" <?php echo set_select('score','560'); ?>>560</option>
                            <option <?php if(isset($score) && $score == '570') echo  "selected=selected"?> value="570" <?php echo set_select('score','570'); ?>>570</option>
                            <option <?php if(isset($score) && $score == '580') echo  "selected=selected"?> value="580" <?php echo set_select('score','580'); ?>>580</option>
                            <option <?php if(isset($score) && $score == '590') echo  "selected=selected"?> value="590" <?php echo set_select('score','590'); ?>>590</option>
                            <option <?php if(isset($score) && $score == '600') echo  "selected=selected"?> value="600" <?php echo set_select('score','600'); ?>>600</option>
                            <option <?php if(isset($score) && $score == '610') echo  "selected=selected"?> value="610" <?php echo set_select('score','610'); ?>>610</option>
                            <option <?php if(isset($score) && $score == '620') echo  "selected=selected"?> value="620" <?php echo set_select('score','620'); ?>>620</option>
                            <option <?php if(isset($score) && $score == '630') echo  "selected=selected"?> value="630" <?php echo set_select('score','630'); ?>>630</option>
                            <option <?php if(isset($score) && $score == '640') echo  "selected=selected"?> value="640" <?php echo set_select('score','640'); ?>>640</option>
                            <option <?php if(isset($score) && $score == '650') echo  "selected=selected"?> value="650" <?php echo set_select('score','650'); ?>>650</option>
                            <option <?php if(isset($score) && $score == '660') echo  "selected=selected"?> value="660" <?php echo set_select('score','660'); ?>>660</option>
                            <option <?php if(isset($score) && $score == '670') echo  "selected=selected"?> value="670" <?php echo set_select('score','670'); ?>>670</option>
                            <option <?php if(isset($score) && $score == '680') echo  "selected=selected"?> value="680" <?php echo set_select('score','680'); ?>>680</option>
                            <option <?php if(isset($score) && $score == '690') echo  "selected=selected"?> value="690" <?php echo set_select('score','690'); ?>>690</option>
                            <option <?php if(isset($score) && $score == '700') echo  "selected=selected"?> value="700" <?php echo set_select('score','700'); ?>>700</option>
                            <option <?php if(isset($score) && $score == '710') echo  "selected=selected"?> value="710" <?php echo set_select('score','710'); ?>>710</option>
                            <option <?php if(isset($score) && $score == '720') echo  "selected=selected"?> value="720" <?php echo set_select('score','720'); ?>>720</option>
                            <option <?php if(isset($score) && $score == '730') echo  "selected=selected"?> value="730" <?php echo set_select('score','730'); ?>>730</option>
                            <option <?php if(isset($score) && $score == '740') echo  "selected=selected"?> value="740" <?php echo set_select('score','740'); ?>>740</option>
                            <option <?php if(isset($score) && $score == '750') echo  "selected=selected"?> value="750" <?php echo set_select('score','750'); ?>>750</option>
                            <option <?php if(isset($score) && $score == '760') echo  "selected=selected"?> value="760" <?php echo set_select('score','760'); ?>>760</option>
                            <option <?php if(isset($score) && $score == '770') echo  "selected=selected"?> value="770" <?php echo set_select('score','770'); ?>>770</option>
                            <option <?php if(isset($score) && $score == '780') echo  "selected=selected"?> value="780" <?php echo set_select('score','780'); ?>>780</option>
                            <option <?php if(isset($score) && $score == '790') echo  "selected=selected"?> value="790" <?php echo set_select('score','790'); ?>>790</option>
                            <option <?php if(isset($score) && $score == '800') echo  "selected=selected"?> value="800" <?php echo set_select('score','800'); ?>>800</option>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('Home') ?>/subjectName',
            success: function (data) {
                var json = JSON.parse(data);
//                console.log(json);
                var propertytype = '<option value="0">--Select Subjects--</option>';
                var isChecked = "";
                for (var i = 0; i < json.subjectName.length; i++)
                {
                    <?php if(isset($subject)){ ?>
                        if(<?php echo $subject;?> == json.subjectName[i].id){
                         isChecked="selected=selected"; 
                        }else{
                            isChecked="";
                        }   
                    <?php } ?> 
                    propertytype += '<option value="' + json.subjectName[i].id + '" '+isChecked+'>' + json.subjectName[i].subjectName + '</option>';
                }
                $("select#subjectName").html(propertytype);
            }
        });
    });
</script>
