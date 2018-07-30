<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		 $data['column_left'] = $this->load->controller('common/column_left');
		 $data['column_right'] = $this->load->controller('common/column_right');
		 $data['content_top'] = $this->load->controller('common/content_top');
		 $data['content_bottom'] = $this->load->controller('common/content_bottom');
		 $data['footer'] = $this->load->controller('common/footer_custome');
		 $data['header'] = $this->load->controller('common/header');


		 // modify data
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$data['img_1'] = $server . 'image/custome/01.png';
		$data['img_2'] = $server . 'image/custome/02.png';
		$data['img_3'] = $server . 'image/custome/03.png';
		$data['img_4'] = $server . 'image/custome/04.png';
		$data['img_5'] = $server . 'image/custome/05.png';
		$data['img_6'] = $server . 'image/custome/06.png';
		$data['img_7'] = $server . 'image/custome/07.png';
		$data['img_8'] = $server . 'image/custome/08.png';
		$data['img_9'] = $server . 'image/custome/09.png';
		$data['img_10'] = $server . 'image/custome/10.png';
		$data['img_11'] = $server . 'image/custome/11.png';
		$data['img_12'] = $server . 'image/custome/12.png';
		$data['img_13'] = $server . 'image/custome/13.png';
		$data['img_14'] = $server . 'image/custome/14.png';
		$data['img_15'] = $server . 'image/custome/15.png';
		$data['img_16'] = $server . 'image/custome/16.png';
		$data['img_17'] = $server . 'image/custome/17.png';
		$data['img_30'] = $server . 'image/custome/30.png';
		$data['img_31'] = $server . 'image/custome/31.png';
		$data['img_32'] = $server . 'image/custome/32.png';
		$data['custome_login'] = $this->url->link('custome/login', '', true);

		$this->load->language('common/header');

		$data['home_logged'] = $this->customer->isLogged();
		$data['home_text_account'] = $this->language->get('text_account');
		$data['home_text_login'] = $this->language->get('text_login');
		$data['home_text_logout'] = $this->language->get('text_logout');
		$data['home_account'] = $this->url->link('account/account', '', true);
		$data['home_login'] = $this->url->link('account/login', '', true);
		$data['home_logout'] = $this->url->link('account/logout', '', true);
		


		 $this->response->setOutput($this->load->view('common/home', $data));

	}
}