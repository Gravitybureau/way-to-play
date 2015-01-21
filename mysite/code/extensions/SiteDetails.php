<?php

class SiteDetails extends DataExtension {     

	 public static $has_one = array(
		'LogoImage' => 'Image',
		'LogoImageReverse' => 'Image',
	);

	 public static $db = array(			
		'FacebookURL' => "Varchar(250)",
		'PhoneNumber' => "Varchar(250)",
		'FaxNumber' => "Varchar(250)",
		'Email' => "Varchar(250)",
		'Address' => "Varchar(250)",
		'PostalAddress' => "Varchar(250)",
		'SiteDescription' => 'Text',
	  );

    public function updateCMSFields(FieldList $fields) {	 
	   $fields->addFieldToTab("Root.Main", new TextareaField("SiteDescription", "Write a description of your website to be shown in the footer and in Google search results"));	
	   
	   $fields->addFieldToTab("Root.Design", new UploadField("LogoImage", "Choose an image for your site logo"));
	   $fields->addFieldToTab("Root.Design", new UploadField("LogoImageReverse", "Upload your logo reversed for use on black"));
	   
	   $fields->addFieldToTab("Root.Contact", new TextField("PhoneNumber", "Phone Number"));		
	   $fields->addFieldToTab("Root.Contact", new TextField("FaxNumber", "Fax Number"));	
	   $fields->addFieldToTab("Root.Contact", new TextField("Email", "Email Address"));	
	   $fields->addFieldToTab("Root.Contact", new TextField("Address", "Contact Address"));
	   $fields->addFieldToTab("Root.Contact", new TextField("PostalAddress", "Postal Address"));		
	   $fields->addFieldToTab("Root.Contact", new TextField("FacebookURL", "Enter the full URL of your Facebook page"));	 
    }
}