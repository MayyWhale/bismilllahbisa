<?php 
/**
 * Disposisi_masuk Page Controller
 * @category  Controller
 */
class Disposisi_masukController extends SecureController{
	function __construct(){
		parent::__construct();
		$this->tablename = "disposisi_masuk";
	}
	/**
     * List page records
     * @param $fieldname (filter record by a field) 
     * @param $fieldvalue (filter field value)
     * @return BaseView
     */
	function index($fieldname = null , $fieldvalue = null){
		$request = $this->request;
		$db = $this->GetModel();
		$tablename = $this->tablename;
		$fields = array("disposisi_masuk.id_surat", 
			"surat_masuk.nomor_surat AS surat_masuk_nomor_surat", 
			"disposisi_masuk.sifat_surat", 
			"sifat_surat.sifat_surat AS sifat_surat_sifat_surat", 
			"disposisi_masuk.catatan", 
			"disposisi_masuk.id_user", 
			"user.nama_pengguna AS user_nama_pengguna");
		$pagination = $this->get_pagination(MAX_RECORD_COUNT); // get current pagination e.g array(page_number, page_limit)
		//search table record
		if(!empty($request->search)){
			$text = trim($request->search); 
			$search_condition = "(
				disposisi_masuk.id_disposisi LIKE ? OR 
				disposisi_masuk.id_surat LIKE ? OR 
				disposisi_masuk.sifat_surat LIKE ? OR 
				disposisi_masuk.catatan LIKE ? OR 
				disposisi_masuk.id_user LIKE ?
			)";
			$search_params = array(
				"%$text%","%$text%","%$text%","%$text%","%$text%"
			);
			//setting search conditions
			$db->where($search_condition, $search_params);
			 //template to use when ajax search
			$this->view->search_template = "disposisi_masuk/search.php";
		}
		$db->join("surat_masuk", "disposisi_masuk.id_surat = surat_masuk.id_surat", "INNER");
		$db->join("sifat_surat", "disposisi_masuk.sifat_surat = sifat_surat.id_sifat", "INNER");
		$db->join("user", "disposisi_masuk.id_user = user.id_user", "INNER");
		if(!empty($request->orderby)){
			$orderby = $request->orderby;
			$ordertype = (!empty($request->ordertype) ? $request->ordertype : ORDER_TYPE);
			$db->orderBy($orderby, $ordertype);
		}
		else{
			$db->orderBy("disposisi_masuk.id_disposisi", ORDER_TYPE);
		}
		$db->where("disposisi_masuk.id_user", get_active_user('id_user') );
		if($fieldname){
			$db->where($fieldname , $fieldvalue); //filter by a single field name
		}
		$tc = $db->withTotalCount();
		$records = $db->get($tablename, $pagination, $fields);
		$records_count = count($records);
		$total_records = intval($tc->totalCount);
		$page_limit = $pagination[1];
		$total_pages = ceil($total_records / $page_limit);
		$data = new stdClass;
		$data->records = $records;
		$data->record_count = $records_count;
		$data->total_records = $total_records;
		$data->total_page = $total_pages;
		if($db->getLastError()){
			$this->set_page_error();
		}
		$page_title = $this->view->page_title = "Disposisi Masuk";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		$this->render_view("disposisi_masuk/list.php", $data); //render the full page
	}
// No View Function Generated Because No Field is Defined as the Primary Key on the Database Table
}
