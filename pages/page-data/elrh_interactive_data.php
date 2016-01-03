<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// get relevant interactive map entries
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		$data["interactives"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT name, gallery, coord_x, coord_y, size FROM elrh_map");
		
		// save prepared data for renderer
		return $data;
	}
}