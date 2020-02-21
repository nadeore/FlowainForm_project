<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Test Score TOEFL iBT</h5>
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
                 <form role="form" name="" class="form-horizontal" action="<?php echo site_url('Home/addTest_Score_TOEFL_iBT/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data">

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
                    <label class="col-sm-2 col-form-label" for="readingScore">Reading Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="readingScore" name="readingScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($readingScore) && $readingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('readingScore','1'); ?>>1</option>
                            <option <?php if(isset($readingScore) && $readingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('readingScore','2'); ?>>2</option>
                            <option <?php if(isset($readingScore) && $readingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('readingScore','3'); ?>>3</option>
                            <option <?php if(isset($readingScore) && $readingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('readingScore','4'); ?>>4</option>
                            <option <?php if(isset($readingScore) && $readingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('readingScore','5'); ?>>5</option>
                            <option <?php if(isset($readingScore) && $readingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('readingScore','6'); ?>>6</option>
                            <option <?php if(isset($readingScore) && $readingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('readingScore','7'); ?>>7</option>
                            <option <?php if(isset($readingScore) && $readingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('readingScore','8'); ?>>8</option>
                            <option <?php if(isset($readingScore) && $readingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('readingScore','9'); ?>>9</option>
                            <option <?php if(isset($readingScore) && $readingScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('readingScore','10'); ?>>10</option>
                            <option <?php if(isset($readingScore) && $readingScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('readingScore','11'); ?>>11</option>
                            <option <?php if(isset($readingScore) && $readingScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('readingScore','12'); ?>>12</option>
                            <option <?php if(isset($readingScore) && $readingScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('readingScore','13'); ?>>13</option>
                            <option <?php if(isset($readingScore) && $readingScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('readingScore','14'); ?>>14</option>
                            <option <?php if(isset($readingScore) && $readingScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('readingScore','15'); ?>>15</option>
                            <option <?php if(isset($readingScore) && $readingScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('readingScore','16'); ?>>16</option>
                            <option <?php if(isset($readingScore) && $readingScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('readingScore','17'); ?>>17</option>
                            <option <?php if(isset($readingScore) && $readingScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('readingScore','18'); ?>>18</option>
                            <option <?php if(isset($readingScore) && $readingScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('readingScore','19'); ?>>19</option>
                            <option <?php if(isset($readingScore) && $readingScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('readingScore','20'); ?>>20</option>
                            <option <?php if(isset($readingScore) && $readingScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('readingScore','21'); ?>>21</option>
                            <option <?php if(isset($readingScore) && $readingScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('readingScore','22'); ?>>22</option>
                            <option <?php if(isset($readingScore) && $readingScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('readingScore','23'); ?>>23</option>
                            <option <?php if(isset($readingScore) && $readingScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('readingScore','24'); ?>>24</option>
                            <option <?php if(isset($readingScore) && $readingScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('readingScore','25'); ?>>25</option>
                            <option <?php if(isset($readingScore) && $readingScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('readingScore','26'); ?>>26</option>
                            <option <?php if(isset($readingScore) && $readingScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('readingScore','27'); ?>>27</option>
                            <option <?php if(isset($readingScore) && $readingScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('readingScore','28'); ?>>28</option>
                            <option <?php if(isset($readingScore) && $readingScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('readingScore','29'); ?>>29</option>
                            <option <?php if(isset($readingScore) && $readingScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('readingScore','30'); ?>>30</option>
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
                            <option <?php if(isset($listeningScore) && $listeningScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('listeningScore','1'); ?>>1</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('listeningScore','2'); ?>>2</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('listeningScore','3'); ?>>3</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('listeningScore','4'); ?>>4</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('listeningScore','5'); ?>>5</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('listeningScore','6'); ?>>6</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('listeningScore','7'); ?>>7</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('listeningScore','8'); ?>>8</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('listeningScore','9'); ?>>9</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('listeningScore','10'); ?>>10</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('listeningScore','11'); ?>>11</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('listeningScore','12'); ?>>12</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('listeningScore','13'); ?>>13</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('listeningScore','14'); ?>>14</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('listeningScore','15'); ?>>15</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('listeningScore','16'); ?>>16</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('listeningScore','17'); ?>>17</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('listeningScore','18'); ?>>18</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('listeningScore','19'); ?>>19</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('listeningScore','20'); ?>>20</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('listeningScore','21'); ?>>21</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('listeningScore','22'); ?>>22</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('listeningScore','23'); ?>>23</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('listeningScore','24'); ?>>24</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('listeningScore','25'); ?>>25</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('listeningScore','26'); ?>>26</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('listeningScore','27'); ?>>27</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('listeningScore','28'); ?>>28</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('listeningScore','29'); ?>>29</option>
                            <option <?php if(isset($listeningScore) && $listeningScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('listeningScore','30'); ?>>30</option>
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
                            <option <?php if(isset($speakingScore) && $speakingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('speakingScore','1'); ?>>1</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('speakingScore','2'); ?>>2</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('speakingScore','3'); ?>>3</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('speakingScore','4'); ?>>4</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('speakingScore','5'); ?>>5</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('speakingScore','6'); ?>>6</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('speakingScore','7'); ?>>7</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('speakingScore','8'); ?>>8</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('speakingScore','9'); ?>>9</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('speakingScore','10'); ?>>10</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('speakingScore','11'); ?>>11</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('speakingScore','12'); ?>>12</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('speakingScore','13'); ?>>13</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('speakingScore','14'); ?>>14</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('speakingScore','15'); ?>>15</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('speakingScore','16'); ?>>16</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('speakingScore','17'); ?>>17</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('speakingScore','18'); ?>>18</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('speakingScore','19'); ?>>19</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('speakingScore','20'); ?>>20</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('speakingScore','21'); ?>>21</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('speakingScore','22'); ?>>22</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('speakingScore','23'); ?>>23</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('speakingScore','24'); ?>>24</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('speakingScore','25'); ?>>25</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('speakingScore','26'); ?>>26</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('speakingScore','27'); ?>>27</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('speakingScore','28'); ?>>28</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('speakingScore','29'); ?>>29</option>
                            <option <?php if(isset($speakingScore) && $speakingScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('speakingScore','30'); ?>>30</option>
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
                            <option <?php if(isset($writingScore) && $writingScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('writingScore','1'); ?>>1</option>
                            <option <?php if(isset($writingScore) && $writingScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('writingScore','2'); ?>>2</option>
                            <option <?php if(isset($writingScore) && $writingScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('writingScore','3'); ?>>3</option>
                            <option <?php if(isset($writingScore) && $writingScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('writingScore','4'); ?>>4</option>
                            <option <?php if(isset($writingScore) && $writingScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('writingScore','5'); ?>>5</option>
                            <option <?php if(isset($writingScore) && $writingScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('writingScore','6'); ?>>6</option>
                            <option <?php if(isset($writingScore) && $writingScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('writingScore','7'); ?>>7</option>
                            <option <?php if(isset($writingScore) && $writingScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('writingScore','8'); ?>>8</option>
                            <option <?php if(isset($writingScore) && $writingScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('writingScore','9'); ?>>9</option>
                            <option <?php if(isset($writingScore) && $writingScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('writingScore','10'); ?>>10</option>
                            <option <?php if(isset($writingScore) && $writingScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('writingScore','11'); ?>>11</option>
                            <option <?php if(isset($writingScore) && $writingScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('writingScore','12'); ?>>12</option>
                            <option <?php if(isset($writingScore) && $writingScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('writingScore','13'); ?>>13</option>
                            <option <?php if(isset($writingScore) && $writingScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('writingScore','14'); ?>>14</option>
                            <option <?php if(isset($writingScore) && $writingScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('writingScore','15'); ?>>15</option>
                            <option <?php if(isset($writingScore) && $writingScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('writingScore','16'); ?>>16</option>
                            <option <?php if(isset($writingScore) && $writingScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('writingScore','17'); ?>>17</option>
                            <option <?php if(isset($writingScore) && $writingScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('writingScore','18'); ?>>18</option>
                            <option <?php if(isset($writingScore) && $writingScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('writingScore','19'); ?>>19</option>
                            <option <?php if(isset($writingScore) && $writingScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('writingScore','20'); ?>>20</option>
                            <option <?php if(isset($writingScore) && $writingScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('writingScore','21'); ?>>21</option>
                            <option <?php if(isset($writingScore) && $writingScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('writingScore','22'); ?>>22</option>
                            <option <?php if(isset($writingScore) && $writingScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('writingScore','23'); ?>>23</option>
                            <option <?php if(isset($writingScore) && $writingScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('writingScore','24'); ?>>24</option>
                            <option <?php if(isset($writingScore) && $writingScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('writingScore','25'); ?>>25</option>
                            <option <?php if(isset($writingScore) && $writingScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('writingScore','26'); ?>>26</option>
                            <option <?php if(isset($writingScore) && $writingScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('writingScore','27'); ?>>27</option>
                            <option <?php if(isset($writingScore) && $writingScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('writingScore','28'); ?>>28</option>
                            <option <?php if(isset($writingScore) && $writingScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('writingScore','29'); ?>>29</option>
                            <option <?php if(isset($writingScore) && $writingScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('writingScore','30'); ?>>30</option>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>
