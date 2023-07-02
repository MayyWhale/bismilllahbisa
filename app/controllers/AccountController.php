<?php 
/**
 * Account Page Controller
 * @category  Controller
 */
class AccountController extends SecureController{
	function __construct(){
		parent::__construct(); 
		$this->tablename = "user";
	}
	/**
		* Index Action
		* @return null
		*/
	function index(){
		$db = $this->GetModel();
		$rec_id = $this->rec_id = USER_ID; //get current user id from session
		$db->where ("id_user", $rec_id);
		$tablename = $this->tablename;
		$fields = array("user.id_user", 
			"user.username", 
			"user.nama_pengguna", 
			"user.email", 
			"user.user_role_id", 
			"roles.role_name AS roles_role_name", 
			"user.alamat", 
			"user.telepon");
		$db->join("roles", "user.user_role_id = roles.role_id", "INNER");
		$user = $db->getOne($tablename , $fields);
		if(!empty($user)){
			$page_title = $this->view->page_title = "Profil";
			$this->render_view("account/view.php", $user);
		}
		else{
			$this->set_page_error();
			$this->render_view("account/view.php");
		}
	}
	/**
     * Update user account record with formdata
	 * @param $formdata array() from $_POST
     * @return array
     */
	function edit($formdata = null){
		$request = $this->request;
		$db = $this->GetModel();
		$rec_id = $this->rec_id = USER_ID;
		$tablename = $this->tablename;
		 //editable fields
		$fields = $this->fields = array("id_user","username","password","nama_pengguna","email","photo","alamat","telepon");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$cpassword = $postdata['confirm_password'];
			$password = $postdata['password'];
			if($cpassword != $password){
				$this->view->page_error[] = "Your password confirmation is not consistent";
			}
			$this->rules_array = array(
				'username' => 'required',
				'nama_pengguna' => 'required',
				'email' => 'valid_email',
			);
			$this->sanitize_array = array(
				'username' => 'sanitize_string',
				'nama_pengguna' => 'sanitize_string',
				'email' => 'sanitize_string',
				'photo' => 'sanitize_string',
				'alamat' => 'sanitize_string',
				'telepon' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			$password_text = $modeldata['password'];
			//update modeldata with the password hash
			$modeldata['password'] = $this->modeldata['password'] = password_hash($password_text , PASSWORD_DEFAULT);
			if($this->validated()){
				$db->where("user.id_user", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->set_flash_msg("Record updated successfully", "success");
					$db->where ("id_user", $rec_id);
					$user = $db->getOne($tablename , "*");
					set_session("user_data", $user);// update session with new user data
					return $this->redirect("account");
				}
				else{
					if($db->getLastError()){
						$this->set_page_error();
					}
					elseif(!$numRows){
						//not an error, but no record was updated
						$this->set_flash_msg("No record updated", "warning");
						return	$this->redirect("account");
					}
				}
			}
		}
		$db->where("user.id_user", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Ubah Profil";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("account/edit.php", $data);
	}
	/**
     * Change account email
     * @return BaseView
     */
	function change_email($formdata = null){
		if($formdata){
			$email = trim($formdata['email']);
			$db = $this->GetModel();
			$rec_id = $this->rec_id = USER_ID; //get current user id from session
			$tablename = $this->tablename;
			$db->where ("id_user", $rec_id);
			$result = $db->update($tablename, array('email' => $email ));
			if($result){
			}
			else{
				$this->set_page_error("Email not changed");
			}
		}
		return $this->render_view("account/change_email.php");
	}
}
