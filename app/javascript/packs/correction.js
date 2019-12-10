$(document).on('turbolinks:load', function(){
  $('.answer_correction_link').click(function (e) {
    e.preventDefault(); 
    var correctionId = $(this).data('correctionId')
    $('form#approve-correction-' + correctionId).removeClass('hidden');
    $(this).hide();   
  });
})



