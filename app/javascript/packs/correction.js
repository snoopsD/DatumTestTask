$(document).on('turbolinks:load', function(){
  $('.answer_correction_link').click(function (e) {
    e.preventDefault(); 
    var correctionId = $(this).data('correctionId')
    $('form#approve-correction-' + correctionId).removeClass('hidden');
    $(this).hide();   
  });

  $('.highlight-correction').hover(function(){
    correctionId = $(this).parent('div').data('id')
    answerId = $(this).parents('div').eq(2).data('id')
    answerDiv = $('#answer-'+ answerId)
    answerText = answerDiv.html().split("<strong>")[0]
    correctionText = $('#correction-' + correctionId).html().split("<strong>")[0].replace(/[^\w]/, "")
      
    $('#answer-'+ answerId).find('.answer').addClass('highlight')   
  },
  function(){
    $('#answer-'+ answerId).find('.answer').removeClass('highlight')
  })    
})
