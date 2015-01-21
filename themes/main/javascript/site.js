$('.menu-btn').click(function() {
	$('.main-nav').toggleClass('open');
});

	

/***********************

	Testimonials
	
***********************/


var $document = $(document),
    className = 'hasScrolled';

$document.ready(function() {
	var $testimonialholder = $('.testimonial-holder');
	var $testimonial = $testimonialholder.find('.testimonial');
	
	if ($testimonial.length > 1) {
		
		$('#testimonial-next').on('click', function() {
			$currentTestimonial = $testimonialholder.find('.current');
			var $nextTestimonial = $currentTestimonial.next();
			if ($nextTestimonial.length == 0) {
				$nextTestimonial = $testimonialholder.find('.testimonial').first();
			}	
			$nextTestimonial.addClass('current');
			$currentTestimonial.removeClass('current');
			
			return false;
		})
		
	}
});

