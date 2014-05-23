<?php
class TeamMemberPage extends TeamPage {

	private static $db = array(
		'Position'
	);

	/*function canCreate($Member = null){
	    if(!Permission::check("EDIT_SITE")) Security::permissionFailure();
	}*/

	private static $has_one = array(
		'Image' => 'Image'
    );

    private static $has_many = array(
		'References' => 'Reference'
    );

    public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', new UploadField('Image'),'MenuTitle');
		$fields->addFieldToTab('Root.Main', new TextField('Position'),'MenuTitle');
		
		$config2 = new GridFieldConfig_RelationEditor();
		$config2->addComponents(new GridFieldExportButton('before'));
		$config2->addComponent(new GridFieldSortableRows('SortOrder'));
		$toolbox = GridField::create('References',false, $this->References()->sort('SortOrder'), $config2);
		$fields->addFieldToTab('Root.References', $toolbox);
		return $fields;
    }

}
class TeamMemberPage_Controller extends TeamPage_Controller {

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

	public function index(){

		return $this->renderWith(array('ResearchPage','TeamMemberPage'));
	}


	/*public function GalleryImages(){
		return SiteConfig::get()->First()->HomeHeaderImages()->sort('RAND()')->First();
	}*/



}
