<?php
/**
 * Render no-db-connection page content
 */
class ELRHPageContentRenderer {
	public static function renderContent() {
		echo '<p class="red-note">'.PHP_EOL;
			echo 'Bohužel momentálně nefunguje připojení k&nbsp;databázi, proto není možné stránky používat.'.PHP_EOL;
			echo 'Tento problém je obvykle na straně provozovatele webu a&nbsp;po čase sám odezní.'.PHP_EOL;
			echo 'Pokud by se tak delší dobu nedělo, kontaktujte <a href="http://alois-seckar.cz/contacts">autora webu</a>.'.PHP_EOL;
		echo '</p>'.PHP_EOL;
	}
}
?>