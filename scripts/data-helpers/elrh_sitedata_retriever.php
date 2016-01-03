<?php
/**
 * Loading global texts and settings from db
 */ 
class ELRHSitedataCreator {
	
	public static function createSiteTexts($mysqli, $lang) {
		// load db retrieving function
		include_once getcwd().'/scripts/data-helpers/elrh_text_retriever.php';
		// use like getting normal site texts, just with "custom" request
		$data = ELRHTextRetriever::getTextsForPage($mysqli, $lang, "global"); 
		//
		return $data;
	}
	
	public static function createSiteSettings($mysqli) {
		// db retrieving function
		function getSetting($mysqli, $var) {
			$result = $mysqli->query("SELECT value FROM elrh_settings WHERE var='".$var."' LIMIT 1");
			$row = $result->fetch_array();
			if (!empty($row["value"])) {
				return $row["value"];
			} else {
				return "";
			}
		}	
		
		$data["fb_image"] = getSetting($mysqli, "fb_image");
		$data["ga_id"] = getSetting($mysqli, "ga_id");
		$data["toplist_id"] = getSetting($mysqli, "toplist_id");		
		$data["global_title"] = getSetting($mysqli, "global_title");
		$data["global_url"] = getSetting($mysqli, "global_url");	
		$data["admin_mail"] = getSetting($mysqli, "admin_mail");		
		$data["ads_left"] = getSetting($mysqli, "ads_left");	
		$data["ads_right"] = getSetting($mysqli, "ads_right");
		
		return $data;
	}
}