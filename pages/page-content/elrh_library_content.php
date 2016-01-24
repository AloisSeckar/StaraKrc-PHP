<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["library_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["library_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		//
		if (!empty($page_data["books_cats"])) {
			foreach($page_data["books_cats"] as $cat) {
				echo '<table class="links">'.PHP_EOL;
					echo '<tr>'.PHP_EOL;
						echo '<td colspan="2"><h2>'.$cat["name"].'</h2></td>'.PHP_EOL;
					echo '</tr>'.PHP_EOL;
					if (!empty($page_data["books"][$cat["name"]])) {
						foreach($page_data["books"][$cat["name"]] as $book) {
							echo '<tr>'.PHP_EOL;
								// book image (with possible link)
								echo '<td>'.PHP_EOL;
									if (!empty($book["url"])) {
										echo '<a href="'.$book["url"].'" title="'.$book["name"].'"><img src="'.$book["thumb"].'" alt="'.$book["name"].'" width="75" height="100" /></a>'.PHP_EOL;
									} else { 
										echo '<img src="'.$book["thumb"].'" alt="'.$book["name"].'" width="75" height="100" />'.PHP_EOL;
									}
								echo '</td>'.PHP_EOL;
								// book info
								echo '<td class="justify">'.PHP_EOL;
									// book name (with possible link)
									if (!empty($book["url"])) {
										echo '<a href="'.$book["url"].'" title="'.$book["name"].'"><strong>'.$book["name"].'</strong></a>'.PHP_EOL;
									} else {
										echo '<strong>'.$book["name"].'</strong>'.PHP_EOL;
									}
									// author and name
									echo '<br /><em>'.$book["writer"].', <strong>'.$book["year"].'</strong>';
									// review (if available)
									if ($book["review"]>0) { 
										echo ' [<a href="/articles/'.$book["review"].'">'.$page_data["texts"]["library_review"]. '</a>]'.PHP_EOL;
									} else if (!empty($book["review_ext"])) { 
										echo ' [<a href="'.$book["review_ext"].'">'.$page_data["texts"]["library_external"]. '</a>]'.PHP_EOL;
									}
									echo '</em><br />'.PHP_EOL;
									// book description
									echo $book["dscr"].PHP_EOL;
								echo '</td>'.PHP_EOL;
							echo '</tr>'.PHP_EOL;
						}
					}
				echo '</table>'.PHP_EOL;
			}
		}
	}
}