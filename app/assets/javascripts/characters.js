//= require jquery
//= require jquery_ujs

//= require characters

// alert("testing javascript")

function rollhit(){
	hit = (Math.floor(Math.random()*10)+1);     // generate random character attribute (1-10)
	document.getElementById('hitbox').value = hit;   //  places random value into visual space
}

// $("p").hover(function(){
//     $(this).css("color", "pink");
//     }, function(){
//     $(this).css("color", "green");
// });