<?php
/**
 * Render form for login action
 */
class ELRHLoginFormRenderer {
	/**
	 * Login for admin
	 * $texts - localized labels and hints
	 */
	public static function renderLoginForm($texts) {
		echo '<form action="/admin/login" method="post">'.PHP_EOL;
				echo '<table class="admin">'.PHP_EOL;
					echo '<tr><td><strong>'.$texts["admin_login_name"].':</strong></td>'.PHP_EOL;
					echo '<td><input type="text" name="name"></td></tr>'.PHP_EOL;
					echo '<tr><td><strong>'.$texts["admin_login_pass"].':</strong></td>'.PHP_EOL;
					echo '<td><input type="password" name="pass"><br /></td></tr>'.PHP_EOL;
					echo '<tr><td colspan="2"><input type="submit" value="'.$texts["admin_login_login"].'"></td></tr>'.PHP_EOL;
				echo '</table>'.PHP_EOL;
		echo '</form>'.PHP_EOL;
	}
}
?>