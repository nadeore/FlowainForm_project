
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Colleges Information</h5>
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
                <form role="form" name="personel_form" class="form-horizontal" action="<?php echo site_url('Home/AddCollegePlans/')?><?php if (isset($id)) echo $id?>" method="post">
                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="careerIntrest">Career Interest<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="careerIntrest" name="careerIntrest" class="form-control">
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('careerIntrest',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="plannedHighestEduLvl">Highest Education level Planned<span class="required">*</span></label>
                    <div class="col-md-5">
                        <select id="plannedHighestEduLvl" name="plannedHighestEduLvl" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Specialized training or certificate program') echo  "selected=selected"?> value="Specialized training or certificate program" <?php echo set_select('plannedHighestEduLvl','Specialized training or certificate program'); ?>>Specialized training or certificate program</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Two-year associate of arts or sciences degree (such as AA, AAS, or AS)') echo  "selected=selected"?> value="Two-year associate of arts or sciences degree (such as AA, AAS, or AS)" <?php echo set_select('plannedHighestEduLvl','Two-year associate of arts or sciences degree (such as AA, AAS, or AS)'); ?>>Two-year associate of arts or sciences degree (such as AA, AAS, or AS)</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Bachelors degree (such as BA or BS)') echo  "selected=selected"?> value="Bachelors degree (such as BA or BS)" <?php echo set_select('plannedHighestEduLvl','Bachelors degree (such as BA or BS)'); ?>>Bachelors degree (such as BA or BS)</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Masters degree (such as MA, MBA, or MS)') echo  "selected=selected"?> value="Masters degree (such as MA, MBA, or MS)" <?php echo set_select('plannedHighestEduLvl','Masters degree (such as MA, MBA, or MS)'); ?>>Masters degree (such as MA, MBA, or MS)</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Doctoral or related degree (such as PhD, JD, MO, DVM)') echo  "selected=selected"?> value="Doctoral or related degree (such as PhD, JD, MO, DVM)" <?php echo set_select('plannedHighestEduLvl','Doctoral or related degree (such as PhD, JD, MO, DVM)'); ?>>Doctoral or related degree (such as PhD, JD, MO, DVM)</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Other') echo  "selected=selected"?> value="Other" <?php echo set_select('plannedHighestEduLvl','Other'); ?>>Other</option>
                            <option <?php if(isset($plannedHighestEduLvl) && $plannedHighestEduLvl == 'Undecided') echo  "selected=selected"?> value="Undecided" <?php echo set_select('plannedHighestEduLvl','Undecided'); ?>>Undecided</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <?php echo form_error('plannedHighestEduLvl',"<p class='text-danger'>","</p>");?>        
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="collegeHousingPlan">Where are you planning to stay during college?</label>
                    <div class="col-md-5">
                        <select id="collegeHousingPlan" name="collegeHousingPlan" class="form-control">
                            <option selected="selected" disabled>--Select--</option>
                            <option <?php if(isset($collegeHousingPlan) && $collegeHousingPlan == 'At Home') echo  "selected=selected"?> value="At Home" <?php echo set_select('collegeHousingPlan','At Home'); ?>>At Home</option>
                            <option <?php if(isset($collegeHousingPlan) && $collegeHousingPlan == 'On-Campus Housing') echo  "selected=selected"?> value="On-Campus Housing" <?php echo set_select('collegeHousingPlan','On-Campus Housing'); ?>>On-Campus Housing</option>
                            <option <?php if(isset($collegeHousingPlan) && $collegeHousingPlan == 'Off-Campus Housing') echo  "selected=selected"?> value="Off-Campus Housing" <?php echo set_select('collegeHousingPlan','Off-Campus Housing'); ?>>Off-Campus Housing</option>
                            <option <?php if(isset($collegeHousingPlan) && $collegeHousingPlan == 'I dont know') echo  "selected=selected"?> value="I dont know" <?php echo set_select('collegeHousingPlan','I dont know'); ?>>I don't know</option>
                        </select>
                    </div>
                </div>

                <!-- Multiple Radios -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="financialAid">Will you apply for financial aid?</label>
                    <div class="col-md-5">
                        <div class="radio">
                            <label for="financialAid-0">
                                <input type="radio" name="financialAid" id="financialAid-0" value="Yes" <?php if(isset($financialAid) && $financialAid == 'Yes') echo "checked"?> >
                                Yes
                            </label>
                        </div>
                        <div class="radio">
                            <label for="financialAid-1">
                                <input type="radio" name="financialAid" id="financialAid-1" value="No" <?php if(isset($financialAid) && $financialAid == 'No') echo "checked"?> >
                                No
                            </label>
                        </div>
                    </div>
                </div>
                <?php
                $counter = 1;
                if($questions) {
                    foreach ($questions as $ques ) {
                        if(isset($selected)){
                        if($counter-1 < count($selected)){
//                            echo ($counter-1)."<".count($selected).'---'.$selected[$counter-1]['checkboxQuestionId'] ;
                ?>
                    <!--<div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="collegeHousingPlan"><b>Questions - <?php echo $counter++; ?></b></label>
                        <div class="col-md-10">                        
                            <div class="form-group row">
                                <label class="col-sm-12 col-form-label" for="collegeHousingPlan"> <input type="checkbox" name="questions[]" value="<?php echo $ques->id; ?>"  <?php if($ques->id == $selected[$counter-2]['checkboxQuestionId'])    echo "checked"?>> <b> <?php echo $ques->question; ?> </b> </label>                            

                                <div class="col-md-12" style="padding-top: 10px;">
                                <?php  if($ques->options) {
                                    $counter2 = 0;
                                    $selectOpt = explode(',', $selected[$counter-2]['checkboxOptionId']);
                                        foreach ($ques->options as $opt ) {
                                             if($counter2 < count($selectOpt)){
//                                            print_r($selectOpt);
//                                            print_r($opt);
                                                   ?>
                                    <input type="checkbox" name="options[<?php echo $ques->id; ?>][]" value="<?php echo $opt->id; ?>"  <?php if($opt->id == $selectOpt[$counter2]) {  echo "checked"; $counter2++; }?>> <?php echo $opt->options; ?> <br>
                                    <?php
                                }else{
                                    ?>
                                    <input type="checkbox" name="options[<?php echo $ques->id; ?>][]" value="<?php echo $opt->id; ?>" > <?php echo $opt->options; ?> <br>
                                    <?php
                                } 
                                
                                             } }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>-->
                <?php
                }else{ 
                ?>
                    <!--<div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="collegeHousingPlan"><b>Questions - <?php echo $counter++; ?></b></label>
                        <div class="col-md-10">                        
                            <div class="form-group row">
                                <label class="col-sm-12 col-form-label" for="collegeHousingPlan"> <input type="checkbox" name="questions[]" value="<?php echo $ques->id; ?>"> <b> <?php echo $ques->question; ?> </b> </label>                            

                                <div class="col-md-12" style="padding-top: 10px;">
                                <?php    
                                
                                if($ques->options) {
                                        foreach ($ques->options as $opt ) {
                                           
                                                   ?>
                                    <input type="checkbox" name="options[<?php echo $ques->id; ?>][]" value="<?php echo $opt->id; ?>"> <?php echo $opt->options; ?> <br>
                                    <?php
                                } } 
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>-->
                <?php
                        } }else{
                            ?>
                    <!--<div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="collegeHousingPlan"><b>Questions - <?php echo $counter++; ?></b></label>
                        <div class="col-md-10">                        
                            <div class="form-group row">
                                <label class="col-sm-12 col-form-label" for="collegeHousingPlan"> <input type="checkbox" name="questions[]" value="<?php echo $ques->id; ?>"> <b> <?php echo $ques->question; ?> </b> </label>                            

                                <div class="col-md-12" style="padding-top: 10px;">
                                <?php    
                                
                                if($ques->options) {
                                        foreach ($ques->options as $opt ) {
                                           
                                                   ?>
                                    <input type="checkbox" name="options[<?php echo $ques->id; ?>][]" value="<?php echo $opt->id; ?>"> <?php echo $opt->options; ?> <br>
                                    <?php
                                } } 
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>-->
                <?php
                            
                        }                
                                        } }
                ?>
                <!-- Button -->
                <div class="form-group row  row">
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
            url: '<?php echo base_url('Home') ?>/Occupations',
            success: function (data) {
                var json = JSON.parse(data);
//                console.log(json);
                var propertytype = '<option selected="selected" disabled>--Select--</option>';
                var isChecked = "";
                for (var i = 0; i < json.Occupations.length; i++)
                {
                    <?php if(isset($careerIntrest)){ ?>
                            if(<?php if(isset($careerIntrest) && $careerIntrest) echo $careerIntrest;?> == json.Occupations[i].id){
                             isChecked="selected=selected"; 
                            }else{
                                isChecked="";
                            }   
                        <?php } ?> 
                    propertytype += '<option value="' + json.Occupations[i].id + '" '+isChecked+'>' + json.Occupations[i].occupation + '</option>';
                }
                $("select#careerIntrest").html(propertytype);
            }
        });
    });
</script>
