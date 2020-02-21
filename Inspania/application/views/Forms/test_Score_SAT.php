<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>SAT Test Score</h5>
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
            <form role="form" name="Test_Score_SAT_form" class="form-horizontal" action="<?php echo site_url('Home/addScoreSAT/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data" >

                <!-- Text input-->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="testDate">Test Date<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="testDate" name="testDate" type="date" placeholder="Date you took the test" class="form-control input-md" required="" value="<?php if(isset($testDate)) echo $testDate; ?><?php echo set_value('testDate'); ?>">
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('testDate',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>
                
                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="verbalScore">Evidence-based reading and writing score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="verbalScore" name="verbalScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '200') echo  "selected=selected"?> value="200" <?php echo set_select('verbalScore','200'); ?>>200</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '210') echo  "selected=selected"?> value="210" <?php echo set_select('verbalScore','210'); ?>>210</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '220') echo  "selected=selected"?> value="220" <?php echo set_select('verbalScore','220'); ?>>220</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '230') echo  "selected=selected"?> value="230" <?php echo set_select('verbalScore','230'); ?>>230</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '240') echo  "selected=selected"?> value="240" <?php echo set_select('verbalScore','240'); ?>>240</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '250') echo  "selected=selected"?> value="250" <?php echo set_select('verbalScore','250'); ?>>250</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '260') echo  "selected=selected"?> value="260" <?php echo set_select('verbalScore','260'); ?>>260</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '270') echo  "selected=selected"?> value="270" <?php echo set_select('verbalScore','270'); ?>>270</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '280') echo  "selected=selected"?> value="280" <?php echo set_select('verbalScore','280'); ?>>280</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '290') echo  "selected=selected"?> value="290" <?php echo set_select('verbalScore','290'); ?>>290</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '300') echo  "selected=selected"?> value="300" <?php echo set_select('verbalScore','300'); ?>>300</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '310') echo  "selected=selected"?> value="310" <?php echo set_select('verbalScore','310'); ?>>310</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '320') echo  "selected=selected"?> value="320" <?php echo set_select('verbalScore','320'); ?>>320</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '330') echo  "selected=selected"?> value="330" <?php echo set_select('verbalScore','330'); ?>>330</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '340') echo  "selected=selected"?> value="340" <?php echo set_select('verbalScore','340'); ?>>340</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '350') echo  "selected=selected"?> value="350" <?php echo set_select('verbalScore','350'); ?>>350</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '360') echo  "selected=selected"?> value="360" <?php echo set_select('verbalScore','360'); ?>>360</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '370') echo  "selected=selected"?> value="370" <?php echo set_select('verbalScore','370'); ?>>370</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '380') echo  "selected=selected"?> value="380" <?php echo set_select('verbalScore','380'); ?>>380</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '390') echo  "selected=selected"?> value="390" <?php echo set_select('verbalScore','390'); ?>>390</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '400') echo  "selected=selected"?> value="400" <?php echo set_select('verbalScore','400'); ?>>400</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '410') echo  "selected=selected"?> value="410" <?php echo set_select('verbalScore','410'); ?>>410</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '420') echo  "selected=selected"?> value="420" <?php echo set_select('verbalScore','420'); ?>>420</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '430') echo  "selected=selected"?> value="430" <?php echo set_select('verbalScore','430'); ?>>430</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '440') echo  "selected=selected"?> value="440" <?php echo set_select('verbalScore','440'); ?>>440</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '450') echo  "selected=selected"?> value="450" <?php echo set_select('verbalScore','450'); ?>>450</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '460') echo  "selected=selected"?> value="460" <?php echo set_select('verbalScore','460'); ?>>460</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '470') echo  "selected=selected"?> value="470" <?php echo set_select('verbalScore','470'); ?>>470</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '480') echo  "selected=selected"?> value="480" <?php echo set_select('verbalScore','480'); ?>>480</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '490') echo  "selected=selected"?> value="490" <?php echo set_select('verbalScore','490'); ?>>490</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '500') echo  "selected=selected"?> value="500" <?php echo set_select('verbalScore','500'); ?>>500</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '510') echo  "selected=selected"?> value="510" <?php echo set_select('verbalScore','510'); ?>>510</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '520') echo  "selected=selected"?> value="520" <?php echo set_select('verbalScore','520'); ?>>520</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '530') echo  "selected=selected"?> value="530" <?php echo set_select('verbalScore','530'); ?>>530</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '540') echo  "selected=selected"?> value="540" <?php echo set_select('verbalScore','540'); ?>>540</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '550') echo  "selected=selected"?> value="550" <?php echo set_select('verbalScore','550'); ?>>550</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '560') echo  "selected=selected"?> value="560" <?php echo set_select('verbalScore','560'); ?>>560</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '570') echo  "selected=selected"?> value="570" <?php echo set_select('verbalScore','570'); ?>>570</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '580') echo  "selected=selected"?> value="580" <?php echo set_select('verbalScore','580'); ?>>580</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '590') echo  "selected=selected"?> value="590" <?php echo set_select('verbalScore','590'); ?>>590</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '600') echo  "selected=selected"?> value="600" <?php echo set_select('verbalScore','600'); ?>>600</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '610') echo  "selected=selected"?> value="610" <?php echo set_select('verbalScore','610'); ?>>610</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '620') echo  "selected=selected"?> value="620" <?php echo set_select('verbalScore','620'); ?>>620</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '630') echo  "selected=selected"?> value="630" <?php echo set_select('verbalScore','630'); ?>>630</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '640') echo  "selected=selected"?> value="640" <?php echo set_select('verbalScore','640'); ?>>640</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '650') echo  "selected=selected"?> value="650" <?php echo set_select('verbalScore','650'); ?>>650</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '660') echo  "selected=selected"?> value="660" <?php echo set_select('verbalScore','660'); ?>>660</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '670') echo  "selected=selected"?> value="670" <?php echo set_select('verbalScore','670'); ?>>670</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '680') echo  "selected=selected"?> value="680" <?php echo set_select('verbalScore','680'); ?>>680</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '690') echo  "selected=selected"?> value="690" <?php echo set_select('verbalScore','690'); ?>>690</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '700') echo  "selected=selected"?> value="700" <?php echo set_select('verbalScore','700'); ?>>700</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '710') echo  "selected=selected"?> value="710" <?php echo set_select('verbalScore','710'); ?>>710</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '720') echo  "selected=selected"?> value="720" <?php echo set_select('verbalScore','720'); ?>>720</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '730') echo  "selected=selected"?> value="730" <?php echo set_select('verbalScore','730'); ?>>730</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '740') echo  "selected=selected"?> value="740" <?php echo set_select('verbalScore','740'); ?>>740</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '750') echo  "selected=selected"?> value="750" <?php echo set_select('verbalScore','750'); ?>>750</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '760') echo  "selected=selected"?> value="760" <?php echo set_select('verbalScore','760'); ?>>760</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '770') echo  "selected=selected"?> value="770" <?php echo set_select('verbalScore','770'); ?>>770</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '780') echo  "selected=selected"?> value="780" <?php echo set_select('verbalScore','780'); ?>>780</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '790') echo  "selected=selected"?> value="790" <?php echo set_select('verbalScore','790'); ?>>790</option>
                            <option <?php if(isset($verbalScore) && $verbalScore == '800') echo  "selected=selected"?> value="800" <?php echo set_select('verbalScore','800'); ?>>800</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('verbalScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="quantsScore">Math score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="quantsScore" name="quantsScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '200') echo  "selected=selected"?> value="200" <?php echo set_select('quantsScore','200'); ?>>200</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '210') echo  "selected=selected"?> value="210" <?php echo set_select('quantsScore','210'); ?>>210</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '220') echo  "selected=selected"?> value="220" <?php echo set_select('quantsScore','220'); ?>>220</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '230') echo  "selected=selected"?> value="230" <?php echo set_select('quantsScore','230'); ?>>230</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '240') echo  "selected=selected"?> value="240" <?php echo set_select('quantsScore','240'); ?>>240</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '250') echo  "selected=selected"?> value="250" <?php echo set_select('quantsScore','250'); ?>>250</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '260') echo  "selected=selected"?> value="260" <?php echo set_select('quantsScore','260'); ?>>260</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '270') echo  "selected=selected"?> value="270" <?php echo set_select('quantsScore','270'); ?>>270</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '280') echo  "selected=selected"?> value="280" <?php echo set_select('quantsScore','280'); ?>>280</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '290') echo  "selected=selected"?> value="290" <?php echo set_select('quantsScore','290'); ?>>290</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '300') echo  "selected=selected"?> value="300" <?php echo set_select('quantsScore','300'); ?>>300</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '310') echo  "selected=selected"?> value="310" <?php echo set_select('quantsScore','310'); ?>>310</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '320') echo  "selected=selected"?> value="320" <?php echo set_select('quantsScore','320'); ?>>320</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '330') echo  "selected=selected"?> value="330" <?php echo set_select('quantsScore','330'); ?>>330</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '340') echo  "selected=selected"?> value="340" <?php echo set_select('quantsScore','340'); ?>>340</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '350') echo  "selected=selected"?> value="350" <?php echo set_select('quantsScore','350'); ?>>350</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '360') echo  "selected=selected"?> value="360" <?php echo set_select('quantsScore','360'); ?>>360</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '370') echo  "selected=selected"?> value="370" <?php echo set_select('quantsScore','370'); ?>>370</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '380') echo  "selected=selected"?> value="380" <?php echo set_select('quantsScore','380'); ?>>380</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '390') echo  "selected=selected"?> value="390" <?php echo set_select('quantsScore','390'); ?>>390</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '400') echo  "selected=selected"?> value="400" <?php echo set_select('quantsScore','400'); ?>>400</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '410') echo  "selected=selected"?> value="410" <?php echo set_select('quantsScore','410'); ?>>410</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '420') echo  "selected=selected"?> value="420" <?php echo set_select('quantsScore','420'); ?>>420</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '430') echo  "selected=selected"?> value="430" <?php echo set_select('quantsScore','430'); ?>>430</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '440') echo  "selected=selected"?> value="440" <?php echo set_select('quantsScore','440'); ?>>440</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '450') echo  "selected=selected"?> value="450" <?php echo set_select('quantsScore','450'); ?>>450</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '460') echo  "selected=selected"?> value="460" <?php echo set_select('quantsScore','460'); ?>>460</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '470') echo  "selected=selected"?> value="470" <?php echo set_select('quantsScore','470'); ?>>470</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '480') echo  "selected=selected"?> value="480" <?php echo set_select('quantsScore','480'); ?>>480</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '490') echo  "selected=selected"?> value="490" <?php echo set_select('quantsScore','490'); ?>>490</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '500') echo  "selected=selected"?> value="500" <?php echo set_select('quantsScore','500'); ?>>500</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '510') echo  "selected=selected"?> value="510" <?php echo set_select('quantsScore','510'); ?>>510</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '520') echo  "selected=selected"?> value="520" <?php echo set_select('quantsScore','520'); ?>>520</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '530') echo  "selected=selected"?> value="530" <?php echo set_select('quantsScore','530'); ?>>530</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '540') echo  "selected=selected"?> value="540" <?php echo set_select('quantsScore','540'); ?>>540</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '550') echo  "selected=selected"?> value="550" <?php echo set_select('quantsScore','550'); ?>>550</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '560') echo  "selected=selected"?> value="560" <?php echo set_select('quantsScore','560'); ?>>560</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '570') echo  "selected=selected"?> value="570" <?php echo set_select('quantsScore','570'); ?>>570</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '580') echo  "selected=selected"?> value="580" <?php echo set_select('quantsScore','580'); ?>>580</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '590') echo  "selected=selected"?> value="590" <?php echo set_select('quantsScore','590'); ?>>590</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '600') echo  "selected=selected"?> value="600" <?php echo set_select('quantsScore','600'); ?>>600</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '610') echo  "selected=selected"?> value="610" <?php echo set_select('quantsScore','610'); ?>>610</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '620') echo  "selected=selected"?> value="620" <?php echo set_select('quantsScore','620'); ?>>620</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '630') echo  "selected=selected"?> value="630" <?php echo set_select('quantsScore','630'); ?>>630</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '640') echo  "selected=selected"?> value="640" <?php echo set_select('quantsScore','640'); ?>>640</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '650') echo  "selected=selected"?> value="650" <?php echo set_select('quantsScore','650'); ?>>650</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '660') echo  "selected=selected"?> value="660" <?php echo set_select('quantsScore','660'); ?>>660</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '670') echo  "selected=selected"?> value="670" <?php echo set_select('quantsScore','670'); ?>>670</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '680') echo  "selected=selected"?> value="680" <?php echo set_select('quantsScore','680'); ?>>680</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '690') echo  "selected=selected"?> value="690" <?php echo set_select('quantsScore','690'); ?>>690</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '700') echo  "selected=selected"?> value="700" <?php echo set_select('quantsScore','700'); ?>>700</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '710') echo  "selected=selected"?> value="710" <?php echo set_select('quantsScore','710'); ?>>710</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '720') echo  "selected=selected"?> value="720" <?php echo set_select('quantsScore','720'); ?>>720</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '730') echo  "selected=selected"?> value="730" <?php echo set_select('quantsScore','730'); ?>>730</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '740') echo  "selected=selected"?> value="740" <?php echo set_select('quantsScore','740'); ?>>740</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '750') echo  "selected=selected"?> value="750" <?php echo set_select('quantsScore','750'); ?>>750</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '760') echo  "selected=selected"?> value="760" <?php echo set_select('quantsScore','760'); ?>>760</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '770') echo  "selected=selected"?> value="770" <?php echo set_select('quantsScore','770'); ?>>770</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '780') echo  "selected=selected"?> value="780" <?php echo set_select('quantsScore','780'); ?>>780</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '790') echo  "selected=selected"?> value="790" <?php echo set_select('quantsScore','790'); ?>>790</option>
                            <option <?php if(isset($quantsScore) && $quantsScore == '800') echo  "selected=selected"?> value="800" <?php echo set_select('quantsScore','800'); ?>>800</option>
                            </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('quantsScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="essayScore">Essay Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="essayScore" name="essayScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($essayScore) && $essayScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('essayScore','6'); ?>>6</option>
                            <option <?php if(isset($essayScore) && $essayScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('essayScore','7'); ?>>7</option>
                            <option <?php if(isset($essayScore) && $essayScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('essayScore','8'); ?>>8</option>
                            <option <?php if(isset($essayScore) && $essayScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('essayScore','9'); ?>>9</option>
                            <option <?php if(isset($essayScore) && $essayScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('essayScore','10'); ?>>10</option>
                            <option <?php if(isset($essayScore) && $essayScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('essayScore','11'); ?>>11</option>
                            <option <?php if(isset($essayScore) && $essayScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('essayScore','12'); ?>>12</option>
                            <option <?php if(isset($essayScore) && $essayScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('essayScore','13'); ?>>13</option>
                            <option <?php if(isset($essayScore) && $essayScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('essayScore','14'); ?>>14</option>
                            <option <?php if(isset($essayScore) && $essayScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('essayScore','15'); ?>>15</option>
                            <option <?php if(isset($essayScore) && $essayScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('essayScore','16'); ?>>16</option>
                            <option <?php if(isset($essayScore) && $essayScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('essayScore','17'); ?>>17</option>
                            <option <?php if(isset($essayScore) && $essayScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('essayScore','18'); ?>>18</option>
                            <option <?php if(isset($essayScore) && $essayScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('essayScore','19'); ?>>19</option>
                            <option <?php if(isset($essayScore) && $essayScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('essayScore','20'); ?>>20</option>
                            <option <?php if(isset($essayScore) && $essayScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('essayScore','21'); ?>>21</option>
                            <option <?php if(isset($essayScore) && $essayScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('essayScore','22'); ?>>22</option>
                            <option <?php if(isset($essayScore) && $essayScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('essayScore','23'); ?>>23</option>
                            <option <?php if(isset($essayScore) && $essayScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('essayScore','24'); ?>>24</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('essayScore',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- File Button -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="scoreCards">Upload a PDF of your Score Report<span class="required">*</span></label>
                    <div class="col-md-5">
                        <input id="scoreCards" name="scoreCard" class="input-file" type="file" required="">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>
