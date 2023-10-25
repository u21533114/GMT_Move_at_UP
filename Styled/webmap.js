var map = L.map('map').setView([-25.754544, 28.231482], 16);

var CartoDB_VoyagerNoLabels = L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager_nolabels/{z}/{x}/{y}{r}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
    subdomains: 'abcd',
    maxZoom: 20
}).addTo(map)

var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
});
          

        //add basemap with general campus infrastructure   
        var campus_map =  L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?' , { layers: 'Parking,Entrances,Hatfield Campus,Paths,Roads', format: 'image/png',transparent: true}).addTo(map)
        
        var baseMaps = {
            "CARTO": CartoDB_VoyagerNoLabels,
            "Satellite": Esri_WorldImagery
            };
    
        //define variables
        var retail = L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?' , { layers: 'Retail', format: 'image/png',transparent: true}),
            toilets = L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?' , { layers: 'Toilets', format: 'image/png',transparent: true}),
            wc_toilets = L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?' , { layers: 'Wheelchair Toilets', format: 'image/png',transparent: true});

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
        var searchControl = new L.Control.Search({
        position: "topright",
        layer: basemap, 
        initial: false,
        zoom: 20,
        marker: false,
        });

        map.addControl(searchControl);
