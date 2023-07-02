<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * disposisi_id_surat_option_list Model Action
     * @return array
     */
	function disposisi_id_surat_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_surat AS value,nomor_surat AS label FROM surat_masuk";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * disposisi_sifat_surat_option_list Model Action
     * @return array
     */
	function disposisi_sifat_surat_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_sifat AS value,sifat_surat AS label FROM sifat_surat";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * disposisi_id_user_option_list Model Action
     * @return array
     */
	function disposisi_id_user_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_user AS value,username AS label FROM user";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * surat_masuk_nomor_surat_value_exist Model Action
     * @return array
     */
	function surat_masuk_nomor_surat_value_exist($val){
		$db = $this->GetModel();
		$db->where("nomor_surat", $val);
		$exist = $db->has("surat_masuk");
		return $exist;
	}

	/**
     * user_user_role_id_option_list Model Action
     * @return array
     */
	function user_user_role_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT role_id AS value, role_name AS label FROM roles";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * laporan_no_surat_option_list Model Action
     * @return array
     */
	function laporan_no_surat_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_surat AS value,nomor_surat AS label FROM surat_masuk";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * laporan_disposisi_option_list Model Action
     * @return array
     */
	function laporan_disposisi_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT DISTINCT id_user AS value , username AS label FROM user ORDER BY label ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * getcount_suratmasuk Model Action
     * @return Value
     */
	function getcount_suratmasuk(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM surat_masuk";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_disposisi Model Action
     * @return Value
     */
	function getcount_disposisi(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM disposisi";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_disposisimasuk Model Action
     * @return Value
     */
	function getcount_disposisimasuk(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM disposisi_masuk";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_user Model Action
     * @return Value
     */
	function getcount_user(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM user";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

}
