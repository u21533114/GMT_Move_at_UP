//Charts

var lateData = [
    {
        labels: ["Sometimes", "Never", "Often"],
        values: [36, 18, 5],
        type: 'pie',
        marker: {
            colors: ['#869cff', '#d9e0ff', '#2b51fc'], // Define custom colors here
          },
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
        type: 'pie',
        marker: {
            colors: ['#869cff', '#d9e0ff', '#2b51fc'], // Define custom colors here
          },
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
        type: 'pie',
        marker: {
            colors: ['#d9e0ff', '#2b51fc'], // Define custom colors here
          },
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

//Bar chart

// var tenMinuteData = [
//     {
//       x: ['Yes', 'No'],
//       y: [25, 34],
//       type: 'bar'
//     }
//   ];
  
//   Plotly.newPlot('tenMinute', tenMinuteData);


//Peak vs Off-peak times
var peak = {
    x: ['IT building', 'Centenary', 'Thuto','Piazza Entrance','Chancellors Building'],
    y: [242, 216, 202,182,161],
    name: 'Peak times',
    type: 'bar',
    marker: {
        color: '#2b51fc', // Set the color for 'Peak times' bars
    },
  };
  
  var offpeak = {
    x: ['IT building', 'Centenary', 'Thuto','Piazza Entrance','Chancellors Building'],
    y: [80, 11, 10,76,57],
    name: 'Off-peak times',
    type: 'bar',
    marker: {
        color: '#d9e0ff', // Set the color for 'Peak times' bars
    },
  };
  
  var POPdata = [peak, offpeak];
  
  var POPlayout = {
    barmode: 'group',
    title: 'Peak vs Off-Peak Times at UP Campus Locations',
    };
  
  Plotly.newPlot('POP', POPdata, POPlayout);
  

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