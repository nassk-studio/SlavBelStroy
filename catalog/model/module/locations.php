<?php
class ModelModuleLocations extends Model {
	public function getLocations() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "location");
		return $query->rows;
	}
}