<?php
/**
 * Methods for login-related actions
 */
class ELRHLoginHandler {
	/**
	 * Validates login
	 */
	public static function loginAction($mysqli) {
		// get login data
		if ((!empty($_POST["name"]))&&(!empty($_POST["pass"]))) {
			// check for given user's password in db
			include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
			$user = ELRHDataExtractor::retrieveRow($mysqli, "SELECT u_name, u_displayed_name, u_pass FROM elrh_users WHERE u_name='".mysqli_real_escape_string($mysqli, $_POST["name"])."'");
			if ((!empty($user))&&($user[0]!="db_error")) {
				// check password match
				$hashpass = hash('sha512', $_POST["pass"]);
				if ($hashpass==$user["u_pass"]) {
					// set admin sessions
					$_SESSION["user"] = $user["u_name"];
					$_SESSION["user_name"] = $user["u_displayed_name"];
					//
					return "admin_login_success";
				} else {
					// wrong pass
					return "admin_login_wrong";
				}
			} else {
				// wrong user
				return "admin_login_wrong";
			}
		} else {
			// input not set correctly
			return "admin_login_invalid";
		}
	}
	
	/**
	 * Process logout
	 */
	public static function logoutAction() {
		// destroy login sessions
		unset($_SESSION["user"]);
		unset($_SESSION["user_name"]);
		//
		return "admin_logout_processed";
	}
}
?>