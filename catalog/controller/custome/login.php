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

		$this->load->model('custome/init_states');

		if ($this->customer->isLogged()) {
			$customer_id = $this->customer->isLogged();
			$result = $this->model_custome_init_states->getCustmerStates($customer_id);		
			$data['states'][] = $result['state_1'];
			$data['states'][] = $result['state_2'];
			$data['states'][] = $result['state_3'];
			$data['states'][] = $result['state_4'];
			$data['states'][] = $result['admin_message'];

			$data['customer_states'] = json_encode($data['states']);
		} else {
			$data['states'][] = "none";
			$data['customer_states'] = json_encode($data['states']);
		}

		$this->response->setOutput($this->load->view('custome/login', $data));
	}
}

?>