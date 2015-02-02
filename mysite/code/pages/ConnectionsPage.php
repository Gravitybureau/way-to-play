<?php
class ConnectionsPage extends Page {
	
	private static $db = array(
		'ConnectContent' => 'Text',
		'FacebookContent' => 'Text',
	);

	private static $has_one = array(
	);
    
    private static $has_many = array(
    );
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->removeFieldFromTab('Root.Main', 'Content');
        
        $fields->addFieldToTab("Root.Main", new TextareaField('ConnectContent', 'Make Connections Content'));
        $fields->addFieldToTab("Root.Main", new TextareaField('FacebookContent', 'Facebook Groups Content'));

        return $fields;
    }

}
class ConnectionsPage_Controller extends Page_Controller {
    
    static $allowed_actions = array();
	
	
	
	
	// VIEW CONTROLLERS
	
	/* Loop current questions 
	===========================*/
	public function getConnections(){
		
		$member = Member::currentUser();
		$memberID = $member->ID;
		$memberCity = $member->City;
		
		$connections = DataObject::get('Member')->filter('City', $memberCity); 
		return $connections;
		
	}
    
}
