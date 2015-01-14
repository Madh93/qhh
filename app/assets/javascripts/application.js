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
var sitio = "";

function getLocation(site) {

  sitio = site

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } 
}

function showPosition(pos) {
    
  var distance;

  for (i=0; i<=2; i++){
    distance = calcDistance(pos.coords.latitude,pos.coords.longitude,
                sitio[i].latitude,sitio[i].longitude)/1000;
    $('.distancia').eq(i).text("A "+distance.toFixed(1)+" kms");
  }

  //$('.distancia').css('display','block');
  $('.distancia').css('visibility','visible');
}


// Calcular distancias

function calcDistance (fromLat, fromLng, toLat, toLng) {
  return google.maps.geometry.spherical.computeDistanceBetween(
    new google.maps.LatLng(fromLat, fromLng), new google.maps.LatLng(toLat, toLng));
} 