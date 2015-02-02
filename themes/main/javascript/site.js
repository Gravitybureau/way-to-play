
var $document = $(document),
    className = 'hasScrolled';

/* ==============================================================
 *		Header 
 ================================================================ */

$('#loginBtn').click(function(){
	$('#loginBtn').hide();
	$('#headerLoginForm').removeClass('hide');
});

$('.header .dropdownLink').click(function(){
	if($(this).hasClass('drop')){
		$(this).removeClass('drop');
		$('.header .dropdown ul').slideUp(200); 
	}else{
		$(this).addClass('drop');
		$('.header .dropdown ul').slideDown(200);
	}
	return false;
});

$document.scroll(function(){
	$('.header .dropdownLink').removeClass('drop');
	$('.header .dropdown ul').slideUp(200); 
});

$('body').click(function(e) {
    if ($(e.target).closest('.header .dropdown ul').length === 0) {
		$('.header .dropdownLink').removeClass('drop');
		$('.header .dropdown ul').slideUp(200); 
    }
});


/* ==============================================================
 *		Way to Play qualification check
 ================================================================ */
 
$('#wtpNo').click(function(){
	$('#mainPages').addClass('minimise');
});



