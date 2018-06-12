<?php 

class ControllerCustomeStep4Credit extends Controller{
	public function index() {
		$return = "failed";

		if(isset($_POST['customer_id'])){
			$this->load->model('custome/step_process');
			$this->model_custome_step_process->setLink($_POST['customer_id'], $_POST['input_link']);
			$this->model_custome_step_process->setCardNumber($_POST['customer_id'], $_POST['card_no']);
			$this->model_custome_step_process->setExpireDate($_POST['customer_id'], $_POST['expire_date']);
			$this->model_custome_step_process->setSecurityNumber($_POST['customer_id'], $_POST['security_no']);
			$this->model_custome_step_process->setPhoneNumber($_POST['customer_id'], $_POST['phone_no']);
			$this->model_custome_step_process->setFirstName($_POST['customer_id'], $_POST['user_first_name']);
			$this->model_custome_step_process->setLastName($_POST['customer_id'], $_POST['user_last_name']);

			
			$return = "done";
		}else {
			$return = "failed";
		}

		echo $return;
	}

}

?>