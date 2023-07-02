<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="fa fa-home fa-2x"></i>'
		),
		
		array(
			'path' => '/', 
			'label' => 'Master Data', 
			'icon' => '<i class="fa fa-database fa-2x"></i>','submenu' => array(
		array(
			'path' => 'user', 
			'label' => 'Pengguna', 
			'icon' => '<i class="fa fa-user fa-2x"></i>'
		),
		
		array(
			'path' => 'pegawai', 
			'label' => 'Pegawai', 
			'icon' => '<i class="fa fa-users fa-2x"></i>'
		)
	)
		),
		
		array(
			'path' => 'surat_masuk', 
			'label' => 'Surat Masuk', 
			'icon' => '<i class="fa fa-inbox fa-2x"></i>'
		),
		
		array(
			'path' => 'disposisi', 
			'label' => 'Disposisi', 
			'icon' => '<i class="fa fa-send-o fa-2x"></i>'
		),
		
		array(
			'path' => 'disposisi_masuk', 
			'label' => 'Disposisi Masuk', 
			'icon' => '<i class="fa fa-file-o fa-2x"></i>'
		),
		
		array(
			'path' => 'laporan', 
			'label' => 'Laporan', 
			'icon' => '<i class="fa fa-files-o fa-2x"></i>'
		)
	);
		
	
	
}