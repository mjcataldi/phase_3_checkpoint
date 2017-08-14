$(function(){

  $("form.edit_concert").on("submit", function(){
    event.preventDefault();
    var $this = this;

    var request = $.ajax({
      url: $this.attr("action"),
      method: $this.attr("method")
    });

    request.done(function(response){
      $("small.attendees").text(response);

      console.log(response);
    });

    request.fail(function(response){
      console.log(response);
    });


  });


});
