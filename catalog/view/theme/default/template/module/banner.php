<?php
class ControllerModuleBanner extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');
        $this->load->language('module/banner');
		
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
				
		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/banner.tpl')) {
            if(true) {
                return $this->load->view($this->config->get('config_template') . '/template/module/sale-banner.tpl', $data);    
            }
            return $this->load->view($this->config->get('config_template') . '/template/module/banner.tpl', $data);
		} else {
            if(true) {
                return $this->load->view('default/template/module/sale-banner.tpl', $data);    
            }
			return $this->load->view('default/template/module/banner.tpl', $data);
		}
	}
}