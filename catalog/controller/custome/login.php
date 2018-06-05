<?php 

class ControllerCustomeLogin extends Controller
{
	
	public function index() {

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		//ha added
		$data['custome_sample'] = $server . 'image/custome/sample.png';
		$data['custome_sample1'] = $server . 'image/custome/sample1.png';
		$data['custome_sample2'] = $server . 'image/custome/sample2.png';
		$data['custome_upload'] = $server . 'image/custome/upload.png';

		$this->response->setOutput($this->load->view('custome/login', $data));
	}
}

?>