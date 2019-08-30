// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require bootstrap-sprockets
//= require_tree .
 //= require underscore
//= require gmaps/google



// 複数地点のルートを検索する



//k function initMap() {
//     if (!navigator.geolocation) {
//         alert('Geolocation APIに対応していません');
//         return false;
//     }
// }
//   navigator.geolocation.getCurrentPosition(function(position){
//   	latLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
//   	map = new.google.maps.Map(document.getElementById('map'),{
//   		center: latLng,
//   		zoom: 17
//   	});

//   	marker = new google.maps.Marker({
//   		position: latLng,
//   		map: map
//   	});
//   }, function() {
//   	alert('位置情報の取得に失敗しました');
//   });
//   }







// function showPosition(position) {
 
// $.ajax({
//   type: 'GET',
//   url: `https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.coords.latitude},${position.coords.longitude}&sensor=true&key=AIzaSyAUiXfSfoQl4jasXBdCGCg-BXzzOB4jE3A&language=en`,
// }).then(function(response){
//   console.log(response);
// })
 
// }