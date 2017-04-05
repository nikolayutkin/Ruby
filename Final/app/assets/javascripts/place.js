ymaps.ready(get)
var m,p;
var key = false;

 
  function get()
  {
    $.getJSON('data', function(data) {init(data)} )
  }
  
  function clear()
  {
    var whatRemove = document.getElementById("map").childNodes[0];
    document.getElementById("map").removeChild(whatRemove);
  }
  
  
  function init(point)
  {
    if (document.getElementById("map").childNodes.length == 0) {m = new ymaps.Map("map", {center: [point.x, point.y], zoom: 13} );}
    p = new ymaps.Placemark([point.x, point.y], {hintContent: point.name}, {draggable: true});
    m.geoObjects.add(p);
  }
    
  function act()
  {
    var coords = p.geometry.getCoordinates()
    clear();
    $.post('save', {x: coords[0], y: coords[1]}, function(data) {init(data)} )
  }
  
  function every_point()
  {
    clear();
    $.getJSON('all', function(data) {for (var i = 0; i<data.arr.length;i++) {init(data.arr[i][0]);m.setZoom(9)} } )
  }

 