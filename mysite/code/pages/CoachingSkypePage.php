<?php
class CoachingSkypePage extends Page {
	
	private static $db = array(
	);

	private static $has_one = array(
	);
    
    private static $has_many = array(
    );
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        return $fields;
    }

}
class CoachingSkypePage_Controller extends Page_Controller {
    
    static $allowed_actions = array(
        'skypeForm'
    );
    
    public function skypeForm(){ 
    	
		$member = Member::currentUser();
		$memberID = $member->ID;
		
		$allMembers = DataObject::get("Member");
		$coaches = array();
		foreach($allMembers as $singleMember) {
            if($singleMember->inGroup("coach")){
                $coaches[$singleMember->ID] = htmlentities($singleMember->Name);
            }
		}
		
        $fields = FieldList::create(
            $coaches = OptionsetField::create('Coach', 'Select a coach to Skype with', $coaches), 
            TextField::create('Title', 'Message title'), 
            TextareaField::create('Message', 'Message'),
            $date = TextField::create('Date', 'Preferred Date'),
            HiddenField::create('OwnerID', 'Owner', $memberID),
            HiddenField::create('Email', 'Email', $member->Email),
            HiddenField::create('Name', 'Name', $member->Name)
        );
        $date->setDescription("Please enter in the following format: 'January 27, 2015, 3:30pm'");
        $coaches->addExtraClass('buttons');
        
        $actions = FieldList::create(
	        FormAction::create('doSubmit', 'Submit')
        );
        
        $validator = new RequiredFields('Coach', 'Title', 'Message');
		
        $form = Form::create($this, 'skypeForm', $fields, $actions, $validator);

        return $form;
    }
    
    function doSubmit($data, $form) {
   
	    $coachID = $data['Coach'];
	    $coach = DataObject::get_by_id('Member', $coachID);
	    $coachEmail = $coach->Email;
	    	    
        //Set data
        $From = $data['Email'];
        $To = $coachEmail;
        $Subject = "WTP Skype Appointment: " . $data['Title'];
        
        $email = new Email($From, $To, $Subject);
        $email->setTemplate('SkypeEmail');
        $email->populateTemplate($data);
        $email->send();

        $this->redirect($this->Link("?success=1"));
    }
    
    public function Success(){
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }

}
