<?php
class TeamPage extends ResearchPage {

	private static $db = array(
		'TopContent' => 'Text'
	);

	/*function canCreate($Member = null){
	    if(!Permission::check("EDIT_SITE")) Security::permissionFailure();
	}*/

	private static $has_many = array(
    );

    public function getCMSFields() {
		$fields = parent::getCMSFields();
		$topcontent = new TextAreaField('TopContent');
		$fields->addFieldToTab('Root.Main', $topcontent,'MenuTitle');
		
		$config2 = new GridFieldConfig_RelationEditor();
		$config2->addComponents(new GridFieldExportButton('before'));
		$config2->addComponent(new GridFieldSortableRows('SortOrder'));
		$toolbox = GridField::create('GalleryImages',false, $this->GalleryImages()->sort('SortOrder'), $config2);
		if(Permission::check("ADMIN")){
			$fields->addFieldToTab('Root.GalleryImages', $toolbox);
		}
		return $fields;
    }

}
class TeamPage_Controller extends ResearchPage_Controller {

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
		'LatestTweet','TopImage'
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


	public function index($arguments){
		$u = $arguments->requestVars();
		if(array_key_exists('leaders', $u)){
			//Get Leaders
			$team = TeamMemberPage::get()->filter(array('Type'=>'Leader'));
			$this->TeamList = $team;
			$this->Title = 'Leaders';
		}else if(array_key_exists('alumni', $u)){
			$team = TeamMemberPage::get()->filter(array('Type'=>'Alumni'));
			$this->TeamList = $team;
			$this->Title = 'Alumni';
		}
		else if(array_key_exists('team', $u)){
			$team = TeamMemberPage::get()->filter(array('Type'=>'Team'))->sort('Title ASC');
			$this->TeamList = $team;
			$this->Title = 'Team';
		}else{
			$team = TeamMemberPage::get();
			$this->TeamList = $team;
		}
		return $this->renderWith(array('ResearchPage','TeamPage'));
	}



}
