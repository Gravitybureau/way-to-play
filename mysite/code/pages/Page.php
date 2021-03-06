<?php
class Page extends SiteTree {

	private static $db = array(
		'PrimaryNav' => 'Boolean',
		'TabbedNav' => 'Boolean',
		'PageDescription' => 'Text',
		'Color' => 'Text'
	);

	private static $has_one = array(
		'Icon' => 'Image'
	);
    
    private static $has_many = array(
    );
	
	public function getCMSFields() {
	
        $fields = parent::getCMSFields();
        
   	    $fields->addFieldToTab('Root.Main', $pageDesc = new TextareaField('PageDescription','Page Description'), 'Content');
	    $pageDesc->setDescription('A one sentence description of the page to be shown with links.');
	    
        if($this->ParentID == 0) {
        
	   	    $fields->addFieldToTab('Root.Main', new UploadField('Icon','Page Icon'), 'Content');
			$fields->addFieldToTab('Root.Main', new DropdownField('Color','Colour', array(
				'' => '',
				'greenAccent' => 'Green',
				'purpleAccent' => 'Purple',
				'blueAccent' => 'Blue',
				)
			), 'Content');
			
        }
	    		
        return $fields;
    }
    
    function getSettingsFields() {
	    $fields = parent::getSettingsFields();
	    
	    $fields->addFieldToTab('Root.Settings',
	        FieldGroup::create(
	            new CheckboxField('PrimaryNav')
	        )->setTitle('Show this in top navigation?')
	    );
	    
	    $fields->addFieldToTab('Root.Settings',
	        FieldGroup::create(
	            new CheckboxField('TabbedNav')
	        )->setTitle('Add this page to main tabbed navigation bar?')
	    );
    
	    return $fields;
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
	
	function getMainPages() {
		$pages = DataObject::get('Page')->filter('TabbedNav', 1);
		return $pages;
	}

}