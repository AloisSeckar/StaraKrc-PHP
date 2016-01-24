<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["links_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["links_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		//
		if (!empty($page_data["link_cats"])) {
			foreach($page_data["link_cats"] as $cat) {
				echo '<table class="links">'.PHP_EOL;
					echo '<tr>'.PHP_EOL;
						echo '<td colspan="2"><h2>'.$cat["name"].'</h2></td>'.PHP_EOL;
					echo '</tr>'.PHP_EOL;
					if (!empty($page_data["links"][$cat["name"]])) {
						foreach($page_data["links"][$cat["name"]] as $link) {
							echo '<tr>'.PHP_EOL;
								echo '<td>'.PHP_EOL;
									echo '<a href="'.$link["link"].'" title="'.$link["name"].'"><img src="'.$link["thumb"].'" alt="'.$link["name"].'" width="100" height="75" /></a>'.PHP_EOL;
								echo '</td>'.PHP_EOL;
								echo '<td class="justify">'.PHP_EOL;
									echo '<strong><a href="'.$link["link"].'" title="'.$link["name"].'">'.$link["name"]. '</a></strong><br />'.$link["dscr"].PHP_EOL;
								echo '</td>'.PHP_EOL;
							echo '</tr>'.PHP_EOL;
						}
					}
				echo '</table>'.PHP_EOL;
			}
		}
	}
}