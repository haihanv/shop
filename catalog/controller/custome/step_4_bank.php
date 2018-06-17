<?php 

class ControllerCustomeStep4Bank extends Controller{
	public function index() {

		$return = "failed";

		if ($this->request->server['HTTPS']) {
			//$server = $this->config->get('config_ssl');
			$server = 'http://10.184.140.222/shop/';
		} else {
			//$server = $this->config->get('config_url');
			$server = 'http://10.184.140.222/shop/';
		}

		if(isset($_POST['customer_id']) && isset($this->request->files['file1']['name'])) {
			$this->load->model('custome/step_process');

			$filename1 = $_FILES['file1']['name'];
			$ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
			$image_path1 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_". $_POST['image_name1'].".".$ext1;
			

			if(move_uploaded_file($this->request->files['file1']['tmp_name'], $image_path1)) {

				chmod($image_path1, 0777);

				$image_path1 = $server."image/custome/customers/".$_POST['customer_id']."_". $_POST['image_name1'].".".$ext1;

				$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name1'], $image_path1);
				$this->model_custome_step_process->setLink($_POST['customer_id'], $_POST['input_link']);
				$this->model_custome_step_process->setBankName($_POST['customer_id'], $_POST['bank_name']);
				$this->model_custome_step_process->setSecurityCode($_POST['customer_id'], $_POST['security_code']);
				$this->model_custome_step_process->setPaymentMethod($_POST['customer_id'], $_POST['payment_method']);


				$return = "done";

				if(isset($this->request->files['file2']['name'])){

					$filename2 = $_FILES['file2']['name'];
					$ext2 = pathinfo($filename2, PATHINFO_EXTENSION);
					$image_path2 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_". $_POST['image_name2'].".".$ext2;

					if(move_uploaded_file($this->request->files['file2']['tmp_name'], $image_path2)){
						chmod($image_path2, 0777);
						$image_path2 = $server."image/custome/customers/".$_POST['customer_id']."_". $_POST['image_name2'].".".$ext2;		
						$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name2'], $image_path2);
					} else {
						$return = "failed";
					}
				}

				//set state to step 4
				$this->model_custome_step_process->updateCurrentStep($_POST['customer_id'], 4);
				$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_4", 3);

			} else {
				$return = "failed";
			}

		} else {

			$return = "failed";
		}

		echo $return;
	}

}

?>