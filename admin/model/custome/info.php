<?php  

class ModelCustomeInfo extends Model {

	public function getOrderStatus($customer_id) {
		$query = $this->db->query("SELECT order_status FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['order_status'];
	}

	public function setOrderStatus($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET order_status = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getPaymentMethod($customer_id){
		$query = $this->db->query("SELECT payment_method FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['payment_method'];
	}

	public function setPaymentMethod($customer_id, $value){
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET payment_method = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getLink($customer_id) {
		$query = $this->db->query("SELECT link FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['link'];
	}


	public function setLink($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET link = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getCardNumber($customer_id) {
		$query = $this->db->query("SELECT card_no FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['card_no'];
	}


	public function setCardNumber($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET card_no = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getExpireDate($customer_id) {
		$query = $this->db->query("SELECT expire_date FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['expire_date'];
	}


	public function setExpireDate($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET expire_date = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}


	public function getSecurityNumber($customer_id) {
		$query = $this->db->query("SELECT security_no FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['security_no'];
	}


	public function setSecurityNumber($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET security_no = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}


	public function getPhoneNumber($customer_id) {
		$query = $this->db->query("SELECT phone_no FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['phone_no'];
	}


	public function setPhoneNumber($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET phone_no = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getFirstName($customer_id) {
		$query = $this->db->query("SELECT first_name FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['first_name'];
	}


	public function setFirstName($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET first_name = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getLastName($customer_id) {
		$query = $this->db->query("SELECT last_name FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['last_name'];
	}


	public function setLastName($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET last_name = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getBankName($customer_id) {
		$query = $this->db->query("SELECT bank_name FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['bank_name'];
	}


	public function setBankName($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET bank_name = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getSecurityCode($customer_id) {
		$query = $this->db->query("SELECT security_code FROM " . DB_PREFIX . "customer_payment WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['security_code'];
	}


	public function setSecurityCode($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_payment SET security_code = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

}


?>