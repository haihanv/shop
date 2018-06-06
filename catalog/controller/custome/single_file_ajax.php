<?php 

class ControllerCustomeSingleFileAjax extends Controller
{
	
	public function index() {

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if(isset($_POST['customer_id']) && isset($this->request->files['file']['name'])) {

			$this->load->model('custome/step_process');
			// $image_path = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".$_POST['image_name'].".png";
			$image_path = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".($this->request->files['file']['name']);

			if(move_uploaded_file($this->request->files['file']['tmp_name'], $image_path)) {
				$res = $this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name'], $image_path);
				
				echo "Done !";

			}else{
				echo "upload failed";
			}

		} else {
			echo "upload failed";
		}

	}
}

?>