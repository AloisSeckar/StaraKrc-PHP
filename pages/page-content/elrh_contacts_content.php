<?php
class ELRHPageContentRenderer {
	public static function renderContent($page_data) {
		// use "echo" function to render all contents of current page
		echo '<h1>'.$page_data["texts"]["contacts_headline"].'</h1>'.PHP_EOL;
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["contacts_info"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		// list of available contacts
		echo '<table>'.PHP_EOL;
			foreach($page_data["contacts"] as $contact) {
				echo '<tr>'.PHP_EOL;
				    // contact type - icon
					echo '<td><img src="/images/contact_'.$contact["contact"].'.png" alt="" width="24" height="24" /></td>'.PHP_EOL;
					// contact content with (possible) link
					if (!empty($contact["link"])) {
						echo '<td class="left"><a href="'.$contact["link"].'">'.$contact["name"].'</a>'.PHP_EOL;
					} else {
						echo '<td class="left">'.$contact["name"].'</a>'.PHP_EOL;
					}
				echo '</tr>'.PHP_EOL;
			}
		echo '</table>'.PHP_EOL;
		// additional ways of contact / additional message
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["contacts_other"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		// fb comments module
		echo '<p>'.PHP_EOL;
			echo $page_data["texts"]["contacts_fb"].PHP_EOL;
		echo '</p>'.PHP_EOL;
		include_once getcwd().'/scripts/content-helpers/elrh_social_media_creator.php';
		ELRHSocialMediaCreator::renderCommentBox($page_data["settings"]["global_url"]);
	}
}