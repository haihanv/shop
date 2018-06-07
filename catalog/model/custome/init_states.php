<?php 

class ModelCustomeInitStates extends Model
{
	
	public function getCustmerStates($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;		
	}

	public function createCustomerInitStates($customer_id) {
		$query = $this->db->query("INSERT INTO " . DB_PREFIX . "customer_states SET customer_id = '".(int)$customer_id."'");
		return $query;
	}

	public function deleteCustomerStates($customer_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . " customer_states WHERE customer_id = '" . (int)$customer_id. "'");
	}

	public function getAdminMessage($customer_id) {
		$query = $this->db->query("SELECT admin_message FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id. "'");
		return $query->row['admin_message'];
	}
}
?>