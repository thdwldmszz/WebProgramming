
$(document).ready(function(){
  $('#home').click(function(){  //when we click home
    alert("go to login");
  });
  $('#product').click(function(){  //when we click myshopping
    alert("go to login");
  });
  $('#myshopping').click(function(){  //when we click home
    alert("go to login");
  });
  $('#mycart').click(function(){  //when we click home
    alert("go to login");
  });
  $('#contactus').click(function(){  //when we click home
    alert("go to login");
  });
  $('#login').click(function(){
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').hide();
    $('.mycart').hide();
    $('.contactus').hide();
    location.replace("../2018315379_송지은_Final/index.html");
  });
});
