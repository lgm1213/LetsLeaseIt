
$(".analytics").click(function(){
  filter = $(this).val();
  analytics("","");
});

function analytics(start, end){
  company_id = location.href.split("/").pop();
  $.ajax({ 
    type: 'POST', 
    url: "/companies/building_analytics",
    data: {filter: filter, company_id: company_id, start: start, end: end}, 
    success: function (data) { 
      buildings = data;
      $('#tbody_building_analytics').empty();
      $.each(buildings["buildings"], function(c,b){
       	la_ratio = (data["la_ratio"][c] == null? "0.0" : data["la_ratio"][c] == 0 ? "0.0" : data["la_ratio"][c]);
        $('#tbody_building_analytics').append('<tr><td>'+b.id+'</td><td>'+b.company_id+'</td><td>'+data["rented_units"][c]+'</td><td>'+data["appointments"][c]+'</td><td>'+la_ratio+'</td></tr>');
      });	
    }
  });
}

$(".datepicker").datepicker().on("changeDate", function(e) {
  filter = "datepicker";
  startdate = $("#startdate").val();
  enddate = $("#enddate").val();
  if(enddate!="" && startdate!=""){
    analytics(startdate,enddate);
  }
});