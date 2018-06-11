<?php 

class ControllerCustomeSingleFileAjax extends Controller
{
	
	public function index() {


		if(isset($_POST['customer_id']) && isset($this->request->files['file']['name'])) {
			$filename = $_FILES['file']['name'];
			$ext = pathinfo($filename, PATHINFO_EXTENSION);

			if($ext == 'png' || $ext == 'jpg' || $ext == 'jpeg' ) {
				$this->load->model('custome/step_process');
				$image_path = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_". $_POST['image_name'].".".$ext;

				if(move_uploaded_file($this->request->files['file']['tmp_name'], $image_path)) {

					$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name'], $image_path);
					$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_2", 1);
					$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_3", 5);
					if($_POST['image_name'] == 'image_4' || $_POST['image_name'] == 'image_5'){
						$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_4", 5);
					}
					echo "done";

				}else{
					echo "failed";
				}
			} else {
				echo "failed";
			}

		} else {
			echo "failed";
		}

	}
}

?>