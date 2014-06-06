<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function Link($action = null) { 
	   if($action == 'index') { 
	      $action = ''; 
	   } 
	   if($this->URLSegment == 'home' && !$action) return Director::baseURL();
	   $r = substr($this->RelativeLink(),0, -1);
	   $txt='/home/';

		 $re1='(\\/)';	# Any Single Character 1
		$re2='(home)';	# Word 1
  		$re3='(\\/)';	# Any Single Character 2
		$newlink = preg_replace("/".$re1.$re2.$re3."/is", '/', $r);

	   else return Director::baseURL() . $newlink . (!$action ? '.html' : "/$action.html"); 
	}

}
class Page_Controller extends ContentController {

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
	);



	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
