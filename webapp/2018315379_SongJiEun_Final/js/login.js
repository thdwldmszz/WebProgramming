$(document).ready(function(){

  $('#btnSignup').click(function(){
    event.preventDefault();
    if($('#signupFirst').val()==''){ //if empty input then change the border color and pop up message
      $('#signupFirst').css({border:'red solid 1px'});
      $('#popUpFirstError0').css({display: 'block'});
    }

    if($('#signupLast').val()==''){ //if empty input then change the border color and pop up message
      $('#signupLast').css({border:'red solid 1px'});
      $('#popUpLastError0').css({display: 'block'});
    }

    if (!$("input[name='gender']:checked").val()){ //if none of the choices are picked then pop up
      $('#popUpGenError0').css({display: 'block'});
    }

    if($('#signupId').val()==''){ //if empty input then change the border color and pop up message
      $('#signupId').css({border:'red solid 1px'});
      $('#popUpIdError0').css({display: 'block'});
    }

    if($('#signupEmail').val()==''){ //if empty input then change the border color and pop up message
      $('#signupEmail').css({border:'red solid 1px'});
      $('#popUpEmailError0').css({display: 'block'});
    }

    if($('#signupPass').val()==''){ //if empty input then change the border color and pop up message
      $('#signupPass').css({border:'red solid 1px'});
      $('#popUpPasswordError0').css({display: 'block'});
    }

    if($('#signupPassCon').val()==''){ //if empty input then change the border color and pop up message
      $('#signupPassCon').css({border:'red solid 1px'});
      $('#popUpConfirmError0').css({display: 'block'});
    }

    if (!$("input[name='occupation']:checked").val()){ //if empty input then change the border color and pop up message
      $('#popUpOccError0').css({display: 'block'});
    }

    if($('input[name="occupation"]:checked').val()=="Manager" && $('#signupReg').val().length==0){ //if does not match, change to red border
     $('#popUpRegError0').css({display: 'block'});
     $('#popUpRegError1').css({display: 'none'});
     $('#containerRN').css({border:'red solid 1px'});
   }


   if($('input[name="occupation"]:checked').val()=="Manager" &&  $('#signupReg').val()!='moreandwhiskey'){
     $('#popUpRegError0').css({display: 'none'});
     $('#popUpRegError1').css({display: 'block'});
     $('#signupReg').css({border:'red solid 1px'});
   }

    else{ //if values have all the conditions right, save to list then change page
		//$('form').submit();
		$('#signupForm')[0].submit();

    }
  });

  $('#signupFirst').on("input",function(){
    var size = $('#signupFirst').val().length;
    var firstName = $('#signupFirst').val();
    if($('#signupFirst').val().length==0){ //if no input then change back the border to white and not display the check icon
      $('#popUpFirstError0').css({display: 'none'});
      $('#popUpFirstError1').css({display: 'none'});
      $('#popUpFirstError2').css({display: 'none'});
      $('#popUpFirstError3').css({display: 'none'});
      $('#signupFirst').css({border:'black solid 1px'});
    }
    for(let i=0;i<size;i++){
      if(firstName[i]>=0||firstName[i]<=9){ //check each letter if a number consists
        $('#popUpFirstError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpFirstError1').css({display: 'block'}); //2nd pop up message
        $('#popUpFirstError2').css({display: 'none'});
        $('#popUpFirstError3').css({display: 'none'});
        $('#signupFirst').css({border:'red solid 1px'}); //change to red border
        return; //return so if a number exist, it would go back and not read until the end
      }
      else if(firstName[0]===firstName[0].toLowerCase()){ //check if first letter is a capital letter
        $('#popUpFirstError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpFirstError1').css({display: 'none'});
        $('#popUpFirstError2').css({display: 'block'}); //3rd pop up message
        $('#popUpFirstError3').css({display: 'none'});
        $('#signupFirst').css({border:'red solid 1px'}); //change to red border
        return;
      }
      else if(/^[a-zA-Z0-9- ]*$/.test(firstName[i]) == false){
        $('#popUpFirstError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpFirstError1').css({display: 'none'});
        $('#popUpFirstError2').css({display: 'none'});
        $('#popUpFirstError3').css({display: 'block'}); //4th pop up message
        $('#signupFirst').css({border:'red solid 1px'}); //change to red border
        return;
      }
      else{ //if all the conditions are right, place a check icon and delete all the pop up messages
        $('#popUpFirstError0').css({display: 'none'});
        $('#popUpFirstError1').css({display: 'none'});
        $('#popUpFirstError2').css({display: 'none'});
        $('#popUpFirstError3').css({display: 'none'});
        $('#signupFirst').css({border:'black 1px solid'});
      }
    }
  });

  $('#signupLast').on("input",function(){
    var size = $('#signupLast').val().length;
    var lastName  = $('#signupLast').val();
    if($('#signupLast').val().length==0){ //if no input then change back the border to white and not display the check icon
      $('#popUpLastError0').css({display: 'none'}); //not display the 1st pop up message
      $('#popUpLastError1').css({display: 'none'}); //not display the 2nd pop up message
      $('#popUpLastError2').css({display: 'none'}); //not display the 3rd pop up message
      $('#popUpLastError3').css({display: 'none'}); //not display the 4th pop up message
      $('#signupLast').css({border:'black solid 1px'});
    }
    for(let i=0;i<size;i++){
      if(lastName[i]>=0||lastName[i]<=9){ //check each letter if a number consists
        $('#popUpLastError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpLastError1').css({display: 'block'}); //2nd pop up message
        $('#popUpLastError2').css({display: 'none'}); //not display the 3rd pop up message
        $('#popUpLastError3').css({display: 'none'}); //not display the 4th pop up message
        $('#signupLast').css({border:'red solid 1px'}); //change to red border
        return;
      }
      else if(lastName[0]===lastName[0].toLowerCase()){ //check if first letter is a capital letter
        $('#popUpLastError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpLastError1').css({display: 'none'}); //not display the 2nd pop up message
        $('#popUpLastError2').css({display: 'block'}); //3rd pop up message
        $('#popUpLastError3').css({display: 'none'}); //not display the 4th pop up message
        $('#signupLast').css({border:'red solid 1px'}); //change to red border
        return;
      }
      else if(/^[a-zA-Z0-9- ]*$/.test(lastName[i]) == false){
      $('#popUpLastError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpLastError1').css({display: 'none'}); //not display the 2nd pop up message
        $('#popUpLastError2').css({display: 'none'}); //not display the 3rd pop up message
        $('#popUpLastError3').css({display: 'block'}); //4th pop up message
        $('#signupLast').css({border:'red solid 1px'}); //change to red border
        return;
      }
      else{ //if all the conditions are right, place a check icon and delete all the pop up messages
        $('#popUpLastError0').css({display: 'none'}); //not display the 1st pop up message
        $('#popUpLastError1').css({display: 'none'}); //not display the 2nd pop up message
        $('#popUpLastError2').css({display: 'none'}); //not display the 3rd pop up message
        $('#popUpLastError3').css({display: 'none'}); //not display the 4th pop up message
        $('#signupLast').css({border:'black solid 1px'});
      }
    }
  });

  $("input[name='gender']:radio").change(function (e) {
    $('#popUpGenError0').css({display: 'none'}); //if one of the choices is chosen, erase the pop up message
  });

  $('#signupId').on("input",function(){  //function for ID
    if($('#signupId').val().length==0){
      $('#popUpIdError0').css({display: 'none'});
      $('#popUpIdError1').css({display: 'none'});
      $('#signupId').css({border:'black solid 1px'});
    }
    else if($('#signupId').val().length<=7){ //check ID if exists
      $('#popUpIdError0').css({display: 'none'});
      $('#popUpIdError1').css({display: 'block'});
      $('#signupId').css({border:'red solid 1px'});
    }
   else{ //if all the conditions are right, place a check icon and delete all the pop up messages
     $('#popUpIdError0').css({display: 'none'});
     $('#popUpIdError1').css({display: 'none'});
     $('#signupId').css({border:'black solid 1px'});
   }
 });

  $('#signupEmail').on("input",function(){
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;             //email id validation from source: https://www.c-sharpcorner.com/blogs/email-id-validation-using-jquery-or-javascript
    if($('#signupEmail').val().length==0){ //if no input, place back to white border and erase check icon
      $('#popUpEmailError0').css({display: 'none'});
      $('#popUpEmailError1').css({display: 'none'});
      $('#signupEmail').css({border:'black solid 1px'});
    }
    else if(!regex.test($(this).val())){ //if the condition for email is not right, then change to red border and erase the check icon
      $('#popUpEmailError0').css({display: 'none'});
      $('#popUpEmailError1').css({display: 'block'});
      $('#signupEmail').css({border:'red solid 1px'});
    }
    else{ //if all the conditions are right, place a check icon and delete all the pop up messages
      $('#popUpEmailError0').css({display: 'none'});
      $('#popUpEmailError1').css({display: 'none'});
      $('#signupEmail').css({border:'black solid 1px'});
    }
  });

  $('#signupPass').on("input",function(){  //password validation from google
    var pass=$("#signupPass").val();
    if($('#signupPass').val().length==0){
      $('#popUpPasswordError0').css({display: 'none'});
      $('#popUpPasswordError1').css({display: 'none'});
      $('#signupPass').css({border:'black solid 1px'});
    }
    else if(pass.length<=7){ //must have atleast 6 characters with 1 capital letter, 1 lowercase letter, 1 digit, 1special char
      $('#popUpPasswordError0').css({display: 'none'});
      $('#popUpPasswordError1').css({display: 'block'});
      $('#signupPass').css({border:'red solid 1px'});
   }
   else{ //if all the conditions are right, place a check icon and delete all the pop up messages
     $('#popUpPasswordError0').css({display: 'none'});
     $('#popUpPasswordError1').css({display: 'none'});
     $('#signupPass').css({border:'black solid 1px'});
   }
 });

  $('#signupPassCon').on("input",function(){
    var password=$("#signupPass").val();
    var passCon = $('#signupPassCon').val();
    if($('#signupPassCon').val().length==0){ //if no input, back to white border with no check icon
      $('#popUpConfirmError0').css({display: 'none'});
      $('#popUpConfirmError1').css({display: 'none'});
      $('#signupPassCon').css({border:'black solid 1px'});
    }
    else if(passCon!=password){ //if does not match, change to red border
      $('#popUpConfirmError0').css({display: 'none'});
      $('#popUpConfirmError1').css({display: 'block'});
      $('#signupPassCon').css({border:'red solid 1px'});
    }
    else{ //if the confirm password is same as the former password then delete the pop up messages and place a check icon
      $('#popUpConfirmError0').css({display: 'none'});
      $('#popUpConfirmError1').css({display: 'none'});
      $('#signupPassCon').css({border:'black solid 1px'});
    }
  });

  $("input[name='occupation']:radio").change(function () {
    $('#popUpOccError0').css({display: 'none'}); //if one of the choices is chosen, erase the pop up message
  });

  $('#signupReg').on("input",function(){
    if($('input[name="occupation"]:checked').val()=="Customer"){
      $('#popUpRegError0').css({display: 'none'});
      $('#popUpRegError1').css({display: 'none'});
      $('#signupReg').css({border:'black solid 1px'});
    }

    else if($('input[name="occupation"]:checked').val()=="Manager" && $('#signupReg').val()=='moreandwhiskey'){ //if the confirm password is same as the former password then delete the pop up messages and place a check icon
      $('#popUpRegError0').css({display: 'none'});
      $('#popUpRegError1').css({display: 'none'});
      $('#signupReg').css({border:'black solid 1px'});
    }


  });
  //login
//  $('#btnLoginC').click(function(){
  //    event.preventDefault();

  //});
});
