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

//data
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

//data
var navigateData = [
    {
        labels: ["No", "Yes"],
        values: [27, 32],
        type: 'pie'
    }
]

//Layout
var navigateLayout = {
    title: 'Percentage of students who struggle <br> to navigate campus',
    plot_bgcolor:'white',
    paper_bgcolor:"#FFF3"
};

//Plotting
Plotly.newPlot('navigatePie', navigateData, navigateLayout);

//legend: not working
var legend = L.control({ position: "bottomleft" });

legend.onAdd = function(map) {
  var div = L.DomUtil.create("div", "leaflet-legend");
  div.innerHTML += "<h4>Legend</h4>";
  div.innerHTML += '<i style="background: #477AC2"></i><span>Buildings</span><br>';
  div.innerHTML += '<i style="background: #FFFFFF"></i><span>Parking</span><br>';

  return div;
};

legend.addTo(map);
