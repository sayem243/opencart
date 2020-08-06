<?php
class ControllerExtensionModuleCategoryBanners extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/category_banners');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_setting_module->addModule('category_banners', $this->request->post);
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
				'href' => $this->url->link('extension/module/category_banners', 'user_token=' . $this->session->data['user_token'], true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('extension/module/category_banners', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true)
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('extension/module/category_banners', 'user_token=' . $this->session->data['user_token'], true);
		} else {
			$data['action'] = $this->url->link('extension/module/category_banners', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true);
		}

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_setting_module->getModule($this->request->get['module_id']);
		}

		$data['user_token'] = $this->session->data['user_token'];

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
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
		$filter_data = array(
			'sort'  => "name",
			'order' => "ASC",
		);
		$results = $this->model_catalog_category->getCategories($filter_data);

			foreach ($results as $result) {
				$data['categories'][] = array(
					'category_id' => $result['category_id'],
					'name'        => $result['name'],
					'sort_order'  => $result['sort_order'],
					// 'thumb'       => $data['thumb_'.$result['category_id']],
					// 'image'       => $data['image_'.$result['category_id']],
				);
			}

		if (isset($this->request->post['image_main_banner'])) {
			$data['image_main_banner'] = $this->request->post['image_main_banner'];
		} elseif (!empty($module_info)) {
			$data['image_main_banner'] = $module_info['image_main_banner'];
		} else {
			$data['image_main_banner'] = '';
		}

		$this->load->model('tool/image');

		if (isset($this->request->post['image_main_banner']) && is_file(DIR_IMAGE . $this->request->post['image_main_banner'])) {
			$data['thumb_main_banner'] = $this->model_tool_image->resize($this->request->post['image_main_banner'], 100, 100);
		} elseif (!empty($module_info) && isset($module_info['image_main_banner']) && is_file(DIR_IMAGE . $module_info['image_main_banner'])) {
			$data['thumb_main_banner'] = $this->model_tool_image->resize($module_info['image_main_banner'], 100, 100);
		} else {
			$data['thumb_main_banner'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['main_banner_category_id'])) {
			$data['main_banner_category_id'] = $this->request->post['main_banner_category_id'];
		} elseif (!empty($module_info)) {
			$data['main_banner_category_id'] = $module_info['main_banner_category_id'];
		} else {
			$data['main_banner_category_id'] = '';
		}

		if (isset($this->request->post['image_sub_banner1'])) {
			$data['image_sub_banner1'] = $this->request->post['image_sub_banner1'];
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner1'])) {
			$data['image_sub_banner1'] = $module_info['image_sub_banner1'];
		} else {
			$data['image_sub_banner1'] = '';
		}

		$this->load->model('tool/image');

		if (isset($this->request->post['image_sub_banner1']) && is_file(DIR_IMAGE . $this->request->post['image_sub_banner1'])) {
			$data['thumb_sub_banner1'] = $this->model_tool_image->resize($this->request->post['image_sub_banner1'], 100, 100);
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner1']) && is_file(DIR_IMAGE . $module_info['image_sub_banner1'])) {
			$data['thumb_sub_banner1'] = $this->model_tool_image->resize($module_info['image_sub_banner1'], 100, 100);
		} else {
			$data['thumb_sub_banner1'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['sub_banner1_category_id'])) {
			$data['sub_banner1_category_id'] = $this->request->post['sub_banner1_category_id'];
		} elseif (!empty($module_info) && isset($module_info['sub_banner1_category_id'])) {
			$data['sub_banner1_category_id'] = $module_info['sub_banner1_category_id'];
		} else {
			$data['sub_banner1_category_id'] = '';
		}

		if (isset($this->request->post['image_sub_banner2'])) {
			$data['image_sub_banner2'] = $this->request->post['image_sub_banner2'];
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner2'])) {
			$data['image_sub_banner2'] = $module_info['image_sub_banner2'];
		} else {
			$data['image_sub_banner2'] = '';
		}

		$this->load->model('tool/image');

		if (isset($this->request->post['image_sub_banner2']) && is_file(DIR_IMAGE . $this->request->post['image_sub_banner2'])) {
			$data['thumb_sub_banner2'] = $this->model_tool_image->resize($this->request->post['image_sub_banner2'], 100, 100);
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner2']) && is_file(DIR_IMAGE . $module_info['image_sub_banner2'])) {
			$data['thumb_sub_banner2'] = $this->model_tool_image->resize($module_info['image_sub_banner2'], 100, 100);
		} else {
			$data['thumb_sub_banner2'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['sub_banner2_category_id'])) {
			$data['sub_banner2_category_id'] = $this->request->post['sub_banner2_category_id'];
		} elseif (!empty($module_info) && isset($module_info['sub_banner2_category_id'])) {
			$data['sub_banner2_category_id'] = $module_info['sub_banner2_category_id'];
		} else {
			$data['sub_banner2_category_id'] = '';
		}

		if (isset($this->request->post['image_sub_banner3'])) {
			$data['image_sub_banner3'] = $this->request->post['image_sub_banner3'];
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner3'])) {
			$data['image_sub_banner3'] = $module_info['image_sub_banner3'];
		} else {
			$data['image_sub_banner3'] = '';
		}

		$this->load->model('tool/image');

		if (isset($this->request->post['image_sub_banner3']) && is_file(DIR_IMAGE . $this->request->post['image_sub_banner3'])) {
			$data['thumb_sub_banner3'] = $this->model_tool_image->resize($this->request->post['image_sub_banner3'], 100, 100);
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner3']) && is_file(DIR_IMAGE . $module_info['image_sub_banner3'])) {
			$data['thumb_sub_banner3'] = $this->model_tool_image->resize($module_info['image_sub_banner3'], 100, 100);
		} else {
			$data['thumb_sub_banner3'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['sub_banner3_category_id'])) {
			$data['sub_banner3_category_id'] = $this->request->post['sub_banner3_category_id'];
		} elseif (!empty($module_info) && isset($module_info['sub_banner3_category_id'])) {
			$data['sub_banner3_category_id'] = $module_info['sub_banner3_category_id'];
		} else {
			$data['sub_banner3_category_id'] = '';
		}

		if (isset($this->request->post['image_sub_banner4'])) {
			$data['image_sub_banner4'] = $this->request->post['image_sub_banner4'];
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner4'])) {
			$data['image_sub_banner4'] = $module_info['image_sub_banner4'];
		} else {
			$data['image_sub_banner4'] = '';
		}

		$this->load->model('tool/image');

		if (isset($this->request->post['image_sub_banner4']) && is_file(DIR_IMAGE . $this->request->post['image_sub_banner4'])) {
			$data['thumb_sub_banner4'] = $this->model_tool_image->resize($this->request->post['image_sub_banner4'], 100, 100);
		} elseif (!empty($module_info) && isset($module_info['image_sub_banner4']) &&is_file(DIR_IMAGE . $module_info['image_sub_banner4'])) {
			$data['thumb_sub_banner4'] = $this->model_tool_image->resize($module_info['image_sub_banner4'], 100, 100);
		} else {
			$data['thumb_sub_banner4'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		if (isset($this->request->post['sub_banner4_category_id'])) {
			$data['sub_banner4_category_id'] = $this->request->post['sub_banner4_category_id'];
		} elseif (!empty($module_info) && isset($module_info['sub_banner4_category_id'])) {
			$data['sub_banner4_category_id'] = $module_info['sub_banner4_category_id'];
		} else {
			$data['sub_banner4_category_id'] = '';
		}



		// echo '<pre>';print_r($module_info);exit();
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/category_banners', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/category_banners')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		// if (!$this->request->post['width']) {
		// 	$this->error['width'] = $this->language->get('error_width');
		// }

		// if (!$this->request->post['height']) {
		// 	$this->error['height'] = $this->language->get('error_height');
		// }

		return !$this->error;
	}
}
