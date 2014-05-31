<?php
class ClinicalTrials extends ResearchPage {

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
class ClinicalTrials_Controller extends ResearchPage_Controller {

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
		'LatestTweet','galleryPhotos'
	);

	public function init() {
		parent::init();

		// Security Check. Comment to disable
		// if(!Permission::check("VIEW_SITE")) Security::permissionFailure();
		//Requirements::set_write_js_to_body(false);
		Requirements::combine_files(
	    	'clinicaltrials.carot.js',
		    array(
		        'themes/v3/js/clinicalgallery.js'
		    )
		);
	}


	public function index($arguments){
		//Redirect to first child
		$p = $arguments->param('URLSegment');
		$d = Page::get()->filter(array('URLSegment'=>$p))->First();
		$this->redirect($d->AbsoluteLink());
	}

	public function galleryPhotos(){
		return $this->Link;
	}



}
