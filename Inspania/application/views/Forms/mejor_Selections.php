<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Select your primary intended College Major</h5>
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
                 <form role="form" name="personel_form" class="form-horizontal" action="<?php echo site_url('Home/addMejor_Selection/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Form Name -->
                <legend>Major Selection</legend>
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="subject">Area of Study</label>
                            <div class="col-md-5">
                                <select id="areasOfStudy" name="areasOfStudyId" class="form-control" onchange="forMajor(this);">
                                </select>
                            </div>
                            <div class="col-md-4">
                                <?php echo form_error('areasOfStudyId',"<p class='text-danger'>","</p>");?>

                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="subject">Major</label>
                            <div class="col-md-5">
                                <select id="selectMajor" name="majorId" class="form-control">
                                    <option>--Select Major--</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <?php echo form_error('majorId',"<p class='text-danger'>","</p>");?>

                            </div>
                        </div>
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
<?php if (isset($id) == NULL){?>
<div class="row">
    <div class="col-lg-8"></div>
    <div class="col-lg-4">
        <div class="ibox ">
            <div class="ibox-content">
                <!--<button id="toValidateForm" class="btn btn-info">Validate All Forms</button>-->
                <button id="toMainSubmit" class="btn btn-success">Submit</button>
            </div>
        </div>
    </div>
</div>
<?php } ?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function singlebutton() {
            alert("Are you Sure!!!")
            window.location.href = "<?php echo base_url('Home') ?>";
        }
    </script>
    <script>
        $(document).ready(function () {
            
            $('#toMainSubmit').click(function () {
                $.ajax({
                    type: 'POST',
                    url: '<?php echo base_url('Home') ?>/masterGetStudentById',
                    success: function (data) {
                        var json = JSON.parse(data);
                        console.log(json.StudentData.college_plans_form);
                        if(json.StudentData.personel_form == "0"){
                            alert("Please Fill Personel Information Form ");
                            return false;
                        }else if(json.StudentData.contact_form == "0"){
                            alert("Please Fill Contact Information Form ");
                            return false;
                        }else if(json.StudentData.parent_1 == "0"){
                            alert("Please Fill Parent 1 Information Form ");
                            return false;
                        }else if(json.StudentData.parent_2 == "0"){
                            alert("Please Fill Parent 2 Information Form ");
                            return false;
                        }else if(json.StudentData.highSchool_form == "0"){
                            alert("Please Fill High School Information Form ");
                            return false;
                        }else if(json.StudentData.college_plans_form == "0"){
                            alert("Please Fill College Plans Information Form ");
                            return false;
                        }else if(json.StudentData.majorSelect_form == "0"){    
                            alert("Please Fill Major Selection Information Form ");
                            return false;
                        }else{
                            var finalJSON = {"isMandatory": 1 };
                            $.ajax({
                                type: 'POST',
                                url: '<?php echo base_url('Home') ?>/finalSubmit',
                                data: JSON.stringify(finalJSON),
                                success: function (data) {
                                    var json = JSON.parse(data);
                                    console.log(json);
                                    if (json.status == true) {
                                        window.location.href = "<?php echo site_url('Home/students/'); ?>";
                                    }
                                }
                            });
                        }    
                    }
                });
                
            });
            
            
            
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Home') ?>/areasOfStudy',
                success: function (data) {
                    var json = JSON.parse(data);
                    // console.log(json);
                    var propertytype = '<option value="0">--Select Area of Studies--</option>';
                    var isChecked = "";
                    for (var i = 0; i < json.subjectName.length; i++)
                    {
                        <?php if(isset($areasOfStudyId)){ ?>
                            if(<?php echo $areasOfStudyId;?> == json.subjectName[i].id){
                             isChecked="selected=selected"; 
                            }else{
                                isChecked="";
                            }   
                        <?php } ?>   
                        propertytype += '<option value="' + json.subjectName[i].id + '" '+isChecked+'>' + json.subjectName[i].areasOfStudy + '</option>';
                    }
                    $("select#areasOfStudy").html(propertytype);
                }
            });
        });

        function forMajor(item) {
            //alert(item.value);
            var dataVal = item.value;
            var dataJSON = {"areasOfStudyId": dataVal}
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('Home') ?>/forMajor',
                data: JSON.stringify(dataJSON),
                success: function (data) {
                    var json = JSON.parse(data);
    //                console.log(data);
                    var propertytype = '<option value="0">--Select Majors--</option>';
                    var isChecked = "";
                    for (var i = 0; i < json.subjectName.length; i++)
                    {   
                        <?php if(isset($majorId)){ ?>
                            if(<?php echo $majorId;?> == json.subjectName[i].id){
                                isChecked="selected=selected"; 
                            }else{
                                isChecked="";
                            }   
                        <?php } ?>
                        propertytype += '<option value="' + json.subjectName[i].id + '" '+isChecked+'>' + json.subjectName[i].Majors + '</option>';
                    }
                    $("select#selectMajor").html(propertytype);
                }
            });
        }
    </script>
