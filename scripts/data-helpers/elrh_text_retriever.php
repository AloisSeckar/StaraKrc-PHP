<?php
/**
 * Methods to retrieve texts from db
 */
class ELRHTextRetriever {
	/**
	 * Returns single value of given text ($var) in given language ($lang) using existing db connection ($mysqi)
	 */
	public static function getText($mysqli, $lang, $var) {
		$result = $mysqli->query("SELECT value FROM elrh_texts WHERE lang='".$lang."' AND var='".$var."' LIMIT 1");
	    $row = $result->fetch_array();
		//
		if (!empty($row["value"])) {
			return $row["value"];
		} else {
			return "";
		}
	}
	/**
	 * Returns bunch of texts for given page (key starting with $page) in given language ($lang) using existing db connection ($mysqi)
	 */
	public static function getTextsForPage($mysqli, $lang, $page) {
		$result = $mysqli->query("SELECT var, value FROM elrh_texts WHERE lang='".$lang."' AND var LIKE '".$page."_%'");
	    // turn selected values into array indexed by db keys
		$array = null;
		while ($current = $result->fetch_array()) {
			$array[$current["var"]] = $current["value"];
		}
		return $array;
	}
}