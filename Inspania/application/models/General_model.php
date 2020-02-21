<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class General_model extends CI_Model {
   

    public function __construct() {
        // Call the Model constructor
        parent::__construct();
    }

    public function add($tblname, $data) {        
        $this->db->insert($tblname, $data);
        return $this->db->insert_id();
    }



    public function modify($tblname, $colname, $id, $data) {
        $this->db->where($colname, $id);
        $this->db->update($tblname, $data);
        return TRUE;
    }



    public function delete($tblname, $colname, $id) {
        $this->db->where($colname, $id);
        $this->db->delete($tblname);
        return TRUE;
    }


    public function get_single_row_by_id($tblName, $colname, $id, $returnType = '') {
        $this->db->where($colname, $id);
        $result = $this->db->get($tblName);
        if ($result->num_rows() > 0) {
            if ($returnType == 'array')
                return $result->row_array();
            else
                return $result->row();
        }
        else
            return FALSE;
    }



    public function username_check($username, $id) {
        $this->db->where('username', $username);
        $this->db->where_not_in('user_id_PK', $id);
        $result = $this->db->get(TBL_USERS);
        if ($result->num_rows() > 0)
        {
            return TRUE;
        }else{
            return FALSE;
        }
    }

    public function admin_email() {
        $this->db->where('user_id_PK', 1);
        $result = $this->db->get(TBL_USERS);
        if ($result->num_rows() > 0) {
            $email = $result->row();
            return $email->email;
        }
        else
            return FALSE;
    }

    public function randomPrefix($length) {
        $random = "";
        srand((double) microtime() * 1000000);

        $data = "AbcDE123IJKLMN67QRSTUVWXYZ";
        $data .= "aBCdefghijklmn123opq45rs67tuv89wxyz";
        $data .= "0FGH45OP89";

        for ($i = 0; $i < $length; $i++) {
            $random .= substr($data, (rand() % (strlen($data))), 1);
        }

        return $random;
    }
    
    public function checkedOptForms() {        
        // $ref1 = $this->db->query('SELECT (SELECT status FROM `testssatexam` WHERE stuId= '.$this->session->userdata('studId').') as "SAT", (SELECT status FROM testsact WHERE stuId= '.$this->session->userdata('studId').') as "ACT", (SELECT status FROM testsielts WHERE stuId='.$this->session->userdata('studId').') as "IELTS", (SELECT status FROM testsielts WHERE stuId='.$this->session->userdata('studId').') as "TOEFL" FROM DUAL');
        $ref1 = $this->db->query('SELECT (SELECT Count(*) FROM `testssatexam` WHERE stuId= '.$this->session->userdata('studId').') as "SAT"');
        $ref2 = $this->db->query('SELECT (SELECT Count(*) FROM `testsact` WHERE stuId= '.$this->session->userdata('studId').') as "ACT"');
        $ref3 = $this->db->query('SELECT (SELECT Count(*) FROM `testsielts` WHERE stuId= '.$this->session->userdata('studId').') as "IELTS"');
        $ref4 = $this->db->query('SELECT (SELECT Count(*) FROM `teststoeflibt` WHERE stuId= '.$this->session->userdata('studId').') as "TOEFL"');
        
        $row1 = $ref1->result_array();
        $row2 = $ref2->result_array();
        $row3 = $ref3->result_array();
        $row4 = $ref4->result_array();
        return json_encode(array('status' => true, 'message' => 'success', 'a' => $row1, 'b'=>$row2, 'c' =>$row3, 'd'=>$row4) );
        // return $row1;
        // if (count($row1) > 0) {
        //     return json_encode(array('status' => true, 'message' => 'success', 'a' => $ref1, 'b'=>$ref2, 'c' =>$ref3, 'd'=>$ref4) );
        // } else {
        //     return json_encode(array('status' => false, 'message' => 'no data'));
        // }
    }
    
    

    public function getCountries() {
        $this->db->select('id, country_name, internet'); 
        $result = $this->db->get(TBL_COUNTRIES);
        if ($result->num_rows() > 0 )
            return $result->result_array();
        else
            return FALSE;
    }


    
    public function getcountriescode() {
        $refdata = $this->db->query('SELECT * FROM `lookupcountrycode`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'Countries' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    public function subjectName() {
        $refdata = $this->db->query('SELECT * FROM `lookupsatsubjecttestsubjects`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'subjectName' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function APsubjectName() {
        $refdata = $this->db->query('SELECT * FROM `lookupapsubjects`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'APsubjectName' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function IBsubjectName() {
        $refdata = $this->db->query('SELECT * FROM `lookupibsubjects`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'subjectName' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function getAllCountries() {
        $refdata = $this->db->query('SELECT * FROM `lookupcountry`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'countries' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function areasOfStudy() {
        $refdata = $this->db->query('SELECT * FROM `lookupareasofstudy`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'subjectName' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function forMajor() {
        $data = json_decode($this->input->raw_input_stream);
        $refdata = $this->db->query('SELECT * FROM `lookupareaofstudymajors` WHERE `areasOfStudyId`="'.$data->areasOfStudyId.'"');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'subjectName' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function Occupations() {
        $refdata = $this->db->query('SELECT * FROM `lookupoccupations`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'Occupations' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    public function schoolName() {
       $refdata = $this->db->query('SELECT `id`,`schoolName` FROM `schools`');
            $row = $refdata->result();
            if (count($row) > 0) {
                return json_encode(array('status' => true, 'message' => 'success', 'school' => $row));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
       
    public function questions() {
        $refdata = $this->db->query('SELECT id, question FROM `checkboxquestions`');
         $row = $refdata->result();
//         echo '<pre>';
         $response=array();
         foreach ($row as $key => $value) {
            $optData = $this->db->query('SELECT id,options FROM `checkboxoptions` where questionId= '.$value->id); 
            $row1 = $optData->result();
         
         $value->options=$row1;
         $response[$key]=$value;
         }
         return $response;
//         print_r($response);
//         exit();
    }
    
    public function masterGetStudent() {
        $this->db->select('*');
        $refdata = $this->db->get('students');
        $row = $refdata->result();
        if (count($row) > 0) {
            return json_encode(array('status' => true, 'message' => 'success', 'StudentData' => $row));
        } else {
            return json_encode(array('status' => false, 'message' => 'no data'));
        }
    }
    public function finalSubmit() {
        $data = json_decode($this->input->raw_input_stream);
        $this->db->where(["id" => $this->session->userdata('studId')]);
        $result = $this->db->update('students', $data);
        if ($result) {
                return json_encode(array('status' => true, "message" => "Final Submission Successfully"));
            } else {
                return json_encode(array('status' => false, 'message' => 'Failed to add Data'));
            }
    }
    
    public function LastApply() {
        $data = json_decode($this->input->raw_input_stream);
        $this->db->where(["id" => $this->session->userdata('studId')]);
        $result = $this->db->update('students', $data);
        if ($result) {
                return json_encode(array('status' => true, "message" => "Final Submission Successfully"));
            } else {
                return json_encode(array('status' => false, 'message' => 'Failed to add Data'));
            }
    }
    
    
    
    public function masterGetStudentById() {
            $this->db->select('*');
            $this->db->where('id', $this->session->userdata('studId'));
            $refdata = $this->db->get('students');  
            $row = $refdata->result_array();
            if ($row){
                return json_encode(array('status' => true, 'message' => 'success', 'StudentData' => $row[0]));
            } else {
                return json_encode(array('status' => false, 'message' => 'no data'));
            }
    }
    
    
    
    public function checkStudent($data) {
        $this->db->where('id', $data);
        $result = $this->db->get('students');
            if ($result->num_rows() > 0 )
                    return $result->row();
            else
                    return FALSE;
    }
    public function getStudent($responce){
            $this->db->where('id', $responce);
            $result = $this->db->get('students');                
            if ($result->num_rows() > 0 )
                    return $result->row();
            else
                    return FALSE;
    }
    
     public function mainStudent($data1) {
            $this->db->where('id', $data1);
            $result = $this->db->get('students');
            return $row=$result->result_array();
        }
        
    public function mainschool($data1) {
            $this->db->where('stuId', $data1);
            $result = $this->db->get('schools');
            return $row=$result->result_array();
        }
    public function questionsOptions($data1) {
            $this->db->where('stuId', $data1);
            $result = $this->db->get('checkboxselectionsxref');
            return $row=$result->result_array();
        }
    public function mainStudentMajor($data1) {
            $this->db->where('stuId', $data1);
            $result = $this->db->get('xrefmajorsselections');
            return $row=$result->result_array();
        }    
    //*********************OPTIONAL FORMS******************************//
        
        public function fetch_satTestScore($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('testssatexam');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        } 
        
        public function fetch_APSubjectTests($params = "", $page = "all", $count=false) {
            $this->db->select('testsapsubject.id, score,testDate, lookupapsubjects.APsubjectName');
            $this->db->from('testsapsubject');
            $this->db->join('lookupapsubjects', 'testsapsubject.subject = lookupapsubjects.id');
            $this->db->where('testsapsubject.stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_CollegeorUniversity($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('collegeoruniversity');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_Essay($params = "", $page = "all", $count=false) {
            $this->db->select('id, essayOption, essay');
            $this->db->from('students');
            $this->db->where('id', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
//            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_HonorsInformation($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('honors');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_IBSubjectTests($params = "", $page = "all", $count=false) {
            $this->db->select('testibsubject.id, score, level,testDate, lookupibsubjects.subjectName');
            $this->db->from('testibsubject');
            $this->db->join('lookupibsubjects', 'testibsubject.subject = lookupibsubjects.id');
            $this->db->where('testibsubject.stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("testibsubject.id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_SATSubjectTests($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('testssatsubject');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_Siblings($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('siblings');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_UploadDocuments($params = "", $page = "all", $count=false) {
            $this->db->select('id, transcript9th, transcript10th, transcript11th, transcript12th, lor1, lor2, lor3');
            $this->db->from('students');
            $this->db->where('id', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
//            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_testScoreACT($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('testsact');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_testScoreIELTS($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('testsielts');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function fetch_testScoreTOEFLiBT($params = "", $page = "all", $count=false) {
            $this->db->select('*');
            $this->db->from('teststoeflibt');
            $this->db->where('stuId', $this->session->userdata('studId'));
//             $this->db->where("isdeleted='0'");
            $this->db->order_by("id", "desc");
            $result = $this->db->get();
            if ($result->num_rows() > 0)
                return $result->result();
            return FALSE;
        }
        
        public function studentScoreSAT($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testssatexam');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_ACT($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testsact');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_TOEFL_iBT($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('teststoeflibt');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_IELTS($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testsielts');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_SAT_Subject_Tests($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testssatsubject');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_IB_Subject_Test($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testibsubject');
            return $row=$result->result_array();
        }
        
        public function studentTest_Score_AP_Subject_Tests($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('testsapsubject');
            return $row=$result->result_array();
        }
        
        public function studentSiblings($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('siblings');
            return $row=$result->result_array();
        }
        
        public function studentAddcollege($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('collegeoruniversity');
            return $row=$result->result_array();
        }
        
        public function studentHonors($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('honors');
            return $row=$result->result_array();
        }
        
        public function studentUploadDoc($data) {
            $this->db->where('id', $data);
            $result = $this->db->get('students');
            return $row=$result->result_array();
        }
        
        
        
        
        
    
}

/* End of file general_model.php */
/* Location: ./application/models/general_model.php */