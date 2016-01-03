<?php
class ELRHPageData {
	public static function prepareData($item, $mysqli) {
		
		// get last 5 news
		include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
		$data["news"] = ELRHDataExtractor::retrieveArray($mysqli, "SELECT n.date, n.content, u.u_displayed_name AS author FROM elrh_news n JOIN elrh_users u ON n.author=u.u_name ORDER BY date DESC LIMIT 5");
		
		// save prepared data for renderer
		return $data;
	}
}