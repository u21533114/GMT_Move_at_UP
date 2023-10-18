 var map = L.map('map').setView([-25.754544, 28.231482], 16);
       L.tileLayer('https://{s}.basemaps.cartocdn.com/light_nolabels/{z}/{x}/{y}{r}.png', {
      attribution: '&copy; <a href="https://carto.com/attributions">CARTO</a>',
      subdomains: 'abcd',
      maxZoom: 19
    }).addTo(map)


        //add basemap with general campus infrastructure   
        L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?',{layers: 'Entrances,Hatfield Campus,Parking,Paths,Retail,Roads,Toilets,Wheelchair Toilets', format: 'image/png', transparent: true}).addTo(map)