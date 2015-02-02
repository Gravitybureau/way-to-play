<?php
class CoachingVideoPage extends Page {
	
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
class CoachingVideoPage_Controller extends Page_Controller {
    
    static $allowed_actions = array(
        'addVideoForm',
        'doSubmitQuestion'
    );
    
    public function addVideoForm(){ 
    	
		$member = Member::currentUser();
		$memberID = $member->ID;
		
        $fields = FieldList::create(
            TextField::create('Title', 'Title'), 
            TextareaField::create('Content', 'Main Content'),
            $categories = MultiSelect2Field::create('Categories', 'Category', 
				array(
					'Category1' => 'Category1',	
					'Category2' => 'Category2',	
					'Category3' => 'Category3'
				), 
				'', 
				null,
				true),
            HiddenField::create('OwnerID', 'Owner', $memberID)
        );
        $categories->setDescription('Select one or more categories for your question.');
        
        $actions = FieldList::create(
	        FormAction::create('doSubmitVideo', 'Submit Video')
        );
        
        $validator = new RequiredFields('Title', 'Content');
		
        $form = Form::create($this, 'addVideoForm', $fields, $actions, $validator);

        return $form;
    }
	
	public function doSubmitVideo($data, Form $form) {
					
		$videoQuestion = new VideoQuestion();
		$form->saveInto($videoQuestion);
		
		$videoQuestion->Title = $data['Title'];
		$videoQuestion->Content = $data['Content'];
		$videoQuestion->Date = date('Y-m-d H:i:s', strtotime('now'));
		$videoQuestion->OwnerID = $data['OwnerID'];
		$videoQuestion->write();
		
		$this->redirect( Director::baseURL() . "coaching/?success=1");
		
	}

    
}
