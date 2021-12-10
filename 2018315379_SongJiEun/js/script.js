$(document).ready(function(){
  $('#btnChangeC').click(function(){
    $('.loginManager').show();
    $('.loginCustomer').hide();
    $('.signup').hide();
  });

  $('#btnChangeM').click(function(){
    $('.loginManager').hide();
    $('.loginCustomer').show();
    $('.signup').hide();
  });

  $('.btnCreate').click(function(){
    $('.loginManager').hide();
    $('.loginCustomer').hide();
    $('.signup').show();
  });

  $('#btnGot').click(function(){
    $('.loginManager').hide();
    $('.loginCustomer').show();
    $('.signup').hide();
  });

  $('#btnBack').click(function(){
    $('.containerLog').hide();
    location.replace("buyers.html");
  });

  $('#logIn').click(function(){
    $('.containerLog').show();
  });

});

function showPreview(event){
  if(event.target.files.length > 0){
    var src = URL.createObjectURL(event.target.files[0]);
    var preview = document.getElementById("imagePreview");
    preview.src = src;
    preview.style.display = "block";
      var cc = document.getElementById("labelImage");
      cc.style.display="none";
  }
}
