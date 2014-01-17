// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//= require kebapress/medium-editor
//= require kebapress/medium-editor-insert-plugin.all.min

$(document).ready(function() {
  $('.editable').html($('#post_body').attr("value"));
});

var editor = new MediumEditor('.editable', {
    excludedActions: ['u', 'h3', 'blockquote'],
});

// $(function(){
//   $('.editable').mediumInsert({
//     editor: editor,
//     images: true,
//     imagesUploadScript: 'imageUpload'
//   });
// });

$('.editable').bind('DOMSubtreeModified', function() {
    $("#post_" + $(this).attr("data-field-id")).val($(this).html());
});