$( document ).on('turbolinks:load', function() {
	 // $('.carousel').carousel();
	 $('.carousel.carousel-slider').carousel({fullWidth: true});
	 $('.slider').slider();
	 $(".dropdown-button").dropdown();
})