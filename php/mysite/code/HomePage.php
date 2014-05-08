<?php
class HomePage extends Page {

	private static $db = array(
	);

	/*function canCreate($Member = null){
	    if(!Permission::check("EDIT_SITE")) Security::permissionFailure();
	}*/

	private static $has_many = array(
		"HomeImages" => "GalleryImage"
    );

    public function getCMSFields() {
		$fields = parent::getCMSFields();
		//$fields->removeFieldFromTab("Root.Main","Content");

		/*$config = new GridFieldConfig_RelationEditor();
		$config->addComponents(new GridFieldExportButton('before'));
		$callouts = GridField::create('Callouts',false, $this->Callouts(), $config);
		if(Permission::check("ADMIN")){
			$fields->addFieldToTab('Root.Callouts', $callouts);
		}*/

		/*$config2 = new GridFieldConfig_RelationEditor();
		$config2->addComponents(new GridFieldExportButton('before'));
		$config2->addComponent(new GridFieldSortableRows('SortOrder'));
		$toolbox = GridField::create('ToolboxLinks',false, $this->ToolboxLinks()->sort('SortOrder'), $config2);
		if(Permission::check("ADMIN")){
			$fields->addFieldToTab('Root.Toolbox', $toolbox);
		}*/

		$config2 = new GridFieldConfig_RelationEditor();
		$config2->addComponents(new GridFieldExportButton('before'));
		$config2->addComponent(new GridFieldSortableRows('SortOrder'));
		$toolbox = GridField::create('HomePageImages',false, $this->HomeImages()->sort('SortOrder'), $config2);
		if(Permission::check("ADMIN")){
			$fields->addFieldToTab('Root.HomePageImages', $toolbox);
		}
		
		return $fields;
    }

}
class HomePage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
		'LatestTweet','HomeImage'
	);

	public function init() {
		parent::init();

		// Security Check. Comment to disable
		// if(!Permission::check("VIEW_SITE")) Security::permissionFailure();
		//Requirements::set_write_js_to_body(false);
		/*Requirements::combine_files(
	    'home.ppd.js',
	    array(
	        'themes/v3/js/custom.js',
	    	'themes/v3/js/home.js',
	        'themes/v3/js/bootstrap.min.js',
	        'themes/v3/js/chosen.jquery.min.js',
	        'themes/v3/js/searchoverlay.js'
	    )
		);*/
	}

	public function HomeImage(){
		$d = HomePage::get()->First()->HomeImages()->sort('RAND()')->First();
		$d->Filename = Director::absoluteBaseURL().$d->Image()->Filename;
		$copy = Injector::inst()->create('Text');
		$copy->setValue($d->Description);
		$d->Description = $copy->NoHTML();
		$copy->setValue($d->Title);
		$d->Title = $copy->NoHTML();
		return $d;
	}

	/*public function HomeHeaderImage(){
		return SiteConfig::get()->First()->HomeHeaderImages()->sort('RAND()')->First();
	}*/

	private function makeClickableLinks($text)
	 {
	 $text = preg_replace('/(((f|ht){1}tp:\/\/)[-a-zA-Z0-9@:%_\+.~#?&\/\/=]+)/i',
	                       '<a href="\\1">\\1</a>', $text);
	 $text = preg_replace('/([[:space:]()[{}])(www.[-a-zA-Z0-9@:%_\+.~#?&\/\/=]+)/i',
	                       '\\1<a href="http://\\2">\\2</a>', $text);
	 $text = preg_replace('/([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})/i',
	                       '<a href="mailto:\\1">\\1</a>', $text);
	 return $text;
	 }

	public function LatestTweet(){
		/*$latest = DataObject::get('Tweet')->sort('pubDate DESC');
		$a = new ArrayList();
		foreach($latest as $l){
        	$l->Status = $this->makeClickableLinks($l->Status);
        	$a->push($l);
        }
        return $a;*/
	}

	public function LatestHomeNews() {
		// Deprecated code //
		/*$a= new ArrayList();
		$d = NewsHomePage::get()->First()->getComponents('GeneralNewsSections');
		foreach($d as $s){
			$c = GeneralNewsSection::get()->filter(array('Slug'=>$s->Slug))->First()->getManyManyComponents('Categories')->First();
			foreach ($c as $j) {
				$b =$this->getPosts($j->Slug());
				$a->merge($b);
			}
		}
		
		return $a;*/
	}

	private function getPosts($cat){
		/*$t = array();
		$a = new ArrayList();
		$t = array("TagList:PartialMatch"=>$cat);
		$d = GeneralNews::get()->filter($t)->sort('Date','DESC')->First();
		return $d;*/
	}
	

	function TopStory() {
		// Deprecated code //
		/*$d = GeneralNews::get()->filter(array("TagList:PartialMatch"=>'top-story'))->Last();
		return $d;*/
	} 

}
