<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title">
                <h5>Add Essay</h5>
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
                <form role="form" name="Addcollege" class="form-horizontal" action="<?php echo site_url('Home/addEssay/')?><?php if (isset($id)) echo $id?>" method="post">

                <!-- Multiple Radios -->
                <div class="form-group">
                    <label class="col-md-12 control-label" for="essayOption"><b>The essay demonstrates your ability to write clearly and concisely on a selected topic and helps you distinguish yourself in your own voice. What do you want the readers of your application to know about you apart from courses, grades, and test scores? Choose the option that best helps you answer that question and write an essay of no more than 650 words, using the prompt to inspire and structure your response. Remember: 650 words is your limit, not your goal. Use the full range if you need it, but don't feel obligated to do so. (The application won't accept a response shorter than 250 words.)</b><span class="required">*</span></label>
                  <div class="col-md-12">
                  <div class="radio">
                    <label for="essayOption-0">
                      <input type="radio" name="essayOption" id="essayOption-0" <?php if(isset($essayOption) && $essayOption == 'Some students have a background, identity, interest, or talent that is so meaningful they believe their application would be incomplete without it. If this sounds like you, then please share your story.') echo  "checked"?> value="Some students have a background, identity, interest, or talent that is so meaningful they believe their application would be incomplete without it. If this sounds like you, then please share your story." >
                      Some students have a background, identity, interest, or talent that is so meaningful they believe their application would be incomplete without it. If this sounds like you, then please share your story.
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-1">
                      <input type="radio" name="essayOption" id="essayOption-1" <?php if(isset($essayOption) && $essayOption == 'The lessons we take from obstacles we encounter can be fundamental to later success. Recount a time when you faced a challenge, setback, or failure. How did it affect you, and what did you learn from the experience?') echo  "checked"?> value="The lessons we take from obstacles we encounter can be fundamental to later success. Recount a time when you faced a challenge, setback, or failure. How did it affect you, and what did you learn from the experience?">
                      The lessons we take from obstacles we encounter can be fundamental to later success. Recount a time when you faced a challenge, setback, or failure. How did it affect you, and what did you learn from the experience?
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-2">
                      <input type="radio" name="essayOption" id="essayOption-2" <?php if(isset($essayOption) && $essayOption == 'Reflect on a time when you questioned or challenged a belief or idea. What prompted your thinking? What was the outcome?') echo  "checked"?> value="Reflect on a time when you questioned or challenged a belief or idea. What prompted your thinking? What was the outcome?">
                      Reflect on a time when you questioned or challenged a belief or idea. What prompted your thinking? What was the outcome?
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-3">
                      <input type="radio" name="essayOption" id="essayOption-3" <?php if(isset($essayOption) && $essayOption == "Describe a problem you've solved or a problem you'd like to solve. It can be an intellectual challenge, a research query, an ethical dilemma-anything that is of personal importance, no matter the scale. Explain its significance to you and what steps you took or could be taken to identify a solution.") echo  "checked"?> value="Describe a problem you've solved or a problem you'd like to solve. It can be an intellectual challenge, a research query, an ethical dilemma-anything that is of personal importance, no matter the scale. Explain its significance to you and what steps you took or could be taken to identify a solution.">
                      Describe a problem you've solved or a problem you'd like to solve. It can be an intellectual challenge, a research query, an ethical dilemma-anything that is of personal importance, no matter the scale. Explain its significance to you and what steps you took or could be taken to identify a solution.
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-4">
                      <input type="radio" name="essayOption" id="essayOption-4" <?php if(isset($essayOption) && $essayOption == 'Discuss an accomplishment, event, or realization that sparked a period of personal growth and a new understanding of yourself or others.') echo  "checked"?> value="Discuss an accomplishment, event, or realization that sparked a period of personal growth and a new understanding of yourself or others.">
                      Discuss an accomplishment, event, or realization that sparked a period of personal growth and a new understanding of yourself or others.
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-5">
                      <input type="radio" name="essayOption" id="essayOption-5" <?php if(isset($essayOption) && $essayOption == 'Describe a topic, idea, or concept you find so engaging that it makes you lose all track of time. Why does it captivate you? What or who do you turn to when you want to learn more?') echo  "checked"?> value="Describe a topic, idea, or concept you find so engaging that it makes you lose all track of time. Why does it captivate you? What or who do you turn to when you want to learn more?">
                      Describe a topic, idea, or concept you find so engaging that it makes you lose all track of time. Why does it captivate you? What or who do you turn to when you want to learn more?
                    </label>
                	</div>
                  <div class="radio">
                    <label for="essayOption-6">
                      <input type="radio" name="essayOption" id="essayOption-6" <?php if(isset($essayOption) && $essayOption == "Share an essay on any topic of your choice. It can be one you've already written, one that responds to a different prompt, or one of your own design.") echo  "checked"?> value="Share an essay on any topic of your choice. It can be one you've already written, one that responds to a different prompt, or one of your own design.">
                      Share an essay on any topic of your choice. It can be one you've already written, one that responds to a different prompt, or one of your own design.
                    </label>
                	</div>
                  </div>
                  <div class="col-md-4">
                        <?php echo form_error('essayOption',"<p class='text-danger'>","</p>");?>
                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-sm-8 col-form-label" for="essay"><b>Please write an essay on the topic selected. You can type directly into the box, or you can paste text from another source.</b><span class="required">*</span></label>
                    <div class="col-md-12">                     
                        <textarea class="form-control" id="essay" name="essay" placeholder="Write your Essay here" value="<?php echo set_value('essay'); ?>"><?php if(isset($essay)) echo $essay; ?></textarea>
                    </div>
                    <div class="col-md-6">
                        <?php echo form_error('essay',"<p class='text-danger'>","</p>");?>
        
                    </div>
                </div>

                <div class="form-group">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    function singlebutton() {
        alert("Are you Sure!!!")
        window.location.href = "<?php echo base_url('Home') ?>";
    }
</script>
