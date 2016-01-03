<?php
/** 
 * Getting DB connection strings from data file
 */
class ELRHDBConnector {
	public $MySQL_Host;
	public $MySQL_User;  
	public $MySQL_Pass;
	public $MySQL_Db;
	public $error = false;
	
	public function __construct() {
		try {
			// read connection values from config file
			$config = fopen(getcwd().'/dbconfig.dbc', 'r');
			$this->MySQL_Host = trim(fgets($config));
			$this->MySQL_User = trim(fgets($config));
			$this->MySQL_Pass = trim(fgets($config));
			$this->MySQL_Db   = trim(fgets($config));
			fclose($config);
		} catch(Exception $e) {
			$this->error = true;
		}
	}
}
?>
