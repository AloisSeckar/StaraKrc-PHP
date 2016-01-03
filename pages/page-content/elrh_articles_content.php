<?php
// TODO implement admin functions
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
	    if ($page_data["single"]==true) {
			// there is request for displaying particular article
			if ($page_data["exists"]==true) {
				// article found
				echo '<h1>'.$page_data["entry"]["article_name"].'</h1>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["articles_author"].': '.$page_data["entry"]["author_name"].'</strong>'.PHP_EOL;
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["articles_cat"].': '.$page_data["entry"]["cat"].'</strong>'.PHP_EOL;
					echo '<br />'.PHP_EOL;
					echo '<strong>'.$page_data["texts"]["articles_date"].': '.$page_data["entry"]["posted"].'</strong>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<strong><em>'.$page_data["entry"]["dscr"].'</em></strong>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
				//echo '<p>'.PHP_EOL;
					echo $page_data["entry"]["content"].PHP_EOL;
				//echo '</p>'.PHP_EOL;
				// related gallery section
				echo '<hr />'.PHP_EOL;
				echo '<p>'.PHP_EOL;
				if ($page_data["entry"]["gallery_name"]!=null) {
					echo '<strong>'.$page_data["texts"]["articles_gallery"].'</strong> <a href="/gallery/g/'.$page_data["entry"]["gid"].'">'.$page_data["entry"]["gallery_name"].'</a> <em>('.$page_data["entry"]["images"].' '.$page_data["texts"]["articles_gallery_images"].')</em>'.PHP_EOL;
				} else {
					echo $page_data["texts"]["articles_nogallery"].PHP_EOL;
				}
				echo '</p>'.PHP_EOL;
				// comments section
				echo '<hr />'.PHP_EOL;
				echo '<h2>'.$page_data["texts"]["articles_comments"].'</h2>';
				echo '<p class="centered">'.PHP_EOL;
					include_once getcwd().'/scripts/content-helpers/elrh_social_media_creator.php';
					ELRHSocialMediaCreator::renderShareBox($page_data["settings"]["global_url"].'articles/'.$page_data["entry"]["aid"], $page_data["settings"]["global_title"]);
					echo '<br />'.PHP_EOL;
					ELRHSocialMediaCreator::renderCommentBox($page_data["settings"]["global_url"].'articles/'.$page_data["entry"]["aid"]);
				echo '</p>'.PHP_EOL;
			} else {
				// article not found
				echo '<h1>'.$page_data["texts"]["articles_headline"].'</h1>'.PHP_EOL;
				echo '<p class="red-note">'.PHP_EOL;
					echo $page_data["texts"]["articles_noarticle"].PHP_EOL;
				echo '</p>'.PHP_EOL;
				echo '<p>'.PHP_EOL;
					echo '<a href="/articles">'.$page_data["texts"]["articles_back"].'</a>'.PHP_EOL;
				echo '</p>'.PHP_EOL;
			}
		} else {
			// there is request for displaying blog index
			echo '<h1>'.$page_data["texts"]["articles_headline"].'</h1>'.PHP_EOL;
			echo '<p>'.PHP_EOL;
				echo $page_data["texts"]["articles_info"].PHP_EOL;
			echo '</p>'.PHP_EOL;
			// list of articles
			echo '<h2>'.$page_data["texts"]["articles_list"].'</h2>'.PHP_EOL;
			echo '<table>'.PHP_EOL;
			// headers
			echo '<tr>'.PHP_EOL;
				echo '<th>'.$page_data["texts"]["articles_date"].'</th>'.PHP_EOL;
				echo '<th>'.$page_data["texts"]["articles_cat"].'</th>'.PHP_EOL;
				echo '<th class="left">'.$page_data["texts"]["articles_name"].'</th>'.PHP_EOL;
				echo '<th>'.$page_data["texts"]["articles_author"].'</th>'.PHP_EOL;
				echo '<th>'.$page_data["texts"]["articles_related"].'</th>'.PHP_EOL;
			echo '</tr>'.PHP_EOL;
			// display stored articles
			if (!empty($page_data["entries"])) {
				foreach ($page_data["entries"] as $row) {
					echo '<tr>';
						echo '<td>'.$row["posted"].'</td>'.PHP_EOL;
						echo '<td>'.$row["cat"].'</td>'.PHP_EOL;
						// article brief overview
						echo '<td class="justify">'.PHP_EOL;
							echo '<a href="/articles/'.$row["aid"].'"><strong>'.$row["article_name"].'</strong></a><br />'.PHP_EOL;
							echo $row["dscr"].'<br />'.PHP_EOL;
							echo '<a href="/articles/'.$row["aid"].'">['.$page_data["texts"]["articles_read"].']</a>';
						echo '</td>'.PHP_EOL;
						// author
						echo '<td>'.$row["author_name"].'</td>'.PHP_EOL;
						// related gallery
						echo '<td>'.PHP_EOL;
							if ($row["gallery_name"]!=null) {
								echo '<a href="/gallery/g/'.$row["gid"].'"><img src="/images/article_gallery.png" title="'.$row["gallery_name"].'" alt="'.$row["gallery_name"].'" /></a>'.PHP_EOL;
							} else {
								echo '<img src="/images/article_no_gallery.png" title="'.$page_data["texts"]["articles_nogallery"].'" alt="'.$page_data["texts"]["articles_nogallery"].'" />'.PHP_EOL;
							}
						echo '</td>'.PHP_EOL;
					echo '</tr>'.PHP_EOL;
				}
			} else {
				// no entries
				echo '<tr>'.PHP_EOL;
					echo '<td colspan="5">'.$page_data["texts"]["articles_nocontent"].'</td>'.PHP_EOL;
				echo '</tr>'.PHP_EOL;
			}
			echo '</table>'.PHP_EOL;			
		}
	}
}