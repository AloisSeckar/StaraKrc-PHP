<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["map_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["map_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		echo '<ul>'.PHP_EOL;
			echo '<li class="strong"><a href="/" title="'.$page_data["texts"]["map_index_dscr"].'">'.$page_data["texts"]["map_index"].'</a> ('.$page_data["texts"]["map_index_dscr"].')</li>'.PHP_EOL;
			echo '<li>- <a href="/news" title="'.$page_data["texts"]["map_news_dscr"].'">'.$page_data["texts"]["map_news"].'</a></strong> ('.$page_data["texts"]["map_news_dscr"].')</li>'.PHP_EOL;
			echo '<li>- <a href="/map" title="'.$page_data["texts"]["map_sitemap_dscr"].'">'.$page_data["texts"]["map_sitemap"].'</a></strong> ('.$page_data["texts"]["map_sitemap_dscr"].')</li>'.PHP_EOL;
			echo '<li class="strong"><a href="/articles" title="'.$page_data["texts"]["map_articles_dscr"].'">'.$page_data["texts"]["map_articles"].'</a> ('.$page_data["texts"]["map_articles_dscr"].')</li>'.PHP_EOL;
			echo '<li class="strong"><a href="/gallery" title="'.$page_data["texts"]["map_gallery_dscr"].'">'.$page_data["texts"]["map_gallery"].'</a> ('.$page_data["texts"]["map_gallery_dscr"].')</li>'.PHP_EOL;
			echo '<li class="strong"><a href="/library" title="'.$page_data["texts"]["map_library_dscr"].'">'.$page_data["texts"]["map_library"].'</a> ('.$page_data["texts"]["map_library_dscr"].')</li>'.PHP_EOL;
			echo '<li class="strong"><a href="/links" title="'.$page_data["texts"]["map_links_dscr"].'">'.$page_data["texts"]["map_links"].'</a> ('.$page_data["texts"]["map_links_dscr"].')</li>'.PHP_EOL;
			echo '<li class="strong"><a href="/contacts" title="'.$page_data["texts"]["map_contacts_dscr"].'">'.$page_data["texts"]["map_contacts"].'</a> ('.$page_data["texts"]["map_contacts_dscr"].')</li>'.PHP_EOL;
		echo '</ul>'.PHP_EOL;
	}
}