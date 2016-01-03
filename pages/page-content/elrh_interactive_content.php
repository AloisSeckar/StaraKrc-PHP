<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["interactive_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["interactive_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		// jQuery javascript for highlighting elements upon mouse hovering
		// from http://davidlynch.org/projects/maphilight/docs/demo_world.html
		echo '<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>'.PHP_EOL;
		echo '<script type="text/javascript" src="/scripts/java-script/jquery.maphilight.min.js"></script>'.PHP_EOL;
	    echo '<script type="text/javascript">$(function() {'.PHP_EOL;
			echo "$('.map').maphilight({fade: false});".PHP_EOL;
		echo '});</script>'.PHP_EOL;
		// map of region with set of map-area elements with links to galleries
		echo '<table><tr><td>'.PHP_EOL;
		echo '<img class="map" src="/content/interactive_map.jpg" alt="'.$page_data["texts"]["interactive_headline"].'" usemap="#krc">'.PHP_EOL;
		echo '<map name="krc">'.PHP_EOL;
		if (!empty($page_data["interactives"])) {
			foreach ($page_data["interactives"] as $current) {
				$x2 = $current["coord_x"] + $current["size"];
				$y2 = $current["coord_y"] + $current["size"];
				echo '<area shape="rect" coords="'.$current["coord_x"].','.$current["coord_y"].','.$x2.','.$y2.'" href="/gallery/g/'.$current["gallery"].'" alt="'.$current["name"].'" title="'.$current["name"].'">'.PHP_EOL;
			}
		}
		echo '</map>'.PHP_EOL;
		echo '</td></tr></table>'.PHP_EOL;
	}
}