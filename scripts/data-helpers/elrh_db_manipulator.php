<?php
/**
 * Shared methods for managing data from MySQL
 * ADD/EDIT/DELETE functions
 */
class ELRHDataManipulator {
	
	/**
	 * Performs "add-new" action
	 */
	public static function addRecord($mysqli, $query) {
		// TODO some more managing here?
		return $mysqli->query($query);
	}
	
	/**
	 * Performs "edit-existing" action
	 */
	public static function editRecord($mysqli, $query) {
		// TODO some more managing here?
		return $mysqli->query($query);
	}
	
	/**
	 * Performs "delete-existing" action
	 */
	public static function deleteRecord($mysqli, $query) {
		// TODO some more managing here?
		return $mysqli->query($query);
	}
}