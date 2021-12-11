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

  $('#logIn').click(function(){
    $('.containerLog').show();
  });

$('#home').click(function(){  //when we click home
    location.replace("mainPage.jsp");
  });
  $('#product').click(function(){  //when we click myshopping
    alert("go to login");
    location.replace("loginCustomer.html");
  });

  $('#myshopping').click(function(){  //when we click home
	alert("go to login");
    location.replace("loginCustomer.html");
  });
  $('#contactus').click(function(){  //when we click home
	alert("go to login");
    location.replace("loginCustomer.html");
  });
});

function showPic(){
	var img = document.getElementById("preview");
	var imgName = document.getElementById('productImage');
	img.src=imgName.value;
}
