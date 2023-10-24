var map = L.map('map').setView([-25.754544, 28.231482], 16);       
       
var CartoDB_VoyagerNoLabels = L.tileLayer('https://{s}.basemaps.cartocdn.com/rastertiles/voyager_nolabels/{z}/{x}/{y}{r}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
    subdomains: 'abcd',
    maxZoom: 20
}).addTo(map)

var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
});
          
        //define variables
        var retail = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'Retail', format: 'image/png',transparent: true}),
            toilets = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'Toilets', format: 'image/png',transparent: true}),
            wc_toilets = L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' , { layers: 'WC Toilets', format: 'image/png',transparent: true});
          
        var baseMaps = {
        "CARTO": CartoDB_VoyagerNoLabels,
        "Satellite": Esri_WorldImagery
        };

        
        //add general campus infrastructure   
        var campus_map =  L.tileLayer.wms('http://localhost:8080/geoserver/gmt320_moveatup/wms?' ,
        { layers: 'Parking,Gates,Buildings,Paths,Roads', format: 'image/png',transparent: true}).addTo(map)
        
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

                

        //WFS
        //specify your root URL
        var owsrootUrl = "http://localhost:8080/geoserver/gmt320_moveatup/ows";


        /*

        //define paramenters for buildings
        var defaultBuildings = {
		    service : 'WFS',
        version : '2.0.0',
        request : 'GetFeature',
        typeName : 'gmt320_moveatup:Buildings',
        outputFormat : 'text/javascript',
        format_options : 'callback:getJsonBuilding',
        SrsName : 'EPSG:4326'
    };
        var parameters_buildings = L.Util.extend(defaultBuildings);
        var URL_buildings = owsrootUrl + L.Util.getParamString(parameters_buildings);



        var buildingsLayer = null;
        let buildingsLayerGroup = new L.LayerGroup().addTo(map);
      
        var ajax_buildings = $.ajax({
        url: URL_buildings,
        dataType: "jsonp",
        jsonpCallback: "getJsonBuilding",
    

        success: function (response) {
            console.log(response)
            buildingsLayer = L.geoJson(response, {
             pointToLayer: function (feature, latlng) {
                
                
                const popupInfo = `
                <b>Name: </b>${feature.properties.name} <br>`;

                let marker = new L.marker(latlng, {
                title: feature.properties.name,
              })
                .openPopup(popupInfo);

                //buikmarkersLayer.addLayer(marker);
              buildingsLayerGroup.addLayer(marker);

                },
                onEachFeature: function (feature, featureLayer) {
              featureLayer.bindTooltip(feature.properties.name);
                },
                
            }
            
            
            
            )}




        })
    
    */
    
    
    
    

        /*const popupInfo = `<b>Name: </b>${feature.properties.name} <br>`;

        let marker = new L.marker(latlng, {
                title: feature.properties.name,
              })
                .bindPopup(popupInfo)
                .openPopup();

              markersLayer.addLayer(marker);
              buildingsLayerGroup.addLayer(marker);
              // return marker;
            },
            onEachFeature: function (feature, featureLayer) {
              featureLayer.bindTooltip(feature.properties.name);
            },
          });*/