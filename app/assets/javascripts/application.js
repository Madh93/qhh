// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap 
//= require common

//= require underscore
//= require gmaps/google

// SCROLL UP
$(window).scroll(function () {
  if ($(this).scrollTop() > 100) {
    $('.scrollup').fadeIn();
  } else {
    $('.scrollup').fadeOut();
  }
});

$('.scrollup').click(function () {
  $("html, body").animate({
    scrollTop: 0
  }, 600);
  return false;
});

//BREADCRUMBS
$(window).resize(function() {

  ellipses1 = $("#bc1 :nth-child(2)")
  if ($("#bc1 a:hidden").length >0) {ellipses1.show()} else {ellipses1.hide()}
  
  ellipses2 = $("#bc2 :nth-child(2)")
  if ($("#bc2 a:hidden").length >0) {ellipses2.show()} else {ellipses2.hide()}
    
})

// Google Maps
function show_map(sitio) {
  if ((sitio.latitude == null) || (sitio.longitude == null) ) {    // validation check if coordinates are there
    alert("error");
    return 0;

  }

  handler = Gmaps.build('Google');    // map init
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers([    // put marker method
      {
        "lat": sitio.latitude,    // coordinates from parameter sitio
        "lng": sitio.longitude,
        "infowindow": "<b>" + sitio.name + "</b>, " + sitio.address + ", " + sitio.postal + " San Cristóbal de La Laguna"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(16);    // set the default zoom of the map
  });
}


// Geolocalizacion

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Error";
  }
}

function showPosition(pos) {
  //x.innerHTML = "Latitude: " + position.coords.latitude + 
  //"<br>Longitude: " + position.coords.longitude;  
  //var distancia = getDistance(pos.coords.latitude,pos.coords.longitude,28.463803,-16.305529);
  //alert("lat: " + pos.coords.latitude + " long: " + pos.coords.longitude)
  var distancia = calcDistance(28.4589002,-16.2507433,28.463803,-16.305529)/1000;
  alert(distancia.toFixed(1));
}


// Calcular distancias

function calcDistance (fromLat, fromLng, toLat, toLng) {
  return google.maps.geometry.spherical.computeDistanceBetween(
    new google.maps.LatLng(fromLat, fromLng), new google.maps.LatLng(toLat, toLng));
} 