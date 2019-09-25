jQuery(function($){
	$('.tab-group__tab').click(function(){
		$('.is-active').removeClass('is-active');
		$(this).addClass('is-active');
		$('.is-show').removeClass('is-show');
		const index = $(this).index();
		$('.panel-group__panel').eq(index).addClass('is-show');
	});
});