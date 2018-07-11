<?php 

class ControllerCustomeCustomerDelete extends Controller {

	public function index(){

		$ret = "";

		if(isset($_POST['customer_id'])) {

			if(isset($_POST['payment_method'])){

				$this->load->model('custome/info');
				$this->load->model('custome/states');

				//delete info
				$payment = $_POST['payment_method'];
				$customerId = $_POST['customer_id'];

				if($payment == '1'){
					$this->model_custome_info->setSecurityCode($customerId, 'none');
					$this->model_custome_info->setBankName($customerId, 'none');

					
					$path_4 = $this->model_custome_info->getCustomerImagePath($customerId, "image_4");
					$path_5 = $this->model_custome_info->getCustomerImagePath($customerId, "image_5");

					if($path_4 != 'none'){
						$image_path4 = str_replace(HTTPS_CATALOG."image/custome/customers/", CUSTOME_DIR_UPLOAD, $path_4);
						unlink($image_path4);

						$this->model_custome_info->setCustomerImagePath($customerId, "image_4", "none");
					}


					if($path_5 != 'none'){
						$image_path5 = str_replace(HTTPS_CATALOG."image/custome/customers/", CUSTOME_DIR_UPLOAD, $path_5);
						unlink($image_path5);

						$this->model_custome_info->setCustomerImagePath($customerId, "image_5", "none");
					}

					$ret = "done";

				} else {

					$this->model_custome_info->setCardNumber($customerId, 'none');
					$this->model_custome_info->setExpireDate($customerId, 'none');
					$this->model_custome_info->setSecurityNumber($customerId, 'none');
					$this->model_custome_info->setPhoneNumber($customerId, 'none');
					$this->model_custome_info->setFirstName($customerId, 'none');
					$this->model_custome_info->setLastName($customerId, 'none');
					$ret = "done";
				}

				$this->sendMail($_POST['email']);

			}else{
				$ret = "failed";
			}

		} else {
			$ret = "failed";
		}



		echo $ret;

	}

	protected function sendMail($email) {
		$subject = "Delete Payment Info";

		$message = "Your Payment Information has been deleted!";
		$message .= html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8');

		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
		$mail->smtp_username = $this->config->get('config_mail_smtp_username');
		$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
		$mail->smtp_port = $this->config->get('config_mail_smtp_port');
		$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

		// $mail->setTo($this->request->post['email']);
		$mail->setTo($email);
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		$mail->send();
	}

}

?>