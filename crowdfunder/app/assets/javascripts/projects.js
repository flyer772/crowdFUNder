// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function(){
  $(".pledge").hide();
  $(".reward").on("mouseenter", function(){
    $(".info", this).hide();
    $(".pledge", this).show();
  });


$(".reward").on("mouseleave", function(){
    $(".info", this).show();
    $(".pledge", this).hide();
  });

$('.reward').on('click', function(e){
  e.preventDefault();

  var form = $(this).parent();
  var url = form.attr('action');

  $.post(url, form.serialize());

});
});



