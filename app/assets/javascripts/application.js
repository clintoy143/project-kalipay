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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//FadeIn effect for capture screen
$(document).ready(function(){
	$(".kalipay-wallpaper").delay(500).fadeIn(1000);
});

//nav-bar effects

$(document).ready(function(){
	$(window).scroll(function(){

		var h = $(window).scrollTop();
		var c = 10/h;

		if(h > 10){
			$("#nav").addClass('nav-anim'); 
			$(".kalipay-wallpaper").css({"padding-top": h, "opacity": c});
		} else {
			$(".kalipay-wallpaper").css({"opacity": "1"});
		}

		if (h > 300){
			$(".kalipay-wallpaper").css({"opacity": "0"});

		}


	});
});

//full screen div height

$(document).ready(function(){
	var winHeight = $(window).height();
	$("#admin-nav").css("height", winHeight);
});