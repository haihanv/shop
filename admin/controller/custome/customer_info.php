<?php  

class ControllerCustomeCustomerInfo extends Controller {

	public function index(){
		$retVal = "";
		if(isset($_POST['customer_id'])) {

			$retVal = 'done';

			$this->load->model('custome/info');
			$this->load->model('custome/states');
			$this->load->model('custome/send_mail');


			// process when action is not undefined
			if(isset($_POST['admin_action']) && $_POST['admin_action'] != 11) {
				// echo "action";

				


			}

			// process when next state is not undefined 		
			if(isset($_POST['step_next_state']) && $_POST['step_next_state'] != 11){
				

				$next_state = $_POST['step_next_state'];
				$customer_current_state = "state_".$_POST['customer_step'];

				if($next_state == 1 && $_POST['customer_step'] < 4) {
					$this->model_custome_states->updateCustomerState($_POST['customer_id'], $customer_current_state, 1);
					$this->model_custome_states->setCustomerCurrentStep($_POST['customer_id'], $_POST['customer_step'] + 1);
				}else {
					$this->model_custome_states->updateCustomerState($_POST['customer_id'], $customer_current_state, $next_state);
				}

				if($next_state == 1){
					$this->model_custome_info->setAdminMessage($_POST['customer_id'], 'none');
					$this->model_custome_info->setAdminNote($_POST['customer_id'], 'none');
				}

				$retVal= 'step_done';

			}

			

			//process for order status
			if(isset($_POST['order_nextstate']) && $_POST['order_nextstate'] != 11) {
				
				if($_POST['order_nextstate'] >= $_POST['order_state']){

					$this->model_custome_info->setOrderNote($_POST['customer_id'], $_POST['order_note']);
					$this->model_custome_states->updateCustomerOrderState($_POST['customer_id'], $_POST['order_nextstate']);

					$retVal = 'order_done';

				} else {

					$retVal = 'order_failed';
				}
			}

			

			if(isset($_POST['customer_remind']) && $_POST['customer_remind'] != ''){
				$this->model_custome_info->setAdminMessage($_POST['customer_id'], $_POST['customer_remind']);
			}

			if(isset($_POST['admin_remind']) && $_POST['admin_remind'] != ''){
				$this->model_custome_info->setAdminNote($_POST['customer_id'], $_POST['admin_remind']);
			}

			if(isset($_POST['order_note']) && $_POST['order_note'] != ''){
				$this->model_custome_info->setOrderNote($_POST['customer_id'], $_POST['order_note']);
			}

			if(isset($_POST['delivery_time']) && $_POST['delivery_time'] != ''){
				$this->model_custome_info->setDeliveryTime($_POST['customer_id'], $_POST['delivery_time']);
			}


			$this->model_custome_info->setModifiedBy($_POST['customer_id'], $this->user->getUserName());
						
		}else {
			$retVal= 'failed';
		}

		echo $retVal;
	}
}

?>