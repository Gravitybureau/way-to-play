<?php
class HomePage extends Page {
	
	private static $db = array(
		'LoggedInContent' => 'HTMLText'
	);

	private static $has_one = array(
	);
    
    private static $has_many = array(
    );
	
	public function getCMSFields() {
        $fields = parent::getCMSFields();
        
   	    $fields->addFieldToTab('Root.Main', new HTMLEditorField('LoggedInContent'));

        return $fields;
    }

}
class HomePage_Controller extends Page_Controller {
	
	public function getNews($num=4){
		$news = DataObject::get('BlogEntry')->sort('Date DESC')->limit($num); 
		return $news;
	}
	
}
