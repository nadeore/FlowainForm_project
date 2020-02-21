<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Test Score ACT</h5>
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
                <form role="form" name="test_Score_ACT" class="form-horizontal" action="<?php echo site_url('Home/addTest_Score_ACT/')?><?php if (isset($id)) echo $id?>" method="post" enctype="multipart/form-data" >
     
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
                    <label class="col-sm-2 col-form-label" for="englishScore">English Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="englishScore" name="englishScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($englishScore) && $englishScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('englishScore','1'); ?>>1</option>
                            <option <?php if(isset($englishScore) && $englishScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('englishScore','2'); ?>>2</option>
                            <option <?php if(isset($englishScore) && $englishScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('englishScore','3'); ?>>3</option>
                            <option <?php if(isset($englishScore) && $englishScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('englishScore','4'); ?>>4</option>
                            <option <?php if(isset($englishScore) && $englishScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('englishScore','5'); ?>>5</option>
                            <option <?php if(isset($englishScore) && $englishScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('englishScore','6'); ?>>6</option>
                            <option <?php if(isset($englishScore) && $englishScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('englishScore','7'); ?>>7</option>
                            <option <?php if(isset($englishScore) && $englishScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('englishScore','8'); ?>>8</option>
                            <option <?php if(isset($englishScore) && $englishScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('englishScore','9'); ?>>9</option>
                            <option <?php if(isset($englishScore) && $englishScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('englishScore','10'); ?>>10</option>
                            <option <?php if(isset($englishScore) && $englishScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('englishScore','11'); ?>>11</option>
                            <option <?php if(isset($englishScore) && $englishScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('englishScore','12'); ?>>12</option>
                            <option <?php if(isset($englishScore) && $englishScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('englishScore','13'); ?>>13</option>
                            <option <?php if(isset($englishScore) && $englishScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('englishScore','14'); ?>>14</option>
                            <option <?php if(isset($englishScore) && $englishScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('englishScore','15'); ?>>15</option>
                            <option <?php if(isset($englishScore) && $englishScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('englishScore','16'); ?>>16</option>
                            <option <?php if(isset($englishScore) && $englishScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('englishScore','17'); ?>>17</option>
                            <option <?php if(isset($englishScore) && $englishScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('englishScore','18'); ?>>18</option>
                            <option <?php if(isset($englishScore) && $englishScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('englishScore','19'); ?>>19</option>
                            <option <?php if(isset($englishScore) && $englishScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('englishScore','20'); ?>>20</option>
                            <option <?php if(isset($englishScore) && $englishScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('englishScore','21'); ?>>21</option>
                            <option <?php if(isset($englishScore) && $englishScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('englishScore','22'); ?>>22</option>
                            <option <?php if(isset($englishScore) && $englishScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('englishScore','23'); ?>>23</option>
                            <option <?php if(isset($englishScore) && $englishScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('englishScore','24'); ?>>24</option>
                            <option <?php if(isset($englishScore) && $englishScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('englishScore','25'); ?>>25</option>
                            <option <?php if(isset($englishScore) && $englishScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('englishScore','26'); ?>>26</option>
                            <option <?php if(isset($englishScore) && $englishScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('englishScore','27'); ?>>27</option>
                            <option <?php if(isset($englishScore) && $englishScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('englishScore','28'); ?>>28</option>
                            <option <?php if(isset($englishScore) && $englishScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('englishScore','29'); ?>>29</option>
                            <option <?php if(isset($englishScore) && $englishScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('englishScore','30'); ?>>30</option>
                            <option <?php if(isset($englishScore) && $englishScore == '31') echo  "selected=selected"?> value="31" <?php echo set_select('englishScore','31'); ?>>31</option>
                            <option <?php if(isset($englishScore) && $englishScore == '32') echo  "selected=selected"?> value="32" <?php echo set_select('englishScore','32'); ?>>32</option>
                            <option <?php if(isset($englishScore) && $englishScore == '33') echo  "selected=selected"?> value="33" <?php echo set_select('englishScore','33'); ?>>33</option>
                            <option <?php if(isset($englishScore) && $englishScore == '34') echo  "selected=selected"?> value="34" <?php echo set_select('englishScore','34'); ?>>34</option>
                            <option <?php if(isset($englishScore) && $englishScore == '35') echo  "selected=selected"?> value="35" <?php echo set_select('englishScore','35'); ?>>35</option>
                            <option <?php if(isset($englishScore) && $englishScore == '36') echo  "selected=selected"?> value="36" <?php echo set_select('englishScore','36'); ?>>36</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('englishScore',"<p class='text-danger'>","</p>");?>
		            </div>
                </div>

                
                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="mathScore">Math Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="mathScore" name="mathScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($mathScore) && $mathScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('mathScore','1'); ?>>1</option>
                            <option <?php if(isset($mathScore) && $mathScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('mathScore','2'); ?>>2</option>
                            <option <?php if(isset($mathScore) && $mathScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('mathScore','3'); ?>>3</option>
                            <option <?php if(isset($mathScore) && $mathScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('mathScore','4'); ?>>4</option>
                            <option <?php if(isset($mathScore) && $mathScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('mathScore','5'); ?>>5</option>
                            <option <?php if(isset($mathScore) && $mathScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('mathScore','6'); ?>>6</option>
                            <option <?php if(isset($mathScore) && $mathScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('mathScore','7'); ?>>7</option>
                            <option <?php if(isset($mathScore) && $mathScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('mathScore','8'); ?>>8</option>
                            <option <?php if(isset($mathScore) && $mathScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('mathScore','9'); ?>>9</option>
                            <option <?php if(isset($mathScore) && $mathScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('mathScore','10'); ?>>10</option>
                            <option <?php if(isset($mathScore) && $mathScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('mathScore','11'); ?>>11</option>
                            <option <?php if(isset($mathScore) && $mathScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('mathScore','12'); ?>>12</option>
                            <option <?php if(isset($mathScore) && $mathScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('mathScore','13'); ?>>13</option>
                            <option <?php if(isset($mathScore) && $mathScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('mathScore','14'); ?>>14</option>
                            <option <?php if(isset($mathScore) && $mathScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('mathScore','15'); ?>>15</option>
                            <option <?php if(isset($mathScore) && $mathScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('mathScore','16'); ?>>16</option>
                            <option <?php if(isset($mathScore) && $mathScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('mathScore','17'); ?>>17</option>
                            <option <?php if(isset($mathScore) && $mathScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('mathScore','18'); ?>>18</option>
                            <option <?php if(isset($mathScore) && $mathScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('mathScore','19'); ?>>19</option>
                            <option <?php if(isset($mathScore) && $mathScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('mathScore','20'); ?>>20</option>
                            <option <?php if(isset($mathScore) && $mathScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('mathScore','21'); ?>>21</option>
                            <option <?php if(isset($mathScore) && $mathScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('mathScore','22'); ?>>22</option>
                            <option <?php if(isset($mathScore) && $mathScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('mathScore','23'); ?>>23</option>
                            <option <?php if(isset($mathScore) && $mathScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('mathScore','24'); ?>>24</option>
                            <option <?php if(isset($mathScore) && $mathScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('mathScore','25'); ?>>25</option>
                            <option <?php if(isset($mathScore) && $mathScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('mathScore','26'); ?>>26</option>
                            <option <?php if(isset($mathScore) && $mathScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('mathScore','27'); ?>>27</option>
                            <option <?php if(isset($mathScore) && $mathScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('mathScore','28'); ?>>28</option>
                            <option <?php if(isset($mathScore) && $mathScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('mathScore','29'); ?>>29</option>
                            <option <?php if(isset($mathScore) && $mathScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('mathScore','30'); ?>>30</option>
                            <option <?php if(isset($mathScore) && $mathScore == '31') echo  "selected=selected"?> value="31" <?php echo set_select('mathScore','31'); ?>>31</option>
                            <option <?php if(isset($mathScore) && $mathScore == '32') echo  "selected=selected"?> value="32" <?php echo set_select('mathScore','32'); ?>>32</option>
                            <option <?php if(isset($mathScore) && $mathScore == '33') echo  "selected=selected"?> value="33" <?php echo set_select('mathScore','33'); ?>>33</option>
                            <option <?php if(isset($mathScore) && $mathScore == '34') echo  "selected=selected"?> value="34" <?php echo set_select('mathScore','34'); ?>>34</option>
                            <option <?php if(isset($mathScore) && $mathScore == '35') echo  "selected=selected"?> value="35" <?php echo set_select('mathScore','35'); ?>>35</option>
                            <option <?php if(isset($mathScore) && $mathScore == '36') echo  "selected=selected"?> value="36" <?php echo set_select('mathScore','36'); ?>>36</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('mathScore',"<p class='text-danger'>","</p>");?>
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
                            <option <?php if(isset($readingScore) && $readingScore == '31') echo  "selected=selected"?> value="31" <?php echo set_select('readingScore','31'); ?>>31</option>
                            <option <?php if(isset($readingScore) && $readingScore == '32') echo  "selected=selected"?> value="32" <?php echo set_select('readingScore','32'); ?>>32</option>
                            <option <?php if(isset($readingScore) && $readingScore == '33') echo  "selected=selected"?> value="33" <?php echo set_select('readingScore','33'); ?>>33</option>
                            <option <?php if(isset($readingScore) && $readingScore == '34') echo  "selected=selected"?> value="34" <?php echo set_select('readingScore','34'); ?>>34</option>
                            <option <?php if(isset($readingScore) && $readingScore == '35') echo  "selected=selected"?> value="35" <?php echo set_select('readingScore','35'); ?>>35</option>
                            <option <?php if(isset($readingScore) && $readingScore == '36') echo  "selected=selected"?> value="36" <?php echo set_select('readingScore','36'); ?>>36</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('readingScore',"<p class='text-danger'>","</p>");?>
		            </div>
                </div>


                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="scienceScore">Science Score<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="scienceScore" name="scienceScore" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '1') echo  "selected=selected"?> value="1" <?php echo set_select('scienceScore','1'); ?>>1</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '2') echo  "selected=selected"?> value="2" <?php echo set_select('scienceScore','2'); ?>>2</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '3') echo  "selected=selected"?> value="3" <?php echo set_select('scienceScore','3'); ?>>3</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '4') echo  "selected=selected"?> value="4" <?php echo set_select('scienceScore','4'); ?>>4</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '5') echo  "selected=selected"?> value="5" <?php echo set_select('scienceScore','5'); ?>>5</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '6') echo  "selected=selected"?> value="6" <?php echo set_select('scienceScore','6'); ?>>6</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '7') echo  "selected=selected"?> value="7" <?php echo set_select('scienceScore','7'); ?>>7</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '8') echo  "selected=selected"?> value="8" <?php echo set_select('scienceScore','8'); ?>>8</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '9') echo  "selected=selected"?> value="9" <?php echo set_select('scienceScore','9'); ?>>9</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '10') echo  "selected=selected"?> value="10" <?php echo set_select('scienceScore','10'); ?>>10</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '11') echo  "selected=selected"?> value="11" <?php echo set_select('scienceScore','11'); ?>>11</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '12') echo  "selected=selected"?> value="12" <?php echo set_select('scienceScore','12'); ?>>12</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '13') echo  "selected=selected"?> value="13" <?php echo set_select('scienceScore','13'); ?>>13</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '14') echo  "selected=selected"?> value="14" <?php echo set_select('scienceScore','14'); ?>>14</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '15') echo  "selected=selected"?> value="15" <?php echo set_select('scienceScore','15'); ?>>15</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '16') echo  "selected=selected"?> value="16" <?php echo set_select('scienceScore','16'); ?>>16</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '17') echo  "selected=selected"?> value="17" <?php echo set_select('scienceScore','17'); ?>>17</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '18') echo  "selected=selected"?> value="18" <?php echo set_select('scienceScore','18'); ?>>18</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '19') echo  "selected=selected"?> value="19" <?php echo set_select('scienceScore','19'); ?>>19</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '20') echo  "selected=selected"?> value="20" <?php echo set_select('scienceScore','20'); ?>>20</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '21') echo  "selected=selected"?> value="21" <?php echo set_select('scienceScore','21'); ?>>21</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '22') echo  "selected=selected"?> value="22" <?php echo set_select('scienceScore','22'); ?>>22</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '23') echo  "selected=selected"?> value="23" <?php echo set_select('scienceScore','23'); ?>>23</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '24') echo  "selected=selected"?> value="24" <?php echo set_select('scienceScore','24'); ?>>24</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '25') echo  "selected=selected"?> value="25" <?php echo set_select('scienceScore','25'); ?>>25</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '26') echo  "selected=selected"?> value="26" <?php echo set_select('scienceScore','26'); ?>>26</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '27') echo  "selected=selected"?> value="27" <?php echo set_select('scienceScore','27'); ?>>27</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '28') echo  "selected=selected"?> value="28" <?php echo set_select('scienceScore','28'); ?>>28</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '29') echo  "selected=selected"?> value="29" <?php echo set_select('scienceScore','29'); ?>>29</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '30') echo  "selected=selected"?> value="30" <?php echo set_select('scienceScore','30'); ?>>30</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '31') echo  "selected=selected"?> value="31" <?php echo set_select('scienceScore','31'); ?>>31</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '32') echo  "selected=selected"?> value="32" <?php echo set_select('scienceScore','32'); ?>>32</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '33') echo  "selected=selected"?> value="33" <?php echo set_select('scienceScore','33'); ?>>33</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '34') echo  "selected=selected"?> value="34" <?php echo set_select('scienceScore','34'); ?>>34</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '35') echo  "selected=selected"?> value="35" <?php echo set_select('scienceScore','35'); ?>>35</option>
                            <option <?php if(isset($scienceScore) && $scienceScore == '36') echo  "selected=selected"?> value="36" <?php echo set_select('scienceScore','36'); ?>>36</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('scienceScore',"<p class='text-danger'>","</p>");?>
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
                            <option <?php if(isset($writingScore) && $writingScore == '31') echo  "selected=selected"?> value="31" <?php echo set_select('writingScore','31'); ?>>31</option>
                            <option <?php if(isset($writingScore) && $writingScore == '32') echo  "selected=selected"?> value="32" <?php echo set_select('writingScore','32'); ?>>32</option>
                            <option <?php if(isset($writingScore) && $writingScore == '33') echo  "selected=selected"?> value="33" <?php echo set_select('writingScore','33'); ?>>33</option>
                            <option <?php if(isset($writingScore) && $writingScore == '34') echo  "selected=selected"?> value="34" <?php echo set_select('writingScore','34'); ?>>34</option>
                            <option <?php if(isset($writingScore) && $writingScore == '35') echo  "selected=selected"?> value="35" <?php echo set_select('writingScore','35'); ?>>35</option>
                            <option <?php if(isset($writingScore) && $writingScore == '36') echo  "selected=selected"?> value="36" <?php echo set_select('writingScore','36'); ?>>36</option>
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
