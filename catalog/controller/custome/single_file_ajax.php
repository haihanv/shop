<?php 

class ControllerCustomeSingleFileAjax extends Controller
{
	
	public function index() {

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if(isset($_POST['customer_id']) && isset($_FILES['file']['name'])) {

			$this->load->model('custome/step_process');
			$image_path = $server.'image/custome/'.$_POST['customer_id']."_".$_POST['image_name'].".png";

			// if(move_uploaded_file($_FILES['file']['tmp_name'], $image_path)) {
				$res = $this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name'], $image_path);
				echo $_POST['image_name'];
				echo $image_path;

			// }else{
			// 	echo "upload failed";
			// }

		} else {
			echo "upload failed";
		}

	}
}

?>