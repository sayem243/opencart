<?php
class ControllerExtensionModuleCategorySlide extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/category_slide');
		$data['limit'] = $setting['limit'];
		$this->load->model('catalog/category');

		$data['categories'] = array();

		if(isset($setting['limit'])){
			$limit = $setting['limit'];
		}else{
			$limit = 10;
		}

		// echo "<pre>";print_r($setting);exit();

		$categories = $this->model_catalog_category->getCategories();

		foreach($categories as $category){
			if(isset($setting['image_'.$category['category_id']])){
				if (is_file(DIR_IMAGE . $setting['image_'.$category['category_id']])) {
					$image = $this->model_tool_image->resize($setting['image_'.$category['category_id']], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}
			} else{
				$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
			}

				$data['categories'][] = array(
					'category_id' 	=> $category['category_id'],
					'name'		=> $category['name'], 
					'description'	=> $category['description'],
					'image'		=> $image,	
					'href'		=> $this->url->link('product/category', 'path=' . $category['category_id'])
				);//echo "<pre>";print_r($data['categories']);//exit();
		}

		if ($data['categories']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_theme') . '/template/extension/module/category_slide.twig')) {
				return $this->load->view('extension/module/category_slide', $data);
			}
		}
	}
}
