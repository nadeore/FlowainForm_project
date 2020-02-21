<?php
//defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {


	public function __construct(){
		parent::__construct();
		if( ! $this->session->userdata('userId'))
			redirect('Login', 'location');  
//		// Expire the page on back button click
// 		$this->general->expire_page();
	}


	public function index(){
            $this->load->view('landing');
//		$data['page_title'] = 'Home';
//		$data['view'] = 'landing';    
//		$this->template->load_page1($data);
	}
        
        public function dashboard(){
		$data['page_title'] = 'Home';
		$data['view'] = 'dashboard_view';    
		$this->template->load_page1($data);
	}
	
	public function termsConditions(){
		$data['page_title'] = 'Home';                
		$data['view'] = 'termsCondition';    
		$this->template->load_page1($data);
	}
	
	public function LastApply(){
	    $this->load->model('General_model');
            $result = $this->General_model->LastApply();
            echo $result;
	}
	
	public function masterGetStudentById(){
	    $this->load->model('General_model');
            $result = $this->General_model->masterGetStudentById();
            echo $result;
	}
	
        
        public function PersonelInfo(){                
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/personal_Information';    
		$this->template->load_page1($data);
	}
        public function StudentPersonelInfo($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];            
            $data['view'] = 'Forms/personal_Information';    
            $this->template->load_page1($data);
        }
        
        public function addPersonelInfo($id = NULL) {
            $this->load->model('General_model');
            $data = array(
                'userId'                => $this->session->userdata('userId'),
                'firstName'             => $this->input->post('firstName'),
                'middleInitial'         => $this->input->post('middleInitial'),
                'lastName'              => $this->input->post('lastName'),
                'gender'                => $this->input->post('gender'),
                'dateOfBirth'           => $this->input->post('dateOfBirth'),
                'countryOfResidence'    => $this->input->post('countryOfResidence'),
                'countryOfBirth'        => $this->input->post('countryOfBirth'),
                'cityOfBirth'           => $this->input->post('cityOfBirth'),
                'noOfYrsInUS'           => $this->input->post('noOfYrsInUS'),
                'noOfYrsOutOfUS'        => $this->input->post('noOfYrsOutOfUS'),
                'citizenshipStatus'     => $this->input->post('citizenshipStatus'),
                'parentsMaritalStatus'  => $this->input->post('parentsMaritalStatus'),
                'permenantHomeGuardian' => $this->input->post('permenantHomeGuardian'),
                'personel_form'         => 1
            );
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addPersonelInfo') == FALSE)
                {
                    $this->StudentPersonelInfo($id);
                }
                else {
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }
                
            }else{
                $this->load->library('form_validation');
                if ($this->form_validation->run('addPersonelInfo') == FALSE)
                {
                    $this->PersonelInfo();
                }
                else
                {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/ContactInfo/', 'location');
                }
            }
        }
        
        
        public function ContactInfo(){                
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/contact_Information';    
            $this->template->load_page1($data);
	}
        
        
        public function addContactInfo($id = NULL) {
            $data = array(                
                'streetAddress1'    => $this->input->post('streetAddress1'),
                'streetAddress2'    => $this->input->post('streetAddress2'),
                'streetAddress3'    => $this->input->post('streetAddress3'),
                'city'              => $this->input->post('city'),
                'postalCode'        => $this->input->post('postalCode'),
                'regionOrProvince'  => $this->input->post('regionOrProvince'),
                'countryCode'       => $this->input->post('countryCode'),
                'mobileNumber'      => $this->input->post('mobileNumber'),
                'emailAddress'      => $this->input->post('emailAddress'),
                'contact_form'      => 1
            );
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addContactInfo') == FALSE)
                {
                    $this->ContactInfo();
                }
                else {
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }
            }else{
            
                $this->load->library('form_validation');
                if ($this->form_validation->run('addContactInfo') == FALSE)
                {
                    $this->ContactInfo();
                }
                else
                {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Parent1/', 'location');
                }
            }
        }
        
        public function StudentContactInfo($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];
            $data['view'] = 'Forms/contact_Information';    
            $this->template->load_page1($data);
        }
        
        public function Parent1() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/Parents1';    
            $this->template->load_page1($data);
        }
        
        public function addparent1($id = NULL) {
            $data = array(                
                'Parent1type'           => $this->input->post('Parent1type'),
                'parent1Living'         => $this->input->post('parent1Living'),
                'Parent1prefix'         => $this->input->post('Parent1prefix'),
                'Parent1FirstName'      => $this->input->post('Parent1FirstName'),
                'Parent1MiddleInitial'  => $this->input->post('Parent1MiddleInitial'),
                'Parent1LastName'       => $this->input->post('Parent1LastName'),
                'Parent1FormerLastName' => $this->input->post('Parent1FormerLastName'),
                'Parent1Suffix'         => $this->input->post('Parent1Suffix'),
                'Parent1CountryOfBirth' => $this->input->post('Parent1CountryOfBirth'),
                'Parent1Occupation'     => $this->input->post('Parent1Occupation'),
                'Parent1EducationLevel' => $this->input->post('Parent1EducationLevel'),
                'parent_1'              => 1
            );
            
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addparent1') == FALSE)
                {
                    $this->Parent1();
                }
                else {
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }
                
            }else{
                $this->load->library('form_validation');
                if ($this->form_validation->run('addparent1') == FALSE)
                {
                    $this->Parent1();
                }
                else {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Parent2/', 'location');
                }
               
            }
            
        }
        
        public function StudentParent1($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];
//                        echo '<pre>';
//            print_r($data);
//            exit;
            $data['view'] = 'Forms/Parents1';    
            $this->template->load_page1($data);
        }
        
        public function Parent2() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/Parents2';    
            $this->template->load_page1($data);
        }
        
        public function addparent2($id = NULL) {
            $data = array(
                'Parent2type'           => $this->input->post('Parent2type'),
                'Parent2Living'         => $this->input->post('Parent2Living'),
                'Parent2Prerix'         => $this->input->post('Parent2Prerix'),
                'Parent2FirstName'      => $this->input->post('Parent2FirstName'),
                'Parent2MiddleInitial'  => $this->input->post('Parent2MiddleInitial'),
                'Parent2LastName'       => $this->input->post('Parent2LastName'),
                'Parent2FormerLastName' => $this->input->post('Parent2FormerLastName'),
                'Parent2Suffix'         => $this->input->post('Parent2Suffix'),
                'Parent2CountryOfBirth' => $this->input->post('Parent2CountryOfBirth'),
                'Parent2Occupation'     => $this->input->post('Parent2Occupation'),
                'Parent2EducationLevel' => $this->input->post('Parent2EducationLevel'),
                'parent_2'              => 1
            );
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addparentno2') == FALSE)
                {
                    $this->Parent2();
                }
                else {
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }
                
            }else{

                $this->load->library('form_validation');
                if ($this->form_validation->run('addparentno2') == FALSE)
                {
                    $this->Parent2();
                }
                else {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/High_Schools/', 'location');
                }
               
            }

        }
        
        public function StudentParent2($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];
            // echo '<pre>';
            // print_r($data);
            // exit;
            $data['view'] = 'Forms/Parents2';    
            $this->template->load_page1($data);
        }
        
        public function High_Schools() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/high_Schools';    
            $this->template->load_page1($data);
        }
        
        public function addhigh_Schools($id = NULL) {
            $data = array(
                'stuId'                 => $this->session->userdata('studId'),
                'schoolName'            => $this->input->post('schoolName'),
                'schoolDateOfEntry'     => $this->input->post('schoolDateOfEntry'),
                'schoolCity'            => $this->input->post('schoolCity'),
                'schoolCountry'         => $this->input->post('schoolCountry'),
                'schoolZipCode'         => $this->input->post('schoolZipCode'),
                'boarindSchool'         => $this->input->post('boarindSchool'),
                'guaduatedFromSchool'   => $this->input->post('guaduatedFromSchool')
            );
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addhigh_Schools') == FALSE)
                {
                        $this->High_Schools();
                }else{
                    $this->db->where(["id" => $id]);
                    $this->db->update('schools', $data);
                    redirect('Home/students/', 'location');
                }
            }else{            
                $this->load->library('form_validation');
                if ($this->form_validation->run('addhigh_Schools') == FALSE)
                {
                        $this->High_Schools();
                }else{
                    $data2 = array ('highSchool_form' => 1);
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data2);
                    $this->db->insert('schools', $data);
                    redirect('Home/CollegePlans/', 'location');
               }
            }
        }
        
        public function StudentHigh_Schools($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainschool($id); 
            $data = $student[0];
            $data['view'] = 'Forms/high_Schools';    
            $this->template->load_page1($data);
        }
        
        public function CollegePlans() {
            $this->load->model('General_model');
            $data['page_title'] = 'Home';
            $data['questions'] = $this->General_model->questions();
            $data['view'] = 'Forms/collegePlans';    
            $this->template->load_page1($data);
        }
        
        public function AddCollegePlans($id = NULL) {
            if(isset($id)){ 
                $this ->db->where('stuId', $id);
                $this->db->delete('checkboxselectionsxref');
                
                $dataArray = [];
                foreach ($_POST['questions'] as $key => $value) {
                    $dataArray[$key]['stuId'] = $this->session->userdata('studId'); 
                    $dataArray[$key]['checkboxQuestionId'] = $value;
                    $dataArray[$key]['checkboxOptionId'] = implode(',', $_POST['options'][$value]);
                    $this->db->insert('checkboxselectionsxref', $dataArray[$key]);
                }
            }else{
            $dataArray = [];
                foreach ($_POST['questions'] as $key => $value) {
                    $dataArray[$key]['stuId'] = $this->session->userdata('studId'); 
                    $dataArray[$key]['checkboxQuestionId'] = $value;
                    $dataArray[$key]['checkboxOptionId'] = implode(',', $_POST['options'][$value]);
                    $this->db->insert('checkboxselectionsxref', $dataArray[$key]);
                }
            }
            $data = array(
                'careerIntrest'         => $this->input->post('careerIntrest'),
                'plannedHighestEduLvl'     => $this->input->post('plannedHighestEduLvl'),
                'collegeHousingPlan'          => $this->input->post('collegeHousingPlan'),
                'financialAid'               => $this->input->post('financialAid'),
                'partTimeJob'               => $this->input->post('partTimeJob'),
                'college_plans_form'        => 1
            );
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('AddCollegePlans') == FALSE)
                {
                    $this->CollegePlans();
                }
                else {
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }
                
            }else{
                $this->load->library('form_validation');
                if ($this->form_validation->run('AddCollegePlans') == FALSE)
                {
                    $this->CollegePlans();
                }
                else {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Mejor_Selection/', 'location');
                }
               
            }

        }
        
        public function StudentCollegePlans($id = NULL) {
            $this->load->model('General_model');
            $stud = $this->General_model->mainStudent($id);
            $data = $stud[0];
            $student = $this->General_model->questionsOptions($id); 
            $data['selected'] = $student;
            $data['questions'] = $this->General_model->questions();
            $data['view'] = 'Forms/collegePlans';    
            $this->template->load_page1($data);
        }
        
        public function Mejor_Selection() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/mejor_Selections';    
            $this->template->load_page1($data);
        }
        
        public function addMejor_Selection($id = NULL) {
            $data = array(
                'areasOfStudyId'    => $this->input->post('areasOfStudyId'),
                'majorId'           => $this->input->post('majorId'),
                'majorSelect_form'  => 1
            );
            // echo '<pre>';
            // print_r($data);
            // exit;
            if(isset($id)){
                $this->load->library('form_validation');
                if ($this->form_validation->run('addMejor_Selection') == FALSE)
                {
                    $this->Mejor_Selection();
                }
                else
                {
                   $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/students/', 'location');
                }  

            }else{
            $this->load->library('form_validation');
                if ($this->form_validation->run('addMejor_Selection') == FALSE)
                {
                    $this->Mejor_Selection();
                }
                else
                {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Mejor_Selection/', 'location');
                }  
            }
        }
        
        public function StudentMejor_Selection($id = NULL) {
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];
            $data['view'] = 'Forms/mejor_Selections';    
            $this->template->load_page1($data);
        }
        
        public function masterGetStudent() {
            $this->load->model('General_model');
            $result = $this->General_model->masterGetStudent();
            echo $result; 
        }
        
        public function finalSubmit() {
            $this->load->model('General_model');
            $result = $this->General_model->finalSubmit();
            echo $result;
            $checkStud = $this->General_model->checkStudent($this->session->userdata('studId'));                        
            $user_session = array(
                'isMandatory' => $checkStud->isMandatory
            );
            $this->session->set_userdata($user_session);
        }
        
        public function checkedOptForms(){
            $this->load->model('General_model');
            $result = $this->General_model->checkedOptForms();
            echo $result;
        }
        
        
        
        public function getcountriescode() {
            $this->load->model('General_model');
            $result = $this->General_model->getcountriescode();
            echo $result;
        }
        
        public function subjectName() {
            $this->load->model('General_model');
            $result = $this->General_model->subjectName();
            echo $result;
        }
        
        public function IBsubjectName() {
            $this->load->model('General_model');
            $result = $this->General_model->IBsubjectName();
            echo $result;
        }
        
        public function getAllCountries() {
            $this->load->model('General_model');
            $result = $this->General_model->getAllCountries();
            echo $result;
        }
        
        public function APsubjectName() {
            $this->load->model('General_model');
            $result = $this->General_model->APsubjectName();
            echo $result;
        }
        public function areasOfStudy() {
            $this->load->model('General_model');
            $result = $this->General_model->areasOfStudy();
            echo $result;
        }
        
        public function forMajor() {
            $this->load->model('General_model');
            $result = $this->General_model->forMajor();
            echo $result;
        }
        
         public function Occupations() {
            $this->load->model('General_model');
            $result = $this->General_model->Occupations();
            echo $result;
        }
         public function schoolName() {
            $this->load->model('General_model');
            $result = $this->General_model->schoolName();
            echo $result;
        }


        public function ScoreSAT(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_SAT';    
		$this->template->load_page1($data);
	}
        
        public function addScoreSAT($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])) {
                $imgFile = $_FILES['scoreCard']['name'];
	        	$tmp_dir = $_FILES['scoreCard']['tmp_name'];
	        	$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                print_r($_FILES);
                if($imgSize < 5000000) {
                    move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            } 
            $data = array(
                'stuId'         => $this->session->userdata('studId'),
                'testDate'      => $this->input->post('testDate'),
                'verbalScore'    => $this->input->post('verbalScore'),
                'quantsScore'   => $this->input->post('quantsScore'),
                'essayScore'    => $this->input->post('essayScore'),
                'scoreCard'     => $picture,
                 'status'        => 1
            );
            
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addScoreSAT') == FALSE)
                {
                        $this->ScoreSAT();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testssatexam', $data);
                    redirect('Home/satTestScore_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addScoreSAT') == FALSE)
                {
                        $this->ScoreSAT();
                }
                else
                {
                    $this->db->insert('testssatexam', $data);
                    redirect('Home/satTestScore_Table/', 'location');
                }
            } 
            
        }
        
        public function studentScoreSAT($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentScoreSAT($id); 
            $data = $student[0];
            // echo '<pre>';
            // print_r($data);
            // exit;
            $data['view'] = 'Forms/test_Score_SAT';    
            $this->template->load_page1($data);
	    }
        
        
        
        
        public function Test_Score_ACT(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_ACT';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_ACT($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'englishScore'      => $this->input->post('englishScore'),
                'mathScore'         => $this->input->post('mathScore'),
                'readingScore'      => $this->input->post('readingScore'),
                'scienceScore'      => $this->input->post('scienceScore'),
                'writingScore'      => $this->input->post('writingScore'),
                'status'            => 1,
                'scoreCard'         => $picture
            );
                   
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_ACT') == FALSE)
                {
                        $this->Test_Score_ACT();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testsact', $data);
                    redirect('Home/testScoreACT_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_ACT') == FALSE)
                {
                        $this->Test_Score_ACT();
                }
                else
                {
                    $this->db->insert('testsact', $data);
                    redirect('Home/testScoreACT_Table/', 'location');
                }
            }
           
        }
        
        public function studentTest_Score_ACT($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_ACT($id); 
            $data = $student[0];
            $data['view'] = 'Forms/test_Score_ACT';    
            $this->template->load_page1($data);
	    }
        
        public function Test_Score_TOEFL_iBT(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_TOEFL_iBT';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_TOEFL_iBT($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'readingScore'      => $this->input->post('readingScore'),
                'listeningScore'      => $this->input->post('listeningScore'),
                'speakingScore'         => $this->input->post('speakingScore'),
                'writingScore'      => $this->input->post('writingScore'),
                'status'            => 1,
                'scoreCard'         => $picture
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_TOEFL_iBT') == FALSE)
                {
                        $this->Test_Score_TOEFL_iBT();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('teststoeflibt', $data);
                    redirect('Home/testScoreTOEFLiBT_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_TOEFL_iBT') == FALSE)
                {
                        $this->Test_Score_TOEFL_iBT();
                }
                else
                {
                    $this->db->insert('teststoeflibt', $data);
                    redirect('Home/testScoreTOEFLiBT_Table/', 'location');
                }
            }
            
        }
        
        public function studentTest_Score_TOEFL_iBT($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_TOEFL_iBT($id); 
            $data = $student[0];
            $data['view'] = 'Forms/test_Score_TOEFL_iBT';    
            $this->template->load_page1($data);
	    }
        
        public function Test_Score_IELTS(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_IELTS';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_IELTS($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'readingScore'           => $this->input->post('readingScore'),
                'listeningScore'             => $this->input->post('listeningScore'),
                'speakingScore'             => $this->input->post('speakingScore'),
                'writingScore'             => $this->input->post('writingScore'),
                'status'                => 1,
                'scoreCard'         => $picture
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_IELTS') == FALSE)
                {
                        $this->Test_Score_IELTS();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testsielts', $data);
                    redirect('Home/testScoreIELTS_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_IELTS') == FALSE)
                {
                        $this->Test_Score_IELTS();
                }
                else
                {
                    $this->db->insert('testsielts', $data);
                    redirect('Home/testScoreIELTS_Table/', 'location');
                }
            }
            
        }
        
        
        public function studentTest_Score_IELTS($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_IELTS($id); 
            $data = $student[0];
            $data['view'] = 'Forms/test_Score_IELTS';    
            $this->template->load_page1($data);
	    }
        
        public function Test_Score_SAT_Subject_Tests(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_SAT_Subject_Tests';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_SAT_Subject_Tests($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'subject'           => $this->input->post('subject'),
                'score'             => $this->input->post('score'),
                'scoreCard'         => $picture
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_SAT_Subject_Tests') == FALSE)
                {
                        $this->Test_Score_SAT_Subject_Tests();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testssatsubject', $data);
                    redirect('Home/SATSubjectTests_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_SAT_Subject_Tests') == FALSE)
                {
                        $this->Test_Score_SAT_Subject_Tests();
                }
                else
                {
                    $this->db->insert('testssatsubject', $data);
                    redirect('Home/SATSubjectTests_Table/', 'location');
                }
            }
            
        }
        
        public function studentTest_Score_SAT_Subject_Tests($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_SAT_Subject_Tests($id); 
            $data = $student[0];
            // echo '<pre>';
            // print_r($data);
            // exit;
            $data['view'] = 'Forms/test_Score_SAT_Subject_Tests';    
            $this->template->load_page1($data);
	    }
        
        
        public function Test_Score_IB_Subject_Test(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_IB_Subject_Test';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_IB_Subject_Test($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'subject'           => $this->input->post('subject'),
                'level'             => $this->input->post('level'),
                'score'             => $this->input->post('score'),
                'scoreCard'         => $picture
            );
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_IB_Subject_Test') == FALSE)
                {
                        $this->Test_Score_IB_Subject_Test();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testibsubject', $data);
                    redirect('Home/IBSubjectTests_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_IB_Subject_Test') == FALSE)
                {
                        $this->Test_Score_IB_Subject_Test();
                }
                else
                {
                    $this->db->insert('testibsubject', $data);
                    redirect('Home/IBSubjectTests_Table/', 'location');
                }
            }
        }
        
        public function studentTest_Score_IB_Subject_Test($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_IB_Subject_Test($id); 
            $data = $student[0];
            $data['view'] = 'Forms/test_Score_IB_Subject_Test';    
            $this->template->load_page1($data);
	    }
        
        public function Test_Score_AP_Subject_Tests(){
		$data['page_title'] = 'Home';
		$data['view'] = 'Forms/test_Score_AP_Subject_Tests';    
		$this->template->load_page1($data);
	}
        
        public function addTest_Score_AP_Subject_Tests($id = NULL) {
            if(!empty($_FILES['scoreCard']['name'])){
                $imgFile = $_FILES['scoreCard']['name'];
        		$tmp_dir = $_FILES['scoreCard']['tmp_name'];
        		$imgSize = $_FILES['scoreCard']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture);
                }
            }
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'testDate'          => $this->input->post('testDate'),
                'subject'           => $this->input->post('subject'),
                'score'             => $this->input->post('score'),
                'scoreCard'         => $picture
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_AP_Subject_Tests') == FALSE)
                {
                        $this->Test_Score_AP_Subject_Tests();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('testsapsubject', $data);
                    redirect('Home/APSubjectTests_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addTest_Score_AP_Subject_Tests') == FALSE)
                {
                        $this->Test_Score_AP_Subject_Tests();
                }
                else
                {
                    $this->db->insert('testsapsubject', $data);
                    redirect('Home/APSubjectTests_Table/', 'location');
                }
            }
            
            
        }
        public function studentTest_Score_AP_Subject_Tests($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentTest_Score_AP_Subject_Tests($id); 
            $data = $student[0];
            $data['view'] = 'Forms/test_Score_AP_Subject_Tests';    
            $this->template->load_page1($data);
	    }
        
        
        
        public function Siblings() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/siblings';    
            $this->template->load_page1($data);
        }
        
        public function addsiblings($id = NULL) {
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'firstName'         => $this->input->post('firstName'),
                'middleInitial'     => $this->input->post('middleInitial'),
                'lastName'          => $this->input->post('lastName'),
                'age'               => $this->input->post('age'),
                'relationship'      => $this->input->post('relationship'),
                'educationLevel'    => $this->input->post('educationLevel')
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addsiblings') == FALSE)
                {
                        $this->Siblings();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('siblings', $data);
                    redirect('Home/Siblings_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addsiblings') == FALSE)
                {
                        $this->Siblings();
                }
                else
                {
                    $this->db->insert('siblings', $data);
                    redirect('Home/Siblings_Table/', 'location');
                }
            }
            
            
        }
        
        public function studentSiblings($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentSiblings($id); 
            $data = $student[0];
            $data['view'] = 'Forms/siblings';    
            $this->template->load_page1($data);
	    }
        
        
        
        public function Addcollege() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/Addcollege';    
            $this->template->load_page1($data);
        }
        
        public function addAddcollege($id = NULL) {
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'collegeName'         => $this->input->post('collegeName'),
                'joiningDate'     => $this->input->post('joiningDate'),
                'courseDetails'          => $this->input->post('courseDetails'),
                'degreeEarned'               => $this->input->post('degreeEarned')
            );
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addAddcollege') == FALSE)
                {
                        $this->Addcollege();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('collegeoruniversity', $data);
                    redirect('Home/CollegeorUniversity_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addAddcollege') == FALSE)
                {
                        $this->Addcollege();
                }
                else
                {
                    $this->db->insert('collegeoruniversity', $data);
                    redirect('Home/CollegeorUniversity_Table/', 'location');
                } 
            }
              
        }
        
        public function studentAddcollege($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentAddcollege($id); 
            $data = $student[0];
            $data['view'] = 'Forms/Addcollege';    
            $this->template->load_page1($data);
	    }
        
        
        
        public function Honors() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/honors';    
            $this->template->load_page1($data);
        }
        
        public function addHonors($id = NULL) {
            $data = array(
                'stuId'             => $this->session->userdata('studId'),
                'honorTitle'         => $this->input->post('honorTitle'),
                'gradeLevel'     => $this->input->post('gradeLevel'),
                'levelOfRecognition'          => $this->input->post('levelOfRecognition')
            );
            
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addHonors') == FALSE)
                {
                        $this->Honors();
                }
                else
                {
                    $this->db->where(["id" => $id]);
                    $this->db->update('honors', $data);
                    redirect('Home/HonorsInformation_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addHonors') == FALSE)
                {
                        $this->Honors();
                }
                else
                {
                    $this->db->insert('honors', $data);
                    redirect('Home/HonorsInformation_Table/', 'location');
                } 
            }
            
            
            
        }
        
        public function studentHonors($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentHonors($id); 
            $data = $student[0];
            $data['view'] = 'Forms/honors';    
            $this->template->load_page1($data);
	    }
        
        public function Essay($id = NULL) {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/essay';    
            $this->template->load_page1($data);
        }
        
        public function addEssay($id = NULL) {
            $data = array(
                'essayOption'         => $this->input->post('essayOption'),
                'essay'     => $this->input->post('essay')
            );
            
            if(isset($id)){
                $this->load->library('form_validation');

                if ($this->form_validation->run('addEssay') == FALSE)
                {
                        $this->Essay();
                }
                else
                {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Essay_Table/', 'location');
                }
                
            }else{
               $this->load->library('form_validation');

                if ($this->form_validation->run('addEssay') == FALSE)
                {
                        $this->Essay();
                }
                else
                {
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/Essay_Table/', 'location');
                }
            }
            
            
            
        }
        
        public function studentEssay($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->mainStudent($id); 
            $data = $student[0];
            $data['view'] = 'Forms/essay';    
            $this->template->load_page1($data);
	    }
        
        public function UploadDoc() {
            $data['page_title'] = 'Home';
            $data['view'] = 'Forms/upload_Documents';    
            $this->template->load_page1($data);
        }
        
        public function addUploadDoc($id = NULL) {
            if(!empty($_FILES['transcript9th']['name'])){
                $imgFile = $_FILES['transcript9th']['name'];
        		$tmp_dir = $_FILES['transcript9th']['tmp_name'];
        		$imgSize = $_FILES['transcript9th']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture1 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture1);
                }
            }
            
            if(!empty($_FILES['transcript10th']['name'])){
                $imgFile = $_FILES['transcript10th']['name'];
        		$tmp_dir = $_FILES['transcript10th']['tmp_name'];
        		$imgSize = $_FILES['transcript10th']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture2 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture2);
                }
            }
            
            if(!empty($_FILES['transcript11th']['name'])){
                $imgFile = $_FILES['transcript11th']['name'];
        		$tmp_dir = $_FILES['transcript11th']['tmp_name'];
        		$imgSize = $_FILES['transcript11th']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture3 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture3);
                }
            }
            
            if(!empty($_FILES['transcript12th']['name'])){
                $imgFile = $_FILES['transcript12th']['name'];
        		$tmp_dir = $_FILES['transcript12th']['tmp_name'];
        		$imgSize = $_FILES['transcript12th']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture4 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture4);
                }
            }
            
            if(!empty($_FILES['lor1']['name'])){
                $imgFile = $_FILES['lor1']['name'];
        		$tmp_dir = $_FILES['lor1']['tmp_name'];
        		$imgSize = $_FILES['lor1']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture5 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture5);
                }
            }
            
            if(!empty($_FILES['lor2']['name'])){
                $imgFile = $_FILES['lor2']['name'];
        		$tmp_dir = $_FILES['lor2']['tmp_name'];
        		$imgSize = $_FILES['lor2']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture6 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture6);
                }
            }
            if(!empty($_FILES['lor3']['name'])){
                $imgFile = $_FILES['lor3']['name'];
        		$tmp_dir = $_FILES['lor3']['tmp_name'];
        		$imgSize = $_FILES['lor3']['size'];
                $upload_dir = 'uploads/'; // upload directory
                $picture7 = rand(1000,1000000).$imgFile;
                if($imgSize < 5000000)				{
                        move_uploaded_file($tmp_dir, $upload_dir. $picture7);
                }
            }
            
            $data = array(
                'transcript9th'     => $picture1,
                'transcript10th'    => $picture2,
                'transcript11th'    => $picture3,
                'transcript12th'    => $picture4,
                'lor1'              => $picture5,
                'lor2'              => $picture6,
                'lor3'              => $picture7
            );
            
            // echo '<pre>';
            // print_r($data);
            // exit;
            if(isset($id)){
                    $this->db->where(["id" => $id]);
                    $this->db->update('students', $data);
                    redirect('Home/UploadDocuments_Table/', 'location');
            }else{
                
                    $this->db->where(["id" => $this->session->userdata('studId')]);
                    $this->db->update('students', $data);
                    redirect('Home/UploadDocuments_Table/', 'location');
                
            }
            
        }
        
        public function studentUploadDoc($id = NULL){
            $this->load->model('General_model');
            $student = $this->General_model->studentUploadDoc($id); 
            $data = $student[0];
            $data['view'] = 'Forms/upload_Documents';    
            $this->template->load_page1($data);
	    }
        
        
/******************************Tabble Section**************************************************************/
        
//        
    public function students() {
        $this->load->model('General_model');
        $data['page_title'] = 'Home';
        $student = $this->General_model->mainStudent($this->session->userdata('studId')); 
        $data = $student[0];
//        print_r($data);
//        exit;
        $data['view'] = 'tables/master_Table';    
        $this->template->load_page1($data);
    }
    
    public function APSubjectTests_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/APSubjectTests_Table'; 
        $data['ap_subject'] = $this->General_model->fetch_APSubjectTests();
        $this->template->load_page1($data);
    }
    
    public function CollegeorUniversity_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/CollegeorUniversity_Table';    
        $data['college_uni'] = $this->General_model->fetch_CollegeorUniversity();
        $this->template->load_page1($data);
    }
    
    public function Essay_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/Essay_Table';    
        $data['essay'] = $this->General_model->fetch_Essay();
        $this->template->load_page1($data);
    }
    
    public function HonorsInformation_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/HonorsInformation_Table'; 
        $data['honors'] = $this->General_model->fetch_HonorsInformation();
        $this->template->load_page1($data);
    }
    
    public function IBSubjectTests_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/IBSubjectTests_Table'; 
        $data['ibsubject'] = $this->General_model->fetch_IBSubjectTests();
        $this->template->load_page1($data);
    }
    
    public function SATSubjectTests_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/SATSubjectTests_Table'; 
        $data['sat_subject'] = $this->General_model->fetch_SATSubjectTests();
        $this->template->load_page1($data);
    }
    
    public function Siblings_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/Siblings_Table'; 
        $data['siblings'] = $this->General_model->fetch_Siblings();
        $this->template->load_page1($data);
    }
    
    public function UploadDocuments_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/UploadDocuments_Table';
        $data['uploads'] = $this->General_model->fetch_UploadDocuments();
        $this->template->load_page1($data);
    }
    
    public function satTestScore_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/satTestScore_Table';
        $data['sat'] = $this->General_model->fetch_satTestScore();
        $this->template->load_page1($data);
    }
    
    public function testScoreACT_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/testScoreACT_Table'; 
        $data['act'] = $this->General_model->fetch_testScoreACT();
        $this->template->load_page1($data);
    }
    
    public function testScoreIELTS_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/testScoreIELTS_Table';
        $data['ielts'] = $this->General_model->fetch_testScoreIELTS();
        $this->template->load_page1($data);
    }
    
    public function testScoreTOEFLiBT_Table() {
        $this->load->model('General_model');
        $data['view'] = 'tables/testScoreTOEFLiBT_Table';
        $data['toeflibt'] = $this->General_model->fetch_testScoreTOEFLiBT();
        $this->template->load_page1($data);
    }
    
    
    
    
        
        
        
        
        
}
