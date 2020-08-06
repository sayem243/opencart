<?php
class ControllerExtensionModuleHorizondalCategory extends Controller {
	public function index($setting) {
		$this->load->model('tool/image');
		if (is_file(DIR_IMAGE .$setting['image'])) {
			$data['thumb'] = $this->model_tool_image->resize($setting['image'], 310, 465);
		} else {
			$data['thumb'] =  $this->model_tool_image->resize('placeholder.png', 310, 465);
		}
		// echo '<pre>';print_r($setting);exit();
		if (isset($setting['image'])) {
			$data['main_head'] = $setting['name'];
		} else {
			$data['main_head'] = '';
		}
		if (isset($setting['bgcolor'])) {
			$data['bgcolor'] = $setting['bgcolor'];
		} else {
			$data['bgcolor'] = '';
		}
		$this->load->language('extension/module/horizondal_category');
		$this->load->model('catalog/category');
		if($setting['category_id']) {
			$category_id = $setting['category_id'];
			// $main_category[] = array();
			$main_category = $this->model_catalog_category->getHorizondalCategory($category_id);
			// echo "<pre>";print_r($main_category);exit();
			$data['main_products'] = array();
			$filter_data_main = array(
				'filter_category_id' => $category_id,
			);
			$results = $this->model_catalog_product->getProducts($filter_data_main);
			// echo "<pre>";print_r($results);exit();
			foreach ($results as $result) {
				if (is_file(DIR_IMAGE . $result['image'])) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$price_off = $this->tax->calculate( $result['price'], $result['tax_class_id'], $this->config->get('config_tax'));
				} else {
					$price = false;
					$price_off = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$special_off = $this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'));
				} else {
					$special = false;
					$special_off = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				if($price_off && (float)$special_off){
					$off_label = round((($price_off-$special_off)/$price_off)*100);
				}else{
					$off_label = false;
				}

				$data['main_products'][] = array(
					'product_id'  => $result['product_id'],
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					'quickview_href'        => $this->url->link('product/quickview', 'product_id=' . $result['product_id']),
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, $this->config->get('theme_' . $this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'off_label'		  => $off_label,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
				);
			}

			$main_category['products'] = $data['main_products'];
				// Level 1
				$data['category'] = array(
					'main_category'     => $main_category,
					'href'     => $this->url->link('product/category', 'path=' . $category_id)
				);
		} //echo "<pre>";print_r($data['category']);//exit;
		if ($data['category']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_theme') . '/template/extension/module/horizondal_category.twig')) {
				return $this->load->view('extension/module/horizondal_category', $data);
			}
		}
	}
}