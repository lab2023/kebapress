// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//= require jquery
//= require jquery_ujs

var editor = new MediumEditor('.editable');

$('.editable').bind('input propertychange', function() {
  $("#post_" + $(this).attr("data-field-id")).val($(this).html());
});
