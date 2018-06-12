<?php 


class ModelCustomeStepProcess extends Model
{
	public function createCustomerImages($customer_id) {
		$query = $this->db->query("INSERT INTO " . DB_PREFIX . "customer_images SET customer_id = '".(int)$customer_id."'");
		return $query;
	}

	public function createCustomerPayment($customer_id) {
		$query = $this->db->query("INSERT INTO " . DB_PREFIX . "customer_payment SET customer_id = '".(int)$customer_id."'");
		return $query;
	}

	
	public function updateCustomerInfo($customer_id, $name, $address, $phone, $time) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '".$name."' WHERE customer_id = '" . (int)$customer_id. "'");
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET telephone = '".$phone."' WHERE customer_id = '" . (int)$customer_id. "'");
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET time = '".$time."' WHERE customer_id = '" . (int)$customer_id. "'");
		$this->db->query("UPDATE " . DB_PREFIX . "address SET address_1 = '".$address."' WHERE customer_id = '" .(int)$customer_id. "'");
		$this->db->query("UPDATE " . DB_PREFIX . "address SET firstname = '".$name."' WHERE customer_id = '" .(int)$customer_id. "'");
	}





	public function updateCustomerImagePath($customer_id, $columnName, $path) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_images SET ".$columnName." = '".$path."' WHERE customer_id = '" . (int)$customer_id. "'");
		
	}

	public function getCustomerImagePath($customer_id, $columnName){
		$query = $this->db->query("SELECT ".$columnName." FROM " . DB_PREFIX . "customer_images WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row[$columnName];
	}



	public function deleteCustomerImages($customer_id){
		$this->db->query("DELETE FROM `" . DB_PREFIX . " customer_images WHERE customer_id = '" . (int)$customer_id. "'");
	}


	public function updateCustomerState($customer_id, $stateName, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET ".$stateName." = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getCurrentStep($customer_id){
		$query = $this->db->query("SELECT current_step FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['current_step'];
	}


	public function updateCurrentStep($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET current_step = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}	

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