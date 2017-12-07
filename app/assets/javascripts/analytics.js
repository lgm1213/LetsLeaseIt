//= require chartjs/chartbundle.js

var myChart_canvas_bar = '';
var myChart_canvas_line ='';
var line_chart={};
var line_chart_leases={};
var max_appointments = {};
var bar_chart={};

initial_graph();

$("#buildings").change(function(){
  building = $(this).val();
  myChart_canvas_bar.destroy();
  myChart_canvas_line.destroy();
  if(building!=""){
    $.ajax({ 
      type: 'POST', 
      url: "/analytics/show_graph", 
     data: { id: building }, 
      success: function (data) {
        //bar chart
        bar_chart = data["bar_chart"]; 
        var ctx = document.getElementById("bar_chart").getContext('2d');
        myChart_canvas_bar = new Chart(ctx, {
          type: 'bar',
          data: {
          labels: Object.keys(bar_chart),
          datasets: [{
            label: '# of Appointments',
            data: Object.values(bar_chart),
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255,99,132,1)',
            borderWidth: 2
            }]
          },
          options: 
            {
              scales: {
                  yAxes: [{
                      ticks: {
                          beginAtZero:true
                      }
                  }]
              },
              title: 
              {
                display: true,
                fontSize: 16,
                text: 'Bar Chart'

              }
          }
        });
        //line chart
        line_chart = data["line_chart_appointments"]; 
        line_chart_leases = data["line_chart_leases"]; 
        max_appointments = data["max_appointments"]
        var ctx_line = document.getElementById("line_chart");
        myChart_canvas_line = new Chart(ctx_line, {
          type: 'line',
          percentageInnerCutout : 70,
          data: {
          labels: Object.keys(line_chart),
          datasets: [{
            label: '# of Appointments',
              data: Object.values(line_chart),
              backgroundColor: 'rgba(255, 99, 132, 0.2)',
              borderColor: 'rgba(255,99,132,1)',
              borderWidth: 2
            },
            {
              label: '# of Leases',
              data: Object.values(line_chart_leases),
              backgroundColor: 'rgba(54, 162, 235, 0.2)',
              borderColor: 'rgba(54, 162, 235, 1)',
              borderWidth: 2
            }]
          },
          options: {
            tooltips: {
              enabled: true,
              mode: 'single',
              callbacks: {
                label: function(tooltipItems, data) { 
                  tooltip_data = "Max Appointments on: "
                  max = max_appointments[tooltipItems.xLabel]==null ? "-" : max_appointments[tooltipItems.xLabel]
                  return tooltip_data+max;
                }
              }
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            },
            title: 
            {
              display: true,
              fontSize: 16,
              text: 'Line Chart'

            }
          }      
        });
      }  
    });
  }
  else{
    initial_graph();
  }
});

function initial_graph(){
  var ctx = document.getElementById("bar_chart");
  myChart_canvas_bar = new Chart(ctx, {
    type: 'bar',
    data: {},
    options: 
    {
      title:
      {
        display: true,
        fontSize: 16,
        text: 'Bar Chart'
      }
    }
  });
  var ctx_line = document.getElementById("line_chart");
  myChart_canvas_line = new Chart(ctx_line, {
    type: 'line',
    data: {},
    options:
    {
      title: 
      {
        display: true,
        fontSize: 16,
        text: 'Line Chart'

      }
    }
  });
}