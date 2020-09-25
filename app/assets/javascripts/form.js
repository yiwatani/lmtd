$(function(){
  $(".tweetImage").on("change", function () {
    var file = $(this).prop('files')[0];
    $('.formText').text(file.name);
  })
});