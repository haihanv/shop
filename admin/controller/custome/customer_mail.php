<?php  

class ControllerCustomeCustomerMail extends Controller {

	public function index(){

		$ret = "";
		
		if(isset($_POST['customer_id'])) {

			$message = $this->request->post['content'];
			$subject = $this->request->post['subject'];
			$mail =  $this->request->post['email'];

			$this->sendMail($mail, $subject, $message);

			$ret = 'done';
		}else {
			$ret = "failed";
		}

		echo $ret;
	}


	protected function sendMail($email, $subject, $message) {

		$message .= html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8');
		
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
		$mail->smtp_username = $this->config->get('config_mail_smtp_username');
		$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
		$mail->smtp_port = $this->config->get('config_mail_smtp_port');
		$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

		$mail->setTo($email);
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		$mail->send();
	}


}

?>