<?php  

class ControllerCustomeSingleInfoAjax extends Controller {

	public function index() {

		if(isset($_POST['customer_id'])){

			$this->load->model('custome/step_process');

			if(isset($_POST['name']) && $_POST['name'] != '') {
				$this->model_custome_step_process->updateCustomerName($_POST['customer_id'], $_POST['name']);
			}

			if(isset($_POST['address']) && $_POST['address'] != '') {
				$this->model_custome_step_process->updateCustomerAddress($_POST['customer_id'], $_POST['address']);
			}

			if(isset($_POST['phone']) && $_POST['phone'] != '') {
				$this->model_custome_step_process->updateCustomerPhone($_POST['customer_id'], $_POST['phone']);
			}

			if(isset($_POST['time']) && $_POST['name'] != 'None') {
				$this->model_custome_step_process->updateCustomerTime($_POST['customer_id'], $_POST['name']);
			}

			$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_3", 5);

			echo "done";

		} else {
			echo "failed";
		}

	}

}


?>