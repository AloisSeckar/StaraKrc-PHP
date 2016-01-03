<?php
/**
 * Shared help methods for rendering social media content
 */
class ELRHSocialMediaCreator {
	// social networks sharing box
	public static function renderShareBox($source, $via) {
		echo '<div style="padding-bottom: 3px;" class="fb-share-button" data-href="'.$source.'" data-type="button_count"></div>'.PHP_EOL;
		echo '<a href="https://twitter.com/share" class="twitter-share-button" data-via="'.$via.'" data-lang="cs">Tweet</a>'.PHP_EOL;
		include_once getcwd().'/scripts/java-script/elrh_js_renderer.php';
		ELRHJSRenderer::renderJSShare();
		echo PHP_EOL;
	}
	// facebook comments box
	public static function renderCommentBox($source) {
		echo '<div class="fb-comments" data-href="'.$source.'" data-num-posts="5" data-width="700"></div>'.PHP_EOL;
		include_once getcwd().'/scripts/java-script/elrh_js_renderer.php';
		ELRHJSRenderer::renderJSComments();
	}
}