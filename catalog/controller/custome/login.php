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
		$data['custome_sample4'] = $server . 'image/custome/sample4.png';
		$data['custome_upload'] = $server . 'image/custome/upload.png';
		$data['done_img'] = $server . 'image/custome/done_img.png';

		//for step for 4 brand names
		
		$data['custome_18'] = $server . 'image/custome/18.png';
		$data['custome_19'] = $server . 'image/custome/19.png';
		$data['custome_20'] = $server . 'image/custome/20.png';
		$data['custome_21'] = $server . 'image/custome/21.png';
		$data['custome_22'] = $server . 'image/custome/22.png';
		$data['custome_23'] = $server . 'image/custome/23.png';
		$data['custome_24'] = $server . 'image/custome/24.png';
		$data['custome_25'] = $server . 'image/custome/25.png';
		$data['custome_26'] = $server . 'image/custome/26.png';
		$data['custome_27'] = $server . 'image/custome/27.png';
		$data['custome_28'] = $server . 'image/custome/28.png';

		$this->load->model('custome/init_states');
		$this->load->model('custome/step_process');

		if ($this->customer->isLogged()) {
			$customer_id = $this->customer->isLogged();
			$result = $this->model_custome_init_states->getCustmerStates($customer_id);		
			$data['admin_message'] = $this->model_custome_init_states->getAdminMessage($customer_id);
			$data['order_status'] = $this->model_custome_step_process->getOrderStatus($customer_id);
			
			$data['states'][] = $result['state_1'];
			$data['states'][] = $result['state_2'];
			$data['states'][] = $result['state_3'];
			$data['states'][] = $result['state_4'];
			$data['states'][] = $result['admin_message'];

			$data['customer_states'] = json_encode($data['states']);
			$data['customer_id'] = $customer_id;
		} else {
			$data['states'][] = "none";
			$data['customer_states'] = json_encode($data['states']);
		}

		$this->response->setOutput($this->load->view('custome/login', $data));
	}
}

?>