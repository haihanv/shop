<?php 


class ControllerCustomeMultipleFileAjax extends Controller
{
	
	
	public function index(){

		if(isset($_POST['customer_id']) &&  isset($this->request->files['file1']['name']) &&
											isset($this->request->files['file2']['name']) && 
											isset($this->request->files['file3']['name'])) {


			$this->load->model('custome/step_process');
			$image_path1 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".($this->request->files['file1']['name']);
			$image_path2 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".($this->request->files['file2']['name']);
			$image_path3 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".($this->request->files['file3']['name']);


			$ret1 = move_uploaded_file($this->request->files['file1']['tmp_name'], $image_path1);
			$ret2 = move_uploaded_file($this->request->files['file2']['tmp_name'], $image_path2);
			$ret3 = move_uploaded_file($this->request->files['file3']['tmp_name'], $image_path3);
			

			if($ret1 && $ret2 && $ret3) {

				$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name1'], $image_path1);
				$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name2'], $image_path2);
				$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name3'], $image_path3);

				$this->model_custome_step_process->updateCustomerInfo($_POST['customer_id'],$_POST['customer_name'],$_POST['customer_address'], $_POST['customer_phone'],$_POST['customer_time']);

				$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_2", 1);

				echo "done";

			}else{
				echo "failed";
			}

		}else{
			echo "failed";
		}
		
	}

}

?>