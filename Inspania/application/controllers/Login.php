<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Login extends CI_Controller {


	public function __construct(){
		parent::__construct();
		//load login model
		$this->load->library('session');
		$this->load->model('login_model');
	}
    
//        public function index(){
//		$data['page_title'] = 'Home';
//		$data['view'] = 'login_view';    
//		$this->template->load_page1($data);
//	}
        
        public function register(){
// 		$data['page_title'] = 'Home';
// 		$data['view'] = 'registration';    
// 		$this->template->load_page1($data);
$this->load->view('registration');
	}
        
//        function userRegister() {
//           // echo 'Hii';
//            $data = array(
//                        'username' => $this->input->post('username'),
//                        'password' => $this->input->post('password'),
//                        'emailAddress' => $this->input->post('emailAddress')
//                    );
//            $this->db->insert('users',$data);
//            redirect('Home/', 'location');
//        }
         function userRegister() {
         
                //Setting up validations
                    $this->load->library('form_validation');
                    $this->form_validation->set_rules('username', 'Machine Name', 'required|trim');
                    $this->form_validation->set_rules('password', 'Inventory Code', 'required|trim');
                    $this->form_validation->set_rules('emailAddress', 'Serial Number', 'required|trim');

                    if ($this->form_validation->run() == FALSE){

                        $this->register();
                    }
           
                    $data = array(
                        'username' => $this->input->post('username'),
                        'password' => $this->input->post('password'),
                        'emailAddress' => $this->input->post('emailAddress')
                    );
                    $this->db->insert('users',$data);
                    
                    $last_id = $this->db->insert_id();
                    
                    $data = array(
                        'userId' => $last_id
                    );
                    $this->db->insert('students',$data);
                    
                    
                    $this->send_registration($this->input->post('emailAddress'));
                    
                    $this->session->set_flashdata('success', 'Verfication email sent successfully, it may take upto 2 mins for the verification email to arrive. Please verify to login.');
                    
                    redirect('Login/', 'location');
                 
        }
                
        
	public function index(){
		$this->in();	
	}
//	
//
	public function in(){
 	
		if($this->input->post('Login')){
                    
			$data['username'] = $this->input->post('username');
			$data['password'] = $this->input->post('password');
			
                        
			$logged_in = $this->login_model->check($data);
			if ($logged_in){
			    
			    if($logged_in->status ==1){
            	     $checkStud = $this->login_model->checkStudent($logged_in->id);
                                if ($checkStud->isMandatory == "1"){
                                    $user_session = array(
                                        'userId' => $logged_in->id,
                                        'studId' => $checkStud->id,
                                        'isMandatory' => $checkStud->isMandatory
                                    );
                                    $this->session->set_userdata($user_session);                      
                                    redirect('Home/students', 'location');
                                }else{
                                    $user_session = array(
                                        'userId' => $logged_in->id,
                                        'studId' => $checkStud->id,
                                        'isMandatory' => $checkStud->isMandatory
                                    );
                                    $this->session->set_userdata($user_session);                      
                                    redirect('Home/PersonelInfo', 'location');
                                }
                     
            	}else{
            	   	$this->session->set_flashdata('error', 'Your account is not verified.');
            	    redirect('Login', 'location');
            	}
			    

			}else
				$this->_drawForm('Login info is not valid.');	
		}else{
                    $this->_drawForm();                
                }
	}

	private function _drawForm($error = NULL){
		$user_session = array(
                    'userId' => FALSE,
                     'studId' => FALSE,
                      'isMandatory' => FALSE
                );
                $this->session->set_userdata($user_session);		
		$data['error'] = $error;
		$data['page_title'] = 'Login';                
		$data['view'] = 'login_view';
//		print_r($data);
//                        exit();				
// 		$this->template->load_page($data);
        $this->load->view('login_view', $data);
	}
//	
	public function out(){
		$user_session = array(
                    'userId' => FALSE,
                     'studId' => FALSE,
                      'isMandatory' => FALSE
                );
                $this->session->set_userdata($user_session);	
		redirect('Login', 'location');
	}
//	
//	public function forgot(){
//		
//		//if user already loggedin
//		if ( $this->session->userdata('user_id') && ($this->session->userdata('user_role') == 3))
//			redirect('home', 'location');
//			
//		if($this->input->post('reset')){
//			//Setting up validations
//			$this->load->library('form_validation');
//			$this->form_validation->set_rules('email','email','required|trim|valid_email|max_length[100]|callback__emailCheck');
//			if ($this->form_validation->run() == FALSE){
//				$data['page_title'] = 'Login';
//				$data['view'] = 'login_view';
//				$this->template->load_page($data);	
//			}else{
//				$email = $this->input->post('email', TRUE);
//				$data = $this->general_model->get_single_row_by_id('tbl_users', 'email', $email, 'array');
//							   
//				//create mail template 
//				$user_email = $this->general->email_template($user_subject, $user_message);
//                                
//                $data['body_hade_msg'] = 'Please click the below link to create new password ';
//                $user_subject = "[SA4I] Forgot password - ".date($this->config->item('date_format'));
//                $head_text = 'Forgot password';        
//
//                $user_message = $this->load->view('maillogin_view', $data, TRUE);
//
//                //create mail template 
//                $user_email = $this->general->email_template($head_text, $user_message); 
//                                
//				// send mail to user
//				$this->general->send_mail($data['email'], $this->general->admin_email(), $this->config->item('site_name'), $user_subject, $user_email);
//				$this->session->set_flashdata('pass_reset', 'Reset password link has been sent to mail.');
//				redirect('login/forgot');
//			}
//		}else{
//			$data['page_title'] = 'Login';
//			$data['view'] = 'login_view';
//			$this->template->load_page($data);
//		}
//			
//	}
//	
//	public function forgotPassword(){
//		
//		//if user already loggedin
//		if ( $this->session->userdata('user_id') && ($this->session->userdata('user_role') == 3))
//			redirect('home', 'location');
//			
//		if($this->input->post('changepass')){
//			//Setting up validations
//			$this->load->library('form_validation');
//			
//			$this->form_validation->set_rules('new_pass','New password','required|trim|min_length[5]|max_length[16]|md5');
//			$this->form_validation->set_rules('c_new_pass','Confirm new password','required|trim|min_length[5]|max_length[16]|matches[new_pass]');
//						
//			if ($this->form_validation->run() == FALSE){ 
//				$data['page_title'] = 'Forgot password';
//				$data['view'] = 'profile/changepass_view';
//				$this->template->load_page($data);
//			}
//			else {	 
//				$data['password'] = $this->input->post('new_pass', TRUE);
//				$this->general_model->modify('tbl_users', 'act_key', $this->uri->segment(3), $data);
//				$this->session->set_flashdata('reset_pass', 'Password reset successfully.');
//				redirect('login/forgotPassword/'.$this->uri->segment(3), 'location');
//			}
//		}else{
//			$data['page_title'] = 'Forgot password';
//			$data['view'] = 'profile/changepass_view';
//			$result = $this->general_model->get_single_row_by_id('tbl_users', 'act_key', $this->uri->segment(3));
//			if(!$result)
//				redirect('home', 'location');
//			
//			$this->template->load_page($data);
//		}
//			
//	}
//
//	function _emailCheck(){
//		
//		$result = $this->general_model->get_single_row_by_id('tbl_users', 'email', $this->input->post('email', TRUE));
//		if ($result)
//			return TRUE;
//		else{
//			$this->form_validation->set_message('_emailCheck', 'This email does not exist in our system.');
//			return FALSE;
//		}
//			
//		
//	}

    /**email verification code**/
    function verify($email){
        $emailp = base64_decode($email);
        $result = $this->general_model->get_single_row_by_id('users', 'emailAddress', $emailp);
        if($result){
                $user_id = $result->id;
            	$update['status'] = 1;
				$this->general_model->modify('users', 'id', $user_id, $update);
				$user_session = array(
                            'isLogin' => '2'
                        );
				$this->session->set_userdata($user_session);
				redirect('home', 'location');
        }else{
            
               	$this->session->set_flashdata('error', 'Your account is not verified.');
				redirect('login', 'location');
        }
    }
    
    function send_registration($email){
                   $from = "info@globaltalentsearch.us";
				   $subject = "Registration verification email from globaltalentsearch.us website!";
				   
				   $c_email = base64_encode($email);
            	   $url = base_url().'login/verify/'.$c_email;
						   
				   $oswald = "Oswald";
				   $pt = "PT Sans";
				   $messg = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
					<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
					<title>Global Talent Search</title>
					<meta charset="utf-8" />
					<meta name="viewport" content="width=device-width, initial-scale=1.0" />
					<link href="https://fonts.googleapis.com/css?family=Oswald:400,300,700" rel="stylesheet" type="text/css">
					<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css">
					</head>
					<body style="background:#e9e9e9;margin:0;padding:0;">
					<div style="max-width: 100%;margin: 0 auto;border: solid #afc9f8;;background: #ffffff;">
					<div style="" align="center">
					<h1 style="color: #676a6c;font-size: 60px;font-weight: 500;">GTS</h1>
			 
					<p>Please click on the below link for verification</p>
		   
					<p style="font-size: 15px; color: #000000; line-height: 18px; font-family: \'PT Sans\',sans-serif; background: #ffffff; font-weight: 600;"><a href="'.$url.'">Click here</a></p>
					</div>
					</div></div></div></body></html>'; 
                
		  
					$config['protocol'] = 'sendmail';
					$config['mailpath'] = '/usr/sbin/sendmail';
					$config['charset'] = 'iso-8859-1';
					$config['wordwrap'] = TRUE;
					$config['mailtype'] = 'html'; // Append This Line	
			
					$this->load->library('email',$config);
					$this->email->set_newline("\r\n");
					$this->email->from($from,'Global Talent Search'); // change it to yours
					$this->email->to($email);// change it to yours
					$this->email->subject($subject);
					$this->email->message($messg);
					$this->email->send();
    }

    /**saving fb user data into db**/
    function saveUserData(){
        $userData = $this->input->post('userData');
        $name = $userData['first_name'].' '.$userData['last_name'];
        $email = $userData['email'];
        $fbid = $userData['id'];
        $result = $this->general_model->get_single_row_by_id('users', 'emailAddress', $email);
        if ($result){
            	$result_data = $result;
            	if($result_data->status ==1){
            	    /*$user_session = array(
                            'isLogin' => '2'
                        );
                     $this->session->set_userdata($user_session);
                     echo 2;*/
                     $last_id = $result_data->id;
                     $result = $this->redirectUser($last_id);
                     echo $result;
            	}else{
            	     echo 1;
            	}
        }
		else{
			/**insert into tb**/
			$data = array(
                        'username' => $name,
                        'emailAddress' => $email,
                        'sfb_id' => $fbid,
                        'status' => 1
                    );
            $this->db->insert('users',$data);
            $last_id =  $this->db->insert_id();
            $data1 = array(
                        'userId' => $last_id
                    );
            $this->db->insert('students',$data1);
            
            $result = $this->redirectUser($last_id);
            echo $result;
           /* $user_session = array(
                            'isLogin' => '2'
                        );
                     $this->session->set_userdata($user_session);
                     echo 2;*/
            //sent email confirmation
            //$this->send_registration($email);     
            
            //echo 0;
		}
    }
    /**forgot password**/
    function forgot(){
        $email = $this->input->post('email');
        $result = $this->general_model->get_single_row_by_id('users', 'emailAddress', $email);
        if ($result){
               
           //send reset mail
           
              $expFormat = mktime(
               date("H"), date("i"), date("s"), date("m") ,date("d")+1, date("Y")
               );
               $expDate = date("Y-m-d H:i:s",$expFormat);
               $key = md5(2418*2+$email);
               $addKey = substr(md5(uniqid(rand(),1)),3,10);
               $key = $key . $addKey;
               
               $data = array(
                        'emailAddress' => $email,
                        'keyURL' => $key,
                        'expDate' => $expDate
                    );
               $this->db->insert('users_reset',$data);
           
               $link = base_url().'login/recover/'.base64_encode($email).'/'.$key;
               $this->forgotmailTemplate($link,$email);
               
               $this->session->set_flashdata('success', 'Recovery email sent successfully.');
			   redirect('login', 'location');
         
        }else{
            
               	$this->session->set_flashdata('error', 'This email does not exist in our system.');
				redirect('login', 'location');
        }
    }
    
    function forgotmailTemplate($link,$email){
                   $from = "info@globaltalentsearch.us";
				   $subject = "Confirmation Link for resetting the password";
						   
				   $oswald = "Oswald";
				   $pt = "PT Sans";
				   $messg = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
					<html xmlns="http://www.w3.org/1999/xhtml">
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
					<title>Global Talent Search</title>
					<meta charset="utf-8" />
					<meta name="viewport" content="width=device-width, initial-scale=1.0" />
					<link href="https://fonts.googleapis.com/css?family=Oswald:400,300,700" rel="stylesheet" type="text/css">
					<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css">
					</head>
					<body style="background:#e9e9e9;margin:0;padding:0;">
					<div style="max-width: 100%;margin: 0 auto;border: solid #afc9f8;;background: #ffffff;">
					<div style="" align="center">
					<h1 style="color: #676a6c;font-size: 60px;font-weight: 500;">GTS</h1>
			 
					<p>Please click over reset password link mentioned below</p>
		   
					<p style="font-size: 15px; color: #000000; line-height: 18px; font-family: \'PT Sans\',sans-serif; background: #ffffff; font-weight: 600;"><a href="'.$link.'">Click here</a></p>
					</div>
					</div></div></div></body></html>'; 
                
		  
					$config['protocol'] = 'sendmail';
					$config['mailpath'] = '/usr/sbin/sendmail';
					$config['charset'] = 'iso-8859-1';
					$config['wordwrap'] = TRUE;
					$config['mailtype'] = 'html'; // Append This Line	
			
					$this->load->library('email',$config);
					$this->email->set_newline("\r\n");
					$this->email->from($from,'Global Talent Search'); // change it to yours
					$this->email->to($email);// change it to yours
					$this->email->subject($subject);
					$this->email->message($messg);
					$this->email->send();
    }
    
    function recover($emailid,$key){
        $email = base64_decode($emailid);  
	  
        $curDate = date("Y-m-d H:i:s");
        
       	$this->db->where('keyURL', $key);
		$this->db->where('emailAddress', $email);
        $result = $this->db->get('users_reset');
         
		if ($result->num_rows() > 0 ){
    	    $data['num_q'] = $result->num_rows();
            $data['result'] = $result->row();
            $data['emailid'] = $emailid;
            $data['page_title'] = 'Recover Password';                
		    $data['view'] = 'reset_view';
		    $this->load->view('reset_view',$data);
		    //$this->template->load_page($data);
		}
		else{
			$this->session->set_flashdata('error', 'Please try to reset the password again!');
			redirect('login', 'location');
		}
    }
    
    function resetp(){
		
		$npassword = trim($this->input->post('password'));
    	$emailid = trim($this->input->post('email'));
    	$email = base64_decode($emailid);
    	
    	$user_id = $result->id;
        $update['password'] = $npassword;
		$this->general_model->modify('users', 'emailAddress', $email, $update);
    	
    	$this->general_model->delete('users_reset', 'emailAddress', $email);
		
		$this->session->set_flashdata('success', 'Password changed successfully');
		redirect('login', 'location');
	}
	
	function email_check(){
	     $email = $this->input->post('email');
	     $result = $this->general_model->get_single_row_by_id('users', 'emailAddress', $email);
	     if ($result){
	         return 0;
	     }else{
	          return 1;
	     }
	}
	
	function redirectUser($id){
	     $checkStud = $this->login_model->checkStudent($id);
         if ($checkStud->isMandatory == "1"){
                $user_session = array(
                       'userId' => $id,
                       'studId' => $checkStud->id,
                       'isMandatory' => $checkStud->isMandatory
                );
                $this->session->set_userdata($user_session);                      
                return 'Home/students';
         }else{
                $user_session = array(
                      'userId' => $id,
                      'studId' => $checkStud->id,
                       'isMandatory' => $checkStud->isMandatory
                );
                $this->session->set_userdata($user_session);                      
                return 'Home/PersonelInfo';
         }
	}
	
	/**saving google user data into db**/
    function saveUserData1(){
        $userData = $this->input->post('userData');
        $email = $this->input->post('email');
        $name = $userData['displayName'];
        $googleid = $userData['id'];
        $result = $this->general_model->get_single_row_by_id('users', 'emailAddress', $email);
        if ($result){
            	$result_data = $result;
            	if($result_data->status ==1){
            	        $last_id = $result_data->id;
                        $result = $this->redirectUser($last_id);
                        echo $result;
            	    /*$user_session = array(
                            'isLogin' => '2'
                        );
                    // $this->session->set_userdata($user_session);
                    // echo 2;*/
            	}else{
            	     echo 1;
            	}
        }
		else{
			/**insert into tb**/
			$data = array(
                        'username' => $name,
                        'emailAddress' => $email,
                        'sfb_id' => $googleid,
                        'status' => 1
                    );
            $this->db->insert('users',$data);
            $last_id = $this->db->insert_id();
            
            $data1 = array(
                        'userId' => $last_id
                    );
            $this->db->insert('students',$data1);
            
            $result = $this->redirectUser($last_id);
            echo $result;
            //sent email confirmation
           //$this->send_registration($email);     
            
           // echo 0;
		}
    }	
}

/* End of file login.php */
/* Location: ./application/controllers/login.php */