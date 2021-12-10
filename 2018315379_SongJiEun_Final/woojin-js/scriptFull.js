
$(document).ready(function(){
  $('#home').click(function(){  //when we click home
    $('.home').show();
    $('.product').hide();
    $('.myshopping').hide();
    $('.mycart').hide();
    $('.contactus').hide();
  });
  $('#product').click(function(){  //when we click myshopping
    $('.home').hide();
    $('.product').show();
    $('.myshopping').hide();
    $('.mycart').hide();
    $('.contactus').hide();
  });
  $('#myshopping').click(function(){  //when we click home
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').show();
    $('.mycart').hide();
    $('.contactus').hide();
  });
  $('#mycart').click(function(){  //when we click home
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').hide();
    $('.mycart').show();
    $('.contactus').hide();
  });
  $('#contactus').click(function(){  //when we click home
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').hide();
    $('.mycart').hide();
    $('.contactus').show();
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
