<?php
class ControllerExtensionModuleCategorySlide extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/category_slide');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_setting_module->addModule('category_slide', $this->request->post);
			} else {
				$this->model_setting_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['width'])) {
			$data['error_width'] = $this->error['width'];
		} else {
			$data['error_width'] = '';
		}

		if (isset($this->error['height'])) {
			$data['error_height'] = $this->error['height'];
		} else {
			$data['error_height'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/category_slide', 'user_token=' . $this->session->data['user_token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/category_slide', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/category_slide', 'user_token=' . $this->session->data['user_token'], true);
		} else {
			$data['action'] = $this->url->link('extension/module/category_slide', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_setting_module->getModule($this->request->get['module_id']);
		}

		$data['user_token'] = $this->session->data['user_token'];
		// echo "<pre>";print_r($module_info);exit();

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}

		if (isset($this->request->post['limit'])) {
			$data['limit'] = $this->request->post['limit'];
		} elseif (!empty($module_info)) {
			$data['limit'] = $module_info['limit'];
		} else {
			$data['limit'] = 5;
		}

		if (isset($this->request->post['width'])) {
			$data['width'] = $this->request->post['width'];
		} elseif (!empty($module_info)) {
			$data['width'] = $module_info['width'];
		} else {
			$data['width'] = 320;
		}

		if (isset($this->request->post['height'])) {
			$data['height'] = $this->request->post['height'];
		} elseif (!empty($module_info)) {
			$data['height'] = $module_info['height'];
		} else {
			$data['height'] = 200;
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}

		$data['categories'] = array();
		$data['parent_categories'] = array();
		$this->load->model('catalog/category');
		$results = $this->model_catalog_category->getParentCategory(0);
		// echo "<pre>";print_r($results);exit();

		$this->load->model('tool/image');

		foreach ($results as $result) {

		if (isset($this->request->post['image_'.$result['category_id']])) {
			$data['image_'.$result['category_id']] = $this->request->post['image_'.$result['category_id']];
		} elseif (!empty($module_info)) {
			$data['image_'.$result['category_id']] = $module_info['image_'.$result['category_id']];
		} else {
			$data['image_'.$result['category_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
// echo "<pre>";print_r($module_info);exit;
		
		$this->load->model('tool/image');

		if (isset($this->request->post['image_'.$result['category_id']]) && is_file(DIR_IMAGE . $this->request->post['image_'.$result['category_id']])) {
			$data['thumb_'.$result['category_id']] = $this->model_tool_image->resize($this->request->post['image)_'.$result['category_id']], 100, 100);
		} elseif (!empty($module_info) && is_file(DIR_IMAGE . $module_info['image_'.$result['category_id']])) {
			$data['thumb_'.$result['category_id']] = $this->model_tool_image->resize($module_info['image_'.$result['category_id']], 100, 100);
		} else {
			$data['thumb_'.$result['category_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}


		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		

			
				$data['categories'][] = array(
					'category_id' => $result['category_id'],
					'name'        => $result['name'],
					'sort_order'  => $result['sort_order'],
					'thumb'       => $data['thumb_'.$result['category_id']],
					'image'       => $data['image_'.$result['category_id']],
				); //echo "<pre>";print_r($data['categories']);//exit();
			
		}

// 		foreach ($data['categories'] as $categories) {
// 		if (isset($this->request->post['image_'.$categories['category_id']])) {
// 			$data['image_'.$categories['category_id']] = $this->request->post['image_'.$categories['category_id']];
// 		} elseif (!empty($module_info)) {
// 			$data['image_'.$categories['category_id']] = $module_info['image_'.$categories['category_id']];
// 		} else {
// 			$data['image_'.$categories['category_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
// 		}
// // echo "<pre>";print_r($module_info);exit;
		
// 		$this->load->model('tool/image');

// 		if (isset($this->request->post['image_'.$categories['category_id']]) && is_file(DIR_IMAGE . $this->request->post['image_'.$categories['category_id']])) {
// 			$data['thumb'] = $this->model_tool_image->resize($this->request->post['image)_'.$categories['category_id']], 100, 100);
// 		} elseif (!empty($module_info) && is_file(DIR_IMAGE . $module_info['image_'.$categories['category_id']])) {
// 			$data['thumb_'.$categories['category_id']] = $this->model_tool_image->resize($module_info['image_'.$categories['category_id']], 100, 100);
// 		} else {
// 			$data['thumb_'.$categories['category_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
// 		}


// 		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
// 		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/category_slide', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/category_slide')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!$this->request->post['width']) {
			$this->error['width'] = $this->language->get('error_width');
		}

		if (!$this->request->post['height']) {
			$this->error['height'] = $this->language->get('error_height');
		}

		return !$this->error;
	}
}
