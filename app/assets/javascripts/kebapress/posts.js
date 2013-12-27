// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//= require jquery
//= require jquery_ujs
//= require './medium-editor.js'
//= require './medium-editor-insert-plugin.all.min.js'

$(document).ready(function() {
  $('.body.editable').html($('#post_body').attr("value"));
});

var editor = new MediumEditor('.editable', {
    excludedActions: ['u', 'h3', 'blockquote'],
});

$(function () {
    $('.editable').mediumInsert({
        editor: editor,
        images: true,
        maps: true
    });
});


$('.editable').bind('input propertychange', function() {
  $("#post_" + $(this).attr("data-field-id")).val($(this).html());
});
