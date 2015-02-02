<?php
class Reply extends DataObject {

	private static $db = array(
		'Content' => 'HTMLText',
		"Date" => "Date"
	);
	
	private static $has_one = array(
		'Question' => 'Question',
		'Owner' => 'Member'
	);
    
    private static $has_many = array(
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
		
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content', 'Content'));
		
		$fields->addFieldToTab("Root.Main", $dateField = new DateField("Date", "Date Created"));
		$dateField->setConfig('showcalendar', true);
				
		return $fields;
	}
	
}