<?php
class CoachingQuestionPage extends Page {
	
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
class CoachingQuestionPage_Controller extends Page_Controller {
    
    static $allowed_actions = array(
        'addQuestionForm',
        'doSubmitQuestion'
    );
    
    public function addQuestionForm(){ 
    	
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
	        FormAction::create('doSubmitQuestion', 'Submit Question')
        );
        
        $validator = new RequiredFields('Title', 'Content');
		
        $form = Form::create($this, 'addQuestionForm', $fields, $actions, $validator);

        return $form;
    }
	
	public function doSubmitQuestion($data, Form $form) {
					
		$question = new Question();
		$form->saveInto($question);
		
		$question->Title = $data['Title'];
		$question->Content = $data['Content'];
		$question->Date = date('Y-m-d H:i:s', strtotime('now'));
		$question->OwnerID = $data['OwnerID'];
		$question->write();
		
		$this->redirect( Director::baseURL() . "coaching/?success=1");
		
	}

    
}
