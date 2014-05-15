<?php

class Reference extends DataObject{
	private static $db = array(
		'Title' => 'Text',
		'Link' => 'Varchar',
		'SortOrder' => 'Int'
		);

	private static $defaults = array(
	);

	/*protected function setName($name){
		$this->Name = $this->FirstName.' '.$this->LastName;
		$this->write();
	}*/

	private static $has_one = array(
		'ClinicalTrialItem' => 'ClinicalTrialItem',
		'TeamMemberPage' => 'TeamMemberPage',
		'LaboratoryResearchItem' => 'LaboratoryResearchItem',
	);

	private static $belongs_many_many = array(
	);
	
	private static $api_access = true;
	
	
	
    
	/*static $searchable_fields = array(
    //"DistrictID",
    );*/ 
    
	public function getCMSFields()
	{
	    $fields = parent::getCMSFields();
		return $fields;
	}

}