//= require active_admin/base
function upload_limit()
{
  if($(".file.input.optional").length==3){
    $(".has_many_add").show();
  }
}

$(function() {
  if($(".file.input.optional").length>=4){
    $(".has_many_add").hide();
  }
  $(".has_many_add").click(function(){
    setTimeout(function(){
      $(".has_many_remove").attr("onclick", "upload_limit()");
    }, 1000);
  	if($(".file.input.optional").length==3){
  	  setTimeout(function(){ $(".has_many_remove").last().trigger("click"); }, 5);
	    $(".has_many_add").hide();
	  }
  	else if($(".file.input.optional").length>=2){
	    $(".has_many_add").hide();
	  }
	  else{
	    $(".has_many_add").show();
	  }
  });
});
