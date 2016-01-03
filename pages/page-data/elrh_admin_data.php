<?php
// TODO admin functions
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// no data for admin yet
		$data["null"] = "null";
		
		// save prepared data for renderer
		return $data;
	}
}