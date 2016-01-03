<?php
/**
 * Shared methods for getting data from MySQL
 */
class ELRHDataExtractor {
	
	/**
	 * Returns array or results by given query
	 */
	public static function retrieveArray($mysqli, $query) {
		$array = "";
		$result = $mysqli->query($query);
	    $i = 0;
		try {
			while ($current = $result->fetch_array()) {
				$array[$i] = $current;
				$i++;
			}
		} catch (Exception $e) {
			$array[0] = "db_error";
		}
		return $array;
	}
	
	/**
	 * Returns single row result by given query
	 */
	public static function retrieveRow($mysqli, $query) {
		$result = $mysqli->query($query." LIMIT 1");
		try {
			return $result->fetch_array();
		} catch (Exception $e) {
			return "db_error";
		}
	}
	
	/**
	 * Returns single value by given query and column name
	 */
	public static function retrieveItem($mysqli, $query, $col) {
		$result = $mysqli->query($query." LIMIT 1");
		try {
			$row = $result->fetch_array();
			return $row[$col];
		} catch (Exception $e) {
			return "db_error";
		}
	}
}