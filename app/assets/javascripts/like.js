$(function(){
  $(".likeBtn").on("click", function(e){
    e.preventDefault();
    $(this).toggleClass("active");
    tweetId = $(this).data(`tweet_id`);
    $.ajax({
      url: $(this).attr("action"),
      type: 'POST',
      data: {tweet_id: tweetId},
      dataType: 'json'
    })
    .done(function(json){
      $(`.tweet${json.tweet}`).text(`${json.like}`);
    })
    .fail(function(){
      alert(`error`);
    })
  })
});