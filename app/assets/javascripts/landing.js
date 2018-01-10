//= require wow/wow.min.js
//= require footable/footable.all.min.js
//= require slick/slick.min.js

$('.product-images').slick({dots: true});

$(function() {
  $("#location").prepend('<option value="City" selected>City</option>');
});

