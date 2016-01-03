<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		// welcome text
		echo '<h1>'.$page_data["texts"]["news_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["news_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		// news
		echo '<table>'.PHP_EOL;
		echo '<tr>'.PHP_EOL;
			echo '<th>'.$page_data["texts"]["news_date"].'</th>'.PHP_EOL;
			echo '<th class="left">'.$page_data["texts"]["news_item"].'</th>'.PHP_EOL;
		echo '</tr>'.PHP_EOL;
		foreach ($page_data["news"] as $row) {
			echo '<tr>'.PHP_EOL;
				echo '<td>'.PHP_EOL;
					echo '<strong>'.$row["date"].'</strong>'.PHP_EOL;
				echo '</td>'.PHP_EOL;
				echo '<td class="left">'.PHP_EOL;
					echo $row["content"].' <em>('.$row["author"].')</em>'.PHP_EOL;
				echo '</td>'.PHP_EOL;
			echo '</tr>'.PHP_EOL;
		}
		echo '</table>'.PHP_EOL;
	}
}