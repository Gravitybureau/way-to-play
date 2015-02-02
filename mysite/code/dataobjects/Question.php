<?php
class Question extends DataObject {

	private static $db = array(
		'Title' => 'Text',
		'Content' => 'HTMLText',
		'Categories' => 'Text',
		'Archive' => 'Boolean',
		"Date" => "Date"
	);
	
	private static $has_one = array(
		'Owner' => 'Member'
	);
    
    private static $has_many = array(
		'Replies' => 'Reply'
    );
    
    static $summary_fields = array(
        'Title',
        'Owner.Email',
        'Date'
    );
	
	
	
	/**
	 * Overload so that the default date is today.
	 */
	public function populateDefaults(){
		parent::populateDefaults();
		
		$this->setField('Date', date('Y-m-d H:i:s', strtotime('now')));
	}
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Main', TextField::create('Title', 'Title'));
		
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Content'));
		
		$fields->addFieldToTab('Root.Main', $categories = new MultiSelect2Field(
			'Categories', 
			'Categories', 
			array(
				'Category1' => 'Category1',	
				'Category2' => 'Category2',	
				'Category3' => 'Category3'	
			), 
			'', 
			null,
			true
		));
		
		$fields->addFieldToTab('Root.Main', CheckboxField::create('Archive', 'Archive this question?'));
		
		$fields->addFieldToTab("Root.Main", $dateField = new DateField("Date", "Date Created"));
		$dateField->setConfig('showcalendar', true);
				
		return $fields;
	}
	
	
    	
    /**
     * @param  Member $member
     * @return bool
     */
    public function canView($member = null) {
		
        if (!$member)
            $member = Member::currentUser();

        if ($member->ID == $this->OwnerID || Permission::check('CMS_ACCESS_CMSMain', 'any', $member)) {
            return true;
        }

        return false;
    }
    
    /**
     * A project can only be edited by it's owner or someone with access to the CMS.
     * @param  Member $member
     * @return bool
     */
    public function canEdit($member = null) {
        if (!$member)
            $member = Member::currentUser();

        if ($member->ID == $this->OwnerID || Permission::check('CMS_ACCESS_CMSMain', 'any', $member)) {
            return true;
        }

        return false;
    }
	
	
	
}