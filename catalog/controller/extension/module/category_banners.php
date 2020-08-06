<?php
class ControllerExtensionModuleCategoryBanners extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/category_banner');
		$this->load->model('catalog/category');
		// echo "<pre>";print_r($setting);exit();

		$main_banner = $setting['image_main_banner'];
		if (is_file(DIR_IMAGE . $main_banner)) {
			$data['main_banner'] = $this->model_tool_image->resize($main_banner, 800, 800);
		} else {
			$data['main_banner'] = $this->model_tool_image->resize('placeholder.png', 800, 800);
		}
		$sub_banner1 = $setting['image_sub_banner1'];
		if (is_file(DIR_IMAGE . $sub_banner1)) {
			$data['sub_banner1'] = $this->model_tool_image->resize($sub_banner1, 500, 500);
		} else {
			$data['sub_banner1'] = $this->model_tool_image->resize('placeholder.png', 500, 500);
		}
		$sub_banner2 = $setting['image_sub_banner2'];
		if (is_file(DIR_IMAGE . $sub_banner2)) {
			$data['sub_banner2'] = $this->model_tool_image->resize($sub_banner2, 500, 500);
		} else {
			$data['sub_banner2'] = $this->model_tool_image->resize('placeholder.png', 500, 500);
		}
		$sub_banner3 = $setting['image_sub_banner3'];
		if (is_file(DIR_IMAGE . $sub_banner3)) {
			$data['sub_banner3'] = $this->model_tool_image->resize($sub_banner3, 500, 500);
		} else {
			$data['sub_banner3'] = $this->model_tool_image->resize('placeholder.png', 500, 500);
		}
		$sub_banner4 = $setting['image_sub_banner4'];
		if (is_file(DIR_IMAGE . $sub_banner4)) {
			$data['sub_banner4'] = $this->model_tool_image->resize($sub_banner4, 500, 500);
		} else {
			$data['sub_banner4'] = $this->model_tool_image->resize('placeholder.png', 500, 500);
		}

		$main_banner_category = $this->model_catalog_category->getCategory($setting['main_banner_category_id']);
		if(isset($main_banner_category['name'])){
		$data['main_banner_category_name'] = $main_banner_category['name'];
		} else {
			$data['main_banner_category_name'] = '';
		}
		$data['main_banner_category_url']  = $this->url->link('product/category', 'path=' . $main_banner_category['category_id']);

		$sub_banner1_category = $this->model_catalog_category->getCategory($setting['sub_banner1_category_id']);
		if(isset($sub_banner1_category['name'])){
		$data['sub_banner1_category_name'] = $sub_banner1_category['name'];
		}else{
			$data['sub_banner1_category_name'] = '';
		}

		if(isset($sub_banner1_category['category_id'])) {
		$data['sub_banner1_category_url']  = $this->url->link('product/category', 'path=' . $sub_banner1_category['category_id']);

		$sub_banner2_category = $this->model_catalog_category->getCategory($setting['sub_banner2_category_id']);
	} else {
		$data['sub_banner1_category_url'] = '';
	}


		if(isset($sub_banner2_category['name'])) {
		$data['sub_banner2_category_name'] = $sub_banner2_category['name'];
		} else{
			$data['sub_banner2_category_name'] = '';
		}

		if(isset($sub_banner2_category['category_id'])) {
		$data['sub_banner2_category_url']  = $this->url->link('product/category', 'path=' . $sub_banner2_category['category_id']);
	}else{
		$data['sub_banner2_category_url']='';
	}

		$sub_banner3_category = $this->model_catalog_category->getCategory($setting['sub_banner3_category_id']);
		if(isset($sub_banner3_category['name'])){
		$data['sub_banner3_category_name'] = $sub_banner3_category['name'];
		} else{
			$data['sub_banner3_category_name'] = '';
		}
		if(isset($sub_banner3_category['category_id'])) {
		$data['sub_banner3_category_url']  = $this->url->link('product/category', 'path=' . $sub_banner3_category['category_id']);
	}else {
		$data['sub_banner3_category_url'] ='';
	}
		$sub_banner4_category = $this->model_catalog_category->getCategory($setting['sub_banner4_category_id']);
		if(isset($sub_banner4_category['name'])){
		$data['sub_banner4_category_name'] = $sub_banner4_category['name'];
		} else {
			$data['sub_banner4_category_name'] = '';
		}
		if(isset($sub_banner4_category['category_id'])) {
		$data['sub_banner4_category_url']  = $this->url->link('product/category', 'path=' . $sub_banner4_category['category_id']);
	}else{
		$data['sub_banner4_category_url'] = '';
	}

		if (!empty($setting)&&($setting['status'] == 1)) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_theme') . '/template/extension/module/category_banners.twig')) {
				return $this->load->view('extension/module/category_banners', $data);
			}
		}
	}
}
