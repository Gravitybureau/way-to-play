<?php

class MemberExtension extends DataExtension {

	private static $db = array(
		'Suburb' => 'Varchar',
		'PhoneNumber' => 'Varchar',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'ProfilePicture' => 'Image',
	);
	
	public function updateMemberFormFields(FieldList $fields) {
	
		$fields->push(new TextField('Suburb'));
		$fields->push(new TextField('PhoneNumber'));
		
		$fields->push(new UploadField('ProfilePicture'));
		
		$fields->push(new HiddenField('Sort'));
	}

}