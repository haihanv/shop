<?php 


class ModelCustomeStepProcess extends Model
{
	public function createCustomerImages($customer_id) {
		$query = $this->db->query("INSERT INTO " . DB_PREFIX . "customer_images SET customer_id = '".(int)$customer_id."'");
		return $query;
	}
	
	public function updateCustomerInfo($customer_id, $name, $address, $phone, $time) {
		$this->db->query(
			"UPDATE " . DB_PREFIX . "customer SET firstname = '".$this->db->escape($name).", lastname = '". $this->db->escape($name).
			", telephone = '". $this->db->escape($phone)."' WHERE customer_id = '" . (int)$customer_id. "'"
		);

		$this->db->query("UPDATE " . DB_PREFIX . "customer_states SET time = '".$time."'");
		$this->db->query("UPDATE " . DB_PREFIX . "address SET address_1 = '".$this->db->escape($address)."' WHERE customer_id = '" . 
			(int)$customer_id. "'");
	}

	public function updateCustomerImagePath($customer_id, $columnName, $path) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer_images SET ".$columnName." = '".$path."' WHERE customer_id = '" . (int)$customer_id. "'");
	}


	public function deleteCustomerImages($customer_id){
		$this->db->query("DELETE FROM `" . DB_PREFIX . " customer_images WHERE customer_id = '" . (int)$customer_id. "'");
	}
	
}


?>