<?php 

class ModelCustomeStates extends Model {

	public function getCustomerCurrentStep($customer_id) {
		$query = $this->db->query("SELECT current_step FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['current_step'];

	}


	public function getCustomerState($customer_id, $stateName) {
		$query = $this->db->query("SELECT ".$stateName." FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row[$stateName];

	}


	public function updateCustomerState($customer_id, $stateName, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET ".$stateName." = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}


	public function getCustomerTime($customer_id) {
		$query = $this->db->query("SELECT "."time"." FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['time'];
	}

	public function getCustomerImagePath($customer_id, $columnName){
		$query = $this->db->query("SELECT ".$columnName." FROM " . DB_PREFIX . "customer_images WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row[$columnName];
	}


	public function getCustomerOrderState($customer_id) {
		$query = $this->db->query("SELECT order_status FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['order_status'];

	}


	public function updateCustomerOrderState($customer_id, $value) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET order_status = '".$value."' WHERE customer_id = '" . (int)$customer_id. "'");
	}

	
}

?>