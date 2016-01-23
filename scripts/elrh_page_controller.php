<?php
/**
 * Handle page rendering process
 */
class ELRHPageController {
	
	/// ATRIBUTES \\\
	
    private $mysqli; // contains MySQL connection and db-handling methods
	
	private $page_request; // string containing page to be displayed
	private $item_request; // string containing item (typically articles) to be displayed
	
	private $page_data; // array containing all relevant data to be displayed within page-content
	
	/// PUBLIC METHODS \\\
	
	public function resolvePath($url) {
		// split url by "/"
		$url_parts = preg_split('~/~', $url);
		// page (set default if needed)
		if ($url_parts[0]!="") {
			$this->page_request = $url_parts[0];
		} else {
			$this->page_request = "index";
		}
		// possible detailed request (articles, gallery)
		if (!empty($url_parts[1])) {
			$this->item_request = $url_parts[1];
			// gallery - there may be 2nd level request
			if (!empty($url_parts[2])) {
				$this->item_request .= '/'.$url_parts[2];
			}
		} else {
			$this->item_request = "";
		}
		
		// check if desired page exists
		if ((!file_exists(getcwd().'/pages/page-data/elrh_'.$this->page_request.'_data.php'))
			||(!file_exists(getcwd().'/pages/page-content/elrh_'.$this->page_request.'_content.php'))) {
				$this->page_data["request"] = $this->page_request; // store for display in error page
				$this->page_request = "error";
		}
	}
	
	public function prepareData() {
		// variable initial set (to avoid possible warnings later)
		$this->page_data["texts"]["null"] = "";
		$this->page_data["item_title"] = "";
		// TODO allow other languages
		$this->page_data["lang"] = "cz";
		// set mySQL
		$this->getMySQLConnection();
		// variable info that depends on displayed page
		// mysql must work and page must exist
		if ($this->page_data["mysql"] == true) {
			if ($this->page_request != "error") {
				// get additional data to be displayed
				include_once getcwd().'/pages/page-data/elrh_'.$this->page_request.'_data.php';
				$this->page_data = array_merge($this->page_data, ELRHPageData::prepareData($this->item_request, $this->mysqli));
				// get language variables for given page
				include_once getcwd().'/scripts/data-helpers/elrh_text_retriever.php';
				$this->page_data["texts"] = ELRHTextRetriever::getTextsForPage($this->mysqli, $this->page_data["lang"], $this->page_request);
				// for admin requests we need special "output" text variable
				if (!empty($this->page_data["admin_output"])) {
					$this->page_data["texts"]["admin_output"] = ELRHTextRetriever::getText($this->mysqli, $this->page_data["lang"], $this->page_data["admin_output"]);
				}
			} else {
				// get global site title
				include_once getcwd().'/scripts/data-helpers/elrh_db_extractor.php';
				$this->page_data["title"] = ELRHDataExtractor::retrieveItem($this->mysqli, "SELECT value FROM elrh_settings WHERE var='global_title'", "value");	
			}
		}
		// always presented info
		// mysql must work
		if ($this->page_data["mysql"] == true) {
			// global site text values
			include_once getcwd().'/scripts/data-helpers/elrh_sitedata_retriever.php';
			$this->page_data["texts"] = array_merge($this->page_data["texts"], ELRHSitedataCreator::createSiteTexts($this->mysqli, $this->page_data["lang"]));
			$this->page_data["settings"] = ELRHSitedataCreator::createSiteSettings($this->mysqli);
			// page title
		    // concluding from global title and possibly from particular page subtitle or article/gallery/image title
			// global_site_title contains always presented global title - set up along with global texts
			// $this->page_request."_headline" stands for page headline (and therefore subtitle) - set up along with particular page texts
			// item_title may contain item-specific title - set up along with page data
			// for "index" and "error" use simplified title
			if (($this->page_request=="index") || ($this->page_request=="error")) {
				$this->page_data["title"] = $this->page_data["settings"]["global_title"];
			} else {
				include_once getcwd().'/scripts/content-helpers/elrh_title_creator.php';
				$this->page_data["title"] = ELRHTitleCreator::createSiteTitle($this->page_data["settings"]["global_title"], $this->page_data["texts"][$this->page_request."_headline"], $this->page_data["item_title"]);
			}
			// menu
			include_once getcwd().'/scripts/content-helpers/elrh_menu_creator.php';
			$this->page_data["menu"] = ELRHMenuCreator::createMenuContent($this->page_data["texts"]);
			// bottom navigation
			include_once getcwd().'/scripts/content-helpers/elrh_navigation_creator.php';
			$this->page_data["nav"] = ELRHNavigationCreator::createNavigationContent($this->page_data["lang"], $this->mysqli);
		} else {
			// set hard-core default values
			$this->page_data["title"] = 'ELRHistory Web - NoDB';
			$this->page_data["menu"]["top"] = '<div id="menu">&nbsp;Not connected</div>';
			$this->page_data["nav"] = '&raquo;&nbsp;<a href="/" title="Index">INDEX</a>';
		}
	}
	
	public function renderPage() {
		include_once getcwd().'/scripts/elrh_page_renderer.php';
		ELRHPageRenderer::renderHTMLStart();
			ELRHPageRenderer::renderHTMLHead($this->page_data["title"], $this->page_data["texts"]["global_meta_dscr"], $this->page_data["settings"]["fb_image"]);
			ELRHPageRenderer::renderBodyStart($this->page_data["settings"]["ga_id"]);
				// menu is before header in black beat css
				ELRHPageRenderer::renderPageMenu($this->page_data["menu"]["top"]); 
				ELRHPageRenderer::renderPageHeader($this->page_data["texts"]["global_site_title"], $this->page_data["texts"]["global_site_motto"]);
				// content itself
				ELRHPageRenderer::renderContentStart($this->page_data["texts"]["global_login"], $this->page_data["texts"]["global_admin"], $this->page_data["texts"]["global_logout"]);
					if ($this->page_data["mysql"] == true) {
						if ($this->page_request != "error") {
							// mysql works and page exists
							include_once getcwd().'/pages/page-content/elrh_'.$this->page_request.'_content.php';
							ELRHPageContentRenderer::renderContent($this->page_data);
						} else {
							// mysql works but page doesnt exist
							include_once getcwd().'/scripts/content-helpers/elrh_error_page.php';
							ELRHPageContentRenderer::renderContent($this->page_data["request"]);
						}	
					} else {
						// mysql doesnt work
						include_once getcwd().'/scripts/content-helpers/elrh_nodb_page.php';
						ELRHPageContentRenderer::renderContent();
					}
				ELRHPageRenderer::renderContentEnd($this->page_data["nav"], $this->page_data["settings"]["toplist_id"]);
				// footer
				ELRHPageRenderer::renderPageFooter($this->page_data["settings"]["global_title"], $this->page_data["menu"]["bottom"], $this->page_data["settings"]["ads_left"], $this->page_data["settings"]["ads_right"]);
		ELRHPageRenderer::renderHTMLEnd();
	}
	
	
	/// PRIVATE METHODS \\\

    private function getMySQLConnection() {
		// get connection info
		include_once getcwd().'/scripts/data-helpers/elrh_db_connector.php';
		$databaseInfo = new ELRHDBConnector();
		// set connection info
		if (!$databaseInfo->error) {
			$this->mysqli = new mysqli($databaseInfo->MySQL_Host, $databaseInfo->MySQL_User, 
				$databaseInfo->MySQL_Pass, $databaseInfo->MySQL_Db);
			// work with DB
			if (($this->mysqli!=null)&&($this->mysqli->connect_error == NULL)) {
				// set db encoding
				$this->mysqli->set_charset("utf8");
				// notify that no error occured
				$this->page_data["mysql"] = true; 
			} else {
				// notify that error occured and connection is not established
				$this->page_data["mysql"] = false; 
			}
		} else {
			// error while reading config file
			$this->page_data["mysql"] = false; 
		}
    }
}

?>