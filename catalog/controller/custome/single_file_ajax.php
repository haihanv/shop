<?php 

class ControllerCustomeSingleFileAjax extends Controller
{
	
	public function index() {

		if ($this->request->server['HTTPS']) {
			//$server = $this->config->get('config_ssl');
			$server = 'http://10.184.140.222/shop/';
		} else {
			//$server = $this->config->get('config_url');
			$server = 'http://10.184.140.222/shop/';
		}

		if(isset($_POST['customer_id']) && isset($_FILES['file']['name'])) {
			echo "upload successfully !";	
		} else {
			echo "upload failed";
		}

	}
}

?>