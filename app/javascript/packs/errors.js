$(document).on('ajax:error', function(e){
  var errors = e.detail[0]
  $('.flash').html(errors);
})