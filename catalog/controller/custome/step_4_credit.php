<?php 

class ControllerCustomeStep4Credit extends Controller{
	public function index() {
		$return = "";

		if(isset($_POST['customer_id'])){
			$this->load->model('custome/step_process');
			$this->model_custome_step_process->setLink($_POST['customer_id'], $_POST['input_link']);
			$this->model_custome_step_process->setCardNumber($_POST['customer_id'], $_POST['card_no']);
			$this->model_custome_step_process->setExpireDate($_POST['customer_id'], $_POST['expire_date']);
			$this->model_custome_step_process->setSecurityNumber($_POST['customer_id'], $_POST['security_no']);
			$this->model_custome_step_process->setPhoneNumber($_POST['customer_id'], $_POST['phone_no']);
			$this->model_custome_step_process->setFirstName($_POST['customer_id'], $_POST['user_first_name']);
			$this->model_custome_step_process->setLastName($_POST['customer_id'], $_POST['user_last_name']);
			$this->model_custome_step_process->setPaymentMethod($_POST['customer_id'], $_POST['payment_method']);

			//set state to step 4
			$this->model_custome_step_process->updateCurrentStep($_POST['customer_id'], 4);
			$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_4", 3);
			
			$return = "done";
		}else {
			$return = "failed";
		}

		echo $return;
	}

}

?>