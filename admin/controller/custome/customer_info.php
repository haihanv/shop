<?php  

class ControllerCustomeCustomerInfo extends Controller {

	public function index(){
		$retVal = "";
		if(isset($_POST['customer_id'])) {


			$this->load->model('custome/info');
			$this->load->model('custome/states');
			$this->load->model('custome/send_mail');


			// process when action is not undefined
			if(isset($_POST['admin_action']) && $_POST['admin_action'] != 11) {
				echo "action";

				


			}

			// process when next state is not undefined 		
			if(isset($_POST['step_next_state']) && $_POST['step_next_state'] != 11){
				echo "state";

				$next_state = $_POST['step_next_state'];
				$customer_current_state = "state_".$_POST['customer_step'];

				if($next_state == 1 && $_POST['customer_step'] < 4) {
					$this->model_custome_states->updateCustomerState($_POST['customer_id'], $customer_current_state, 1);
					$this->model_custome_states->setCustomerCurrentStep($_POST['customer_id'], $_POST['customer_step'] + 1);
				}else {
					$this->model_custome_states->updateCustomerState($_POST['customer_id'], $customer_current_state, $next_state);
				}

			}


			//process for order status
			if(isset($_POST['order_nextstate'])) {
				
			}



			//process for order status
			// if($_POST['order_nextstate'] != 11 && $_POST['order_nextstate'] >= $_POST['order_state']){

			// 	$this->model_custome_info->setOrderNote($_POST['customer_id'], $_POST['order_note']);
			// 	$this->model_custome_states->updateCustomerOrderState($_POST['customer_id'], $_POST['order_nextstate']);
			// }
		

			// if(isset($_POST['order_nextstate'])) {
			// 	echo "order";
			// } else {
			// 	echo "not order";
			// }

			

			$retVal= 'done';			
		}else {
			$retVal= 'failed';
		}

		echo "sao ki vay";
	}
}

?>