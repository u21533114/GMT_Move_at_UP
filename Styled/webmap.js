var map = L.map('map').setView([-25.7541, 28.231482], 17);

var CartoDB_VoyagerNoLabels = L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager_nolabels/{z}/{x}/{y}{r}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
    subdomains: 'abcd',
    maxZoom: 20
}).addTo(map)

var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
});
          

//add basemap with general campus infrastructure   
var campus_map =  L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'Parking,Gates,Paths,Roads', format: 'image/png',transparent: true}).addTo(map)
        
var baseMaps = {
    "CARTO": CartoDB_VoyagerNoLabels,
    "Satellite": Esri_WorldImagery
};
    
//define variables
var retail = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'Retail', format: 'image/png',transparent: true}),
toilets = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'Toilets', format: 'image/png',transparent: true}),
wc_toilets = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'WC Toilets', format: 'image/png',transparent: true});

var overlayMaps = {
    "Campus map": campus_map,
    "Retail": retail,
    "Toilets": toilets,
    "Wheelchair-accessible toilets": wc_toilets,
};
  
var layerControl = L.control.layers(baseMaps, overlayMaps).addTo(map);


//scale bar
L.control.scale({
    position: "bottomleft", 
    maxWidth: 200, 
    imperial: false, 
}).addTo(map);

//search bar: not working
/*var searchControl = new L.Control.Search({
    position: "topright",
    layer: campus_map, 
    initial: false,
    zoom: 20,
    marker: false,
});

map.addControl(searchControl);*/


//WFS
//Group layer for search function
let markersLayer = new L.LayerGroup();

// specify your root URL...
var owsrootUrl = "http://localhost:8080/geoserver/gmt320_moveatup/ows";

// Defining buildings parameters
var defaultBuildings = {
  service: "WFS",
  version: "1.0.0",
  request: "GetFeature",
  typeName: "gmt320_moveatup:Buildings",
  outputFormat: "application/json",
  format_options: "callback:getJson",
  SrsName: "EPSG:4326",
};
var parameters_buildings = L.Util.extend(defaultBuildings);
var URL_buildings = owsrootUrl + L.Util.getParamString(parameters_buildings);

// Create an empty layer for buildings
var buildingsLayer = null;
let buildingsLayerGroup = new L.LayerGroup().addTo(map);

// WFS Ajax requests
// this is the ajax request, we are using the jsonp option
$.ajax({
	url: URL_buildings,
	dataType: "json",
	jsonpCallback: "getJson",

	//In the event of success...
	success: function (response) {
		console.log(response);
        
        // works for points
		/*gatesLayer = L.geoJson(response, {
			style: function (feature) {
				return {
					stroke: false,
                    fillColor: '#eb34eb',
                    fillOpacity: 50
				};
			},
			polygonToLayer: function (feature, latlng) {

				//console.log(feature.properties);

				const popupInfo = `
					<b>Gate name: </b>${feature.properties.name} <br>
				`;

				let marker = new L.marker(latlng, {
					title: feature.properties.name,
				})
				.bindPopup(popupInfo)
				.openPopup();

				markersLayer.addLayer(marker);
				gatesLayerGroup.addLayer(marker);
				// return marker;
			},
			onEachFeature: function (feature, featureLayer) {
				featureLayer.bindPopup(feature.properties.name);
			},
		})*/
        // works for polygons
        WFSLayer = L.geoJson(response, { 
            style: function (feature) {  
                return {  
                    weight: 2, 
                    color: '#869cff', 
                    opacity: 0, 
                    fillColor: "#869cff", 
                    fillOpacity: 0, 
                };  
            }, 
            // enable pops
            onEachFeature: function (feature, featureLayer) {
				featureLayer.bindPopup(feature.properties.name);
			},
        }).addTo(map) ;
	},
	error: function(xhr){
        console.log('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);
    }
});
