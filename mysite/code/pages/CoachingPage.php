<?php
class CoachingPage extends Page {
	
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
class CoachingPage_Controller extends Page_Controller {
	
	static $allowed_actions = array(
		'view',
		'addReplyForm',
		'archive'
	);
    var $CurrentQuestion = null;
	
	function index() {
        $member = Member::currentUser();
        if (!$member) {
            return Security::permissionFailure($this, "You must be logged in to view your questions");
        }
        return array();
    }
	
	function view() { 
		
		$member = Member::currentUser();
        if (!$member) {
            return Security::permissionFailure($this, "You must be logged in to view your questions");
        }
        
        
		 
        $questionID = (int) $this->request->param('ID');
        if (!$questionID) {
            $this->redirect($this->Link());
        }

        $question = Question::get()->byID($questionID);
        if (!$question || !$question->canEdit()) {
            $this->redirect($this->Link());
        }


        
        $this->CurrentQuestion = $question;

        return array();        
    } 
    
    public function addReplyForm(){ 
    	
		$member = Member::currentUser();
		$memberID = $member->ID;
		
		$questionID = (int) $this->request->param('ID');
		$question = Question::get()->byID($questionID);
		$this->CurrentQuestion = $question;
		
        $fields = FieldList::create(
            TextareaField::create('Content', 'Make a reply'),
            HiddenField::create('OwnerID', 'Owner', $memberID),
            HiddenField::create('QuestionID', 'Question', $questionID)
        );
        
        $actions = FieldList::create(
	        FormAction::create('doSubmitReply', 'Submit')
        );
        
        $validator = new RequiredFields('Content');
		
        $form = Form::create($this, 'addReplyForm', $fields, $actions, $validator);

        return $form;
    }
	
	public function doSubmitReply($data, Form $form) {
		
		$questionID = $data['QuestionID'];	
					
		$reply = new Reply();
		$form->saveInto($reply);
		
		$reply->Content = $data['Content'];
		$reply->Date = date('Y-m-d H:i:s', strtotime('now'));
		$reply->OwnerID = $data['OwnerID'];
		$reply->QuestionID = $data['QuestionID'];
		$reply->write();
		
		$this->redirect( Director::baseURL() . "coaching/view/" . $questionID . "?success=1");
		
	}
	
	public function archive(){

        $Params = $this->getURLParams();
        
        if ($archiveQ = DataObject::get_by_id('Question', (int)$Params['ID'])) {
        	$archiveQ->delete();
        }
        
        $this->redirectBack();
    }

	
	
	
	// VIEW CONTROLLERS
	
	/* Loop current questions 
	===========================*/
	public function getQuestions(){
		
		$member = Member::currentUser();
		$memberID = $member->ID;
		
		$questions = DataObject::get('Question')->filter(array('OwnerID' => $memberID, 'Archive' => 0))->sort('Date ASC'); 
		return $questions;
	}
	
	/* Loop coach questions
	===========================*/
	public function getCoachQuestions(){
		$questions = DataObject::get('Question')->filter(array('Archive' => 0))->sort('Date ASC'); 
		return $questions;
	}
	
	/* Loop archived questions 
	===========================*/
	public function getArchivedQuestions(){
		
		$member = Member::currentUser();
		$memberID = $member->ID;
		
		$questions = DataObject::get('Question')->filter(array('OwnerID' => $memberID, 'Archive' => 1))->sort('Date ASC'); 
		return $questions;
	}
	
}
