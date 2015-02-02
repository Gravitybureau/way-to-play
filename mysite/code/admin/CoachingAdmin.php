<?php

class CoachingAdmin extends ModelAdmin {

	private static $managed_models = array(
		'Question' => array(
			'title' => 'Questions'
		)
	);
	private static $url_segment = 'coaching';
	private static $menu_title = 'Coaching';

}