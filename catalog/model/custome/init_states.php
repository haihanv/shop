<?php 

class ModelCustomeInitStates extends Model
{
	
	public function getCustmerStates($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_states WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;		
	}
}
?>