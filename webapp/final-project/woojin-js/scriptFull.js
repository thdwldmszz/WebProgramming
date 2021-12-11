
$(document).ready(function(){
  $('#home').click(function(){  //when we click home
    $('.home').show();
    $('.product').hide();
    $('.myshopping').hide();
    $('.contactus').hide();
  });
  $('#product').click(function(){  //when we click myshopping
    $('.home').hide();
    $('.product').show();
    $('.myshopping').hide();
    $('.contactus').hide();
	$('.whisky').show();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').hide();
  });
  $('#myshopping').click(function(){  //when we click home
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').show();
    $('.contactus').hide();
  });
  $('#contactus').click(function(){  //when we click home
    $('.home').hide();
    $('.product').hide();
    $('.myshopping').hide();
    $('.contactus').show();
  });


  $('#whisky').click(function(){  //when we click home
    $('.whisky').show();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').hide();
  });

	$('#gin').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').show();
	$('.beer').hide();
  });

$('#rum').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').show();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').hide();
  });

$('#tequila').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').hide();
    $('.tequila').show();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').hide();
  });

$('#brandy').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').show();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').hide();
  });

$('#wine').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').show();
	$('.gin').hide();
	$('.beer').hide();
  });

$('#beer').click(function(){  //when we click home
    $('.whisky').hide();
    $('.rum').hide();
    $('.tequila').hide();
	$('.brandy').hide();
	$('.wine').hide();
	$('.gin').hide();
	$('.beer').show();
  });

 $('#purchaseBtn').click(function(){
	//$('#purchasePop').show();
	swal({
        		title: 'My Cart Purchase',
        	    text: 'Are you sure you are going to purchase the product(s)?',
        	    icon:  'warning',
 				 buttons: {
        confirm: {
          text: "OK",
          value: true,
          visible: true,
          className: "",
          closeModal: true
        },
        cancel: {
          text: "Cancel",
          value: false,
          visible: true,
          className: "",
          closeModal: true,
        }
      }
        	}).then(function(isConfirm) {
      if (isConfirm) {
        swal({
          title: 'Successful!',
          text: 'You have succesfully purchased the product(s)!',
          icon: 'success'
        }).then(function() {
         $('.home').show();
		    $('.product').hide();
		    $('.myshopping').hide();
		    $('.mycart').hide();
		    $('.contactus').hide();
        });
      } else {
        swal({
	title: 'Canceled!',
          text: 'You haves succesfully purchased the product(s)!',
          icon: 'error'
	
});
      
       }
	});

  });

	
});