                          <?php //print_r($_SESSION); ?>
<style>
    .mainBtn{
        margin-top: 50px;
    margin-bottom: 50px;
    float: right;
    }
</style>
<h2>FERPA Release Authorization</h2>

<form class="form-horizontal">
  <fieldset>
    <legend><b>Instructions</b></legend>
<p>
The form below will ask you two important questions about your release of and access to your educational records under FERPA, the Family Educational Rights and Privacy Act.</p>

<p>How does FERPA relate to your college application?</p>
<p>FERPA regulates the privacy of student education records, which could include your application to the college where you enroll. FERPA also gives you the right to review confidential letters of recommendation provided as part of that application after you enroll.
In a moment, you’ll be asked if you want to waive the right to review confidential letters of recommendation. What should you know about this waiver?</p>
<p>Waiving your right lets colleges know that you do not intend to read your recommendations, which helps reassure colleges that the letters are candid and truthful.</p>
<p>Some recommenders may decline to write a letter for you if you do not waive your rights.

</p>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="ferpaunderstood">I have read and understood the FERPA Release Authorization explanation above.</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="ferpaunderstood-0">
      <input type="radio" name="ferpaunderstood" id="ferpaunderstood-0" value="Yes" checked="checked">
      Yes
    </label>
  </div>
  <div class="radio">
    <label for="ferpaunderstood-1">
      <input type="radio" name="ferpaunderstood" id="ferpaunderstood-1" value="No">
      No
    </label>
  </div>
  </div>
</div>
</fieldset>

</form>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend><b>FERPA Form</b></legend>



<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="ferpaack">I acknowledge that every school that I have attended may release all requested records and recommendations to colleges to which I am applying for admission. I also understand that employees at these colleges may confidentially contact my current and former schools should they have questions about the information submitted on my behalf.*</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="ferpaack-0">
      <input type="radio" name="ferpaack" id="ferpaack-0" value="Yes" checked="checked">
      Yes
    </label>
	</div>
  <div class="radio">
    <label for="ferpaack-1">
      <input type="radio" name="ferpaack" id="ferpaack-1" value="No">
      No
    </label>
	</div>
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectopt">Please select one</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="selectopt-0">
      <input type="radio" name="selectopt" id="selectopt-0" value="I waive my right to review all recommendations and supporting documents." checked="checked">
      I waive my right to review all recommendations and supporting documents.
    </label>
	</div>
  <div class="radio">
    <label for="selectopt-1">
      <input type="radio" name="selectopt" id="selectopt-1" value="I DO NOT waive my right to review all recommendations and supporting documents.">
      I DO NOT waive my right to review all recommendations and supporting documents.
    </label>
	</div>
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="ferpawaiver">I understand that my waiver or no waiver selection above pertains to all colleges to which I apply and that my selections on this page cannot be changed after any recommendation or application submission.*</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="ferpawaiver-0">
      <input type="radio" name="ferpawaiver" id="ferpawaiver-0" value="Yes" checked="checked">
      Yes
    </label>
	</div>
  <div class="radio">
    <label for="ferpawaiver-1">
      <input type="radio" name="ferpawaiver" id="ferpawaiver-1" value="No">
      No
    </label>
	</div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="signature">Signature</label>  
  <div class="col-md-4">
  <input id="signature" name="signature" type="text" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="date">Date</label>  
  <div class="col-md-4">
  <input id="date" name="date" type="date" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

</fieldset>
</form>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-12">
        <button class="btn btn-success btn-lg mainBtn" id="applyNow">APPLY NOW</button>
    </div>
    <div class="col-lg-2">
    </div>
</div>





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
     $(document).ready(function () {
        $('#applyNow').click(function(){
            
            if($("input[name=ferpaunderstood]:checked").val() == "No" || $("input[name=ferpaack]:checked").val() == "No" || $("input[name=ferpawaiver]:checked").val() == "No"){
                alert("Please make sure to have all Autorizations of FERPA as Yes for submitting this form.");
                return false;
            }else if($('#signature').val() == ""){
                alert("Please fill Signature");
            }else if($('#date').val() == ""){
                alert("Please fill Date");
            }else{
                    $.ajax({
                    type: 'POST',
                    url: '<?php echo base_url('Home') ?>/checkedOptForms',
                    success: function (data) {
                        var json = JSON.parse(data);
                        debugger;
                        /*console.log(json);*/
                        if(json.a[0].SAT + json.b[0].ACT < 1 ){
                            alert("Please fill atleast one SAT or ACT Form");
                            return false;
                        }else if(json.d[0].TOEFL + json.c[0].IELTS < 1){
                            alert("Please fill atleast one TOEFL or IELTS Form");
                            return false;
                        }else{
                            
                            var ferpaunderstood     = $('input[name=ferpaunderstood]:checked').val();
                            var ferpaack            = $('input[name=ferpaack]:checked').val();
                            var ferpawaiver         = $('input[name=ferpawaiver]:checked').val();
                            var selectopt           = $('input[name=selectopt]:checked').val();
                            var signature           = $("#signature").val();
                            var date                = $('#date').val();
                            
                            var finalJSON = {"ferpaunderstood": ferpaunderstood, "ferpaack": ferpaack, "ferpawaiver": ferpawaiver, "selectopt": selectopt, "signature": signature, "ferpaDate": date, "isApply": 1 };
                            $.ajax({
                                type: 'POST',
                                url: '<?php echo base_url('Home') ?>/LastApply',
                                data: JSON.stringify(finalJSON),
                                success: function (data) {
                                    var json = JSON.parse(data);
                                    // console.log(json);
                                    if (json.status == true) {
                                        alert("Congratulations, your Application has been submitted, you will hear from us shortly.");
                                        window.location.href = "https://globaltalentsearch.us/";
                                    }else{
                                        
                                    }
                                    
                                }
                            });
                        }
                    }
                });
            }
               
            
            
            
            
            
            
            
        });
     });
</script>