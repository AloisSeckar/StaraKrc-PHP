<?php
// TODO
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// get stored contacts
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		$data["contacts"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT contact, name, link FROM elrh_contacts");
		
		// save prepared data for renderer
		return $data;
	}
}