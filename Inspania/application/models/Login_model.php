<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model {

	 public function __construct(){
		// Call the Model constructor
		parent::__construct();
	}

	public function check($data){
		$this->db->where('username', $data['username']);
		$this->db->where('password', $data['password']);
//		$this->db->where('verified', 1);
//		$this->db->where('is_active', 1);
//		$this->db->where('user_role', 3); //user = company
                $result = $this->db->get('users');
                
		if ($result->num_rows() > 0 )
			return $result->row();
		else
			return FALSE;
	}
	
	public function checkStudent($data) {
            $this->db->where('userId', $data);
            $result = $this->db->get('students');
		if ($result->num_rows() > 0 )
			return $result->row();
		else
			return FALSE;
        }
        

	public function userrole(){
		
		$this->db->select('id, name, role'); 
		$this->db->where('role !=', 1); //user = admin
		
		$result = $this->db->get('tbl_user_role');
		if ($result->num_rows() > 0 )
			return $result->result();
		else
			return FALSE;	
	}
}

/* End of file login_model.php */
/* Location: ./application/models/login_model.php */