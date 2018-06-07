<?php 

class ControllerCustomeStep3 extends Controller
{
	

	public function index() {

		if(isset($_POST['customer_id'])) {
			
			$this->load->model('custome/step_process');
			$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_3", 3);
			echo "done";
		}else{
			echo "failed";
		}
	}


}

?>