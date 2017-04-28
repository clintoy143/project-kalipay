// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
function preload(){
	$(window).load(function(){
			$("#homepage-wrapper").delay(500).fadeIn();
	});
};

preload();	


//FadeIn effect for capture screen
$(document).on('turbolinks:load', function(){
	$(window).resize(function(){
		if ($(window).width() > 1400) {
			$("#homepage-wrapper").addClass("container");
			$("nav").removeClass("container-fluid");	
			$("nav").addClass("container");	
		} else {
			$("#homepage-wrapper").removeClass("container");
			$("nav").addClass("container-fluid");	
			$("nav").removeClass("container");			
		}

		if ($(window).width() < 800 ) {
			$("#admin-responsive-nav>div:nth-child(2)").removeClass("text-right");
			$(".form-control").removeClass("form-control")
		}

		if ($(window).width() < 500 || $(window).width() < 720 ) {
			$(".admin-left-padding").removeClass("admin-left-padding");
		}		
	});	

		if ($(window).width() > 1400) {
			$("#homepage-wrapper").addClass("container");
			$("nav").removeClass("container-fluid");	
			$("nav").addClass("container");	
		} else {
			$("#homepage-wrapper").removeClass("container");
		}

		if ($(window).width() < 800 ) {
			$("#admin-responsive-nav>div:nth-child(2)").removeClass("text-right");
			$(".form-control").removeClass("form-control")
		}

		if ($(window).width() < 500 || $(window).width() < 720 ) {
			$(".admin-left-padding").removeClass("admin-left-padding");
		}	
		
	if ($(window).width() < 1280 ) {
		$("#collage, #campaigns").remove();
		$("#mobile-pics").fadeIn();
		$("#admin-nav").remove();
		$("#admin-responsive-nav").show();
		$("#editor").css("margin-top", $("#admin-responsive-nav").height());
	}

	$(".kalipay-wallpaper").delay(500).fadeIn(1000);


	$(".thumbnail, .caption").hover(function(){
		$(this).addClass("hoverThumb");
	},
	function(){
		$(this).removeClass("hoverThumb");
	});	

});

//nav-bar effects

$(document).on('turbolinks:load', function(){
	$(window).scroll(function(){

		var h = $(window).scrollTop();
		var c = 10/h;
		var x = $("#collage").offset();
		var a = $("#about-text").offset().top;

		if(h > 10){
			$("#nav").addClass('nav-anim'); 
			$(".kalipay-wallpaper").css({"padding-top": h, "opacity": c});
		} else {
			$(".kalipay-wallpaper").css({"opacity": "1"});
		}

		if (h > 300){
			$(".kalipay-wallpaper").css({"opacity": "0"});
		}
		if (h > (a - 500)) {
			var count = 1;
			if (count <= 1) {
				$("#about-p").addClass("slide");
				count ++;
			}
		}
	});
});

//full screen div height

$(document).on('turbolinks:load', function(){
	var winHeight = $(window).height();
	$("#admin-nav").css("height", winHeight);
});

//ajax the div admin

