<?php
// TODO implement admin functions
// TODO rework and return "interactive map"
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		if ($page_data["display"]=="error") {
			// there was wrong url input
			echo '<h1>'.$page_data["texts"]["gallery_headline"].'</h1>'.PHP_EOL;
			echo '<p class="red-note">'.PHP_EOL;
				echo $page_data["texts"]["gallery_error"].PHP_EOL;
			echo '</p>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				echo '<a href="/gallery">'.$page_data["texts"]["gallery_back"].'</a>'.PHP_EOL;
			echo '</p>'.PHP_EOL;
		} else if ($page_data["display"]=="image") {
			// there is request for displaying particular image
			if ($page_data["exists"]==true) {
				// image found
				// image title
				echo '<h1>';
					echo $page_data["entry"]["name"];
					// admin options
					if (isset($_SESSION["user"])) {
						echo ' <a href="/admin/select_image/'.$page_data["entry"]["iid"].'"><img src="/images/edit.png" title="'.$page_data["texts"]["gallery_edit"].'" alt="'.$page_data["texts"]["gallery_edit"].'" height="24" /></a>';
					}
				echo '</h1>'.PHP_EOL;
				// some meta-info
				echo '<p>'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_author"].': '.$page_data["entry"]["author_name"].'</strong>'.PHP_EOL;
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_cat"].': <a href="/gallery/g/'.$page_data["parent"]["id"].'" title="'.$page_data["parent"]["name"].'">'.$page_data["parent"]["name"].'</a></strong>'.PHP_EOL;
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_created"].':</strong> '.$page_data["entry"]["created"].PHP_EOL;
				echo '</p>'.PHP_EOL;
				// dscr
				echo '<p>'.PHP_EOL;
					if (!empty($page_data["entry"]["dscr"])) {
						echo $page_data["entry"]["dscr"].PHP_EOL;
					} else {
						// default "no dscr" text
						echo $page_data["texts"]["gallery_dscr"].PHP_EOL;
					}
				echo '</p>'.PHP_EOL;
				// top navbox
				include_once getcwd().'/scripts/content-helpers/elrh_navigation_creator.php';
					// set lang variables array to be feed to helper method
					$lang["prev"] = $page_data["texts"]["global_image_prev"];
					$lang["gallery"] = $page_data["texts"]["global_image_gallery"];
					$lang["next"] = $page_data["texts"]["global_image_next"];
					$lang["move_backwards"] = $page_data["texts"]["gallery_move_backwards"];
					$lang["move_forwards"] = $page_data["texts"]["gallery_move_forwards"];
				$navbox = ELRHNavigationCreator::createImageNavbox($page_data["entry"]["iid"], $page_data["entry"]["prev"], $page_data["entry"]["next"], $page_data["parent"]["id"], $lang);
				// image and nagivation
				echo '<table>'.PHP_EOL;
				    // top navbox
					echo '<tr><td>'.$navbox.'</td></tr>'.PHP_EOL;
					// image itself
					echo '<tr><td>'.PHP_EOL;
						// resize, but only if needed (if wider than 800px)
						$img_data = getImageSize(getcwd().'/content/gallery/'.$page_data["entry"]["image"]);
						if ($img_data[0]>800) {
							$size_restriction = 'width="800"';
						} else {
							$size_restriction = "";
						}
						echo '<a href="/content/gallery/'.$page_data["entry"]["image"].'" title="'.$page_data["texts"]["gallery_full"].'" target="_blank"><img class="boxed" src="/content/gallery/'.$page_data["entry"]["image"].'" alt="'.$page_data["entry"]["name"].'" '.$size_restriction.' /></a>'.PHP_EOL;
					echo '</td></tr>'.PHP_EOL;
					// bottom navbox
					echo '<tr><td>'.$navbox.'</td></tr>'.PHP_EOL;
				echo '</table>'.PHP_EOL;
			} else {
				// image not found
				echo '<h1>'.$page_data["texts"]["gallery_headline"].'</h1>'.PHP_EOL;
				echo '<p class="red-note">'.PHP_EOL;
					echo $page_data["texts"]["gallery_noimage"].PHP_EOL;
				echo '</p>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<a href="/gallery">'.$page_data["texts"]["gallery_back"].'</a>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
			}
		} else if ($page_data["display"]=="gallery") {
			// there is request for displaying particular gallery
			if ($page_data["exists"]==true) {
				// gallery found
				// gallery title
				echo '<h1>';
					echo $page_data["entry"]["name"];
					// admin options
					if (isset($_SESSION["user"])) {
						echo ' <a href="/admin/select_gallery/'.$page_data["entry"]["gid"].'"><img src="/images/edit.png" title="'.$page_data["texts"]["gallery_edit"].'" alt="'.$page_data["texts"]["gallery_edit"].'" height="24" /></a>';
					}
				echo '</h1>'.PHP_EOL;
				// some meta-info
				echo '<p>'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_author"].': '.$page_data["entry"]["author_name"].'</strong>'.PHP_EOL;
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_cat"].': ';
					if (!empty($page_data["parent"])) {
						echo '<a href="/gallery/g/'.$page_data["parent"]["id"].'" title="'.$page_data["parent"]["name"].'">'.$page_data["parent"]["name"].'</a></strong>'.PHP_EOL;
					} else {
						echo '<a href="/gallery" title="'.$page_data["texts"]["gallery_parent"].'">'.$page_data["texts"]["gallery_parent"].'</a></strong>'.PHP_EOL;
					}
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_date"].': '.$page_data["entry"]["created"].'</strong>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
				// gallery dscr
				echo '<p>'.PHP_EOL;
					echo $page_data["entry"]["dscr"].PHP_EOL;
				echo '</p>'.PHP_EOL;
				// related galleries
				echo '<h3>'.$page_data["texts"]["gallery_galleries"].'</h3>'.PHP_EOL;
				if (!empty($page_data["galleries"])) {
					echo '<ul>'.PHP_EOL;
					foreach ($page_data["galleries"] as $current) {
						echo '<li><a href="/gallery/g/'.$current["id"].'" title="'.$current["name"].'">'.$current["name"].'</a> ['.$current["images"].']</li>'.PHP_EOL;
					}
					echo '</ul>'.PHP_EOL;
				}
				// images
				echo '<h3>'.$page_data["texts"]["gallery_images"].'</h3>'.PHP_EOL;
				if (!empty($page_data["images"])) {
					// show records in table - up to 6 images in one row
					echo '<table>'.PHP_EOL;
					   $x = 0;
					   foreach ($page_data["images"] as $current) {
							// open new row (before each 6 images)
							if ($x==0) {
								echo '<tr>'.PHP_EOL;
							}
							// show each one image in separate table cell
							echo '<td><a href="/gallery/i/'.$current["id"].'"><img class="boxed" src="/content/gallery/thumbs/'.$current["image"].'" title="'.$current["name"].'" alt="'.$current["name"].'" ></a></td>'.PHP_EOL;
							// increase "row counter" in the end
							$x++;
							// close row (after each 6 images) and reset counter
							if ($x>6) {
								echo '</tr>'.PHP_EOL;
								$x = 0;
							}
					    }
					echo '</table>'.PHP_EOL;
				} else {
					// no images
					echo '<p>'.PHP_EOL;
						echo $page_data["texts"]["gallery_images_none"].PHP_EOL;
					echo '</p>'.PHP_EOL;
				}
				// total images and link back to parent gallery
				include_once getcwd().'/scripts/content-helpers/elrh_output_handler.php';
				echo '<p>'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_images_total_1"].' '.$page_data["entry"]["images"].' '.ELRHOutputHandler::adjustImageCountText($page_data["texts"]["gallery_images_total_2"], $page_data["entry"]["images"], $page_data["lang"]).'</strong>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["gallery_cat"].':</strong> '.PHP_EOL;
					if (!empty($page_data["parent"])) {
						echo '<a href="/gallery/g/'.$page_data["parent"]["id"].'" title="'.$page_data["parent"]["name"].'">'.$page_data["parent"]["name"].'</a>'.PHP_EOL;
					} else {
						echo '<a href="/gallery" title="'.$page_data["texts"]["gallery_parent"].'">'.$page_data["texts"]["gallery_parent"].'</a>'.PHP_EOL;
					}
				echo '</p>'.PHP_EOL;
			} else {
				// gallery not found
				echo '<h1>'.$page_data["texts"]["gallery_headline"].'</h1>'.PHP_EOL;
				echo '<p class="red-note">'.PHP_EOL;
					echo $page_data["texts"]["gallery_nogallery"].PHP_EOL;
				echo '</p>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<a href="/gallery">'.$page_data["texts"]["gallery_back"].'</a>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
			}
		} else {
			// there is request for displaying gallery index
			echo '<h1>'.$page_data["texts"]["gallery_headline"].'</h1>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				echo $page_data["texts"]["gallery_info"].PHP_EOL;
			echo '</p>'.PHP_EOL;
			echo '<hr />'.PHP_EOL;
			// list of galleries
			if (!empty($page_data["galleries"])) {
				foreach ($page_data["galleries"] as $row) {
					// gallery title
					echo '<h2>';
						echo $row["name"];
						// admin options
						if (isset($_SESSION["user"])) {
							echo ' <a href="/admin/select_gallery/'.$row["id"].'"><img src="/images/edit.png" title="'.$page_data["texts"]["gallery_edit"].'" alt="'.$page_data["texts"]["gallery_edit"].'" height="16" /></a>';
						}
					echo '</h2>'.PHP_EOL;
					// description (shorten to 200 letters if needed)
					include_once getcwd().'/scripts/content-helpers/elrh_output_handler.php';
					echo '<p><em>'.ELRHOutputHandler::shortenText($row["dscr"], 250, '/gallery/g/'.$row["id"], $page_data["texts"]["gallery_more"]).'</em></p>'.PHP_EOL;
					// images
					echo '<h3>'.$page_data["texts"]["gallery_images"].'</h3>'.PHP_EOL;
						// display up to first 7 images
						if (!empty($page_data[$row["name"]]["images"])) {
							foreach ($page_data[$row["name"]]["images"] as $current) {
								echo '<a href="/gallery/i/'.$current["id"].'"><img class="boxed" src="/content/gallery/thumbs/'.$current["image"].'" title="'.$current["name"].'" alt="'.$current["name"].'" /></a>&nbsp;'.PHP_EOL;
							}
							// display total images count
							echo '<p>'.PHP_EOL;
							echo '<strong>'.$page_data["texts"]["gallery_images_total_1"].' '.$row["images"].' '.ELRHOutputHandler::adjustImageCountText($page_data["texts"]["gallery_images_total_2"], $row["images"], $page_data["lang"]).'</strong>'.PHP_EOL;
							echo ' [<a href="/gallery/g/'.$row["id"].'" title="'.$row["name"].'">'.$page_data["texts"]["gallery_display"].'</a>]'.PHP_EOL;
							echo '</p>'.PHP_EOL;
						} else {
							// no images found
							echo '<p>'.PHP_EOL;
								echo $page_data["texts"]["gallery_images_none"].' [<a href="/gallery/g/'.$row["id"].'" title="'.$row["name"].'">'.$page_data["texts"]["gallery_display"].'</a>]'.PHP_EOL;
							echo '</p>'.PHP_EOL;
						}
					// related galleries
					echo '<h3>'.$page_data["texts"]["gallery_galleries"].'</h3>'.PHP_EOL;
					if (!empty($page_data[$row["name"]]["galleries"])) {
						echo '<ul>'.PHP_EOL;
						foreach ($page_data[$row["name"]]["galleries"] as $current) {
							echo '<li><a href="/gallery/g/'.$current["id"].'" title="'.$current["name"].'">'.$current["name"].'</a> ['.$current["images"].']</li>'.PHP_EOL;
						}
						echo '</ul>'.PHP_EOL;
					}
					// related articles
					echo '<h3>'.$page_data["texts"]["gallery_articles"].'</h3>'.PHP_EOL;
					if (!empty($page_data[$row["name"]]["articles"])) {
						echo '<ul>'.PHP_EOL;
						foreach ($page_data[$row["name"]]["articles"] as $current) {
							echo '<li><a href="/articles/'.$current["id"].'" title="'.$current["name"].'">'.$current["name"].'</a> ['.$current["author_name"].']</li>'.PHP_EOL;
						}
						echo '</ul>'.PHP_EOL;
					}
					echo '<hr />'.PHP_EOL;
				}
			} else {
				// no galleries
				echo '<p class="red-note">'.PHP_EOL;
					echo $page_data["texts"]["gallery_nocontent"].PHP_EOL;
				echo '</p>'.PHP_EOL;
			}
		}
	}
}