//Charts

var lateData = [
    {
        labels: ["Sometimes", "Never", "Often"],
        values: [36, 18, 5],
        type: 'pie'
    }
]

//Layout
var lateLayout = {
    title: 'Percentage of students late to class',
    plot_bgcolor:'white',
    paper_bgcolor:"#FFF3"
};

//Plotting
Plotly.newPlot('latePie', lateData, lateLayout);

var mapUsageData = [
    {
        labels: ["Sometimes", "Never", "Often"],
        values: [17, 29, 3],
        type: 'pie'
    }
]

//Layout
var mapUsageLayout = {
    title: 'Percentage of students that use <br> the UP Hatfield Campus map',
    plot_bgcolor:'white',
    paper_bgcolor:"#FFF3"
};

//Plotting
Plotly.newPlot('mapUsagePie', mapUsageData, mapUsageLayout);

//Adding a basemap
L.tileLayer('https://{s}.basemaps.cartocdn.com/light_nolabels/{z}/{x}/{y}{r}.png', {
      attribution: '&copy; <a href="https://carto.com/attributions">CARTO</a>',
      subdomains: 'abcd',
      maxZoom: 19
        }).addTo(map)

        var map = L.map('map').setView([-25.754544, 28.231482], 16);
        L.tileLayer('https://{s}.basemaps.cartocdn.com/light_nolabels/{z}/{x}/{y}{r}.png', {
       attribution: '&copy; <a href="https://carto.com/attributions">CARTO</a>',
       subdomains: 'abcd',
       maxZoom: 19
     }).addTo(map)
 
   //add basemap with general campus infrastructure   
         L.tileLayer.wms('http://localhost:8080/geoserver/GMT320/wms?',{layers: 'Entrances,Hatfield Campus,Parking,Paths,Retail,Roads,Toilets,Wheelchair Toilets', format: 'image/png', transparent: true}).addTo(map)
