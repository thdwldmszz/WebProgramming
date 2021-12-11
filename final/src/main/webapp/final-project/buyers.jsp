<%@page import="java.util.*"%>
<%@page import="jsp.tutorial.SearchDrink"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final project</title>
<link rel="stylesheet" type="text/css" href="woojin-css/styles.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="woojin-js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="woojin-js/scriptFull.js"></script>
</head>
<body>
<%	SearchDrink connecttoSearch = new SearchDrink();

	List whisky=connecttoSearch.Searchwhisky();
	List gin=connecttoSearch.Searchgin();
	List rum=connecttoSearch.Searchrum();
	List tequila=connecttoSearch.Searchtequila();
	List brandy=connecttoSearch.Searchbrandy();
	List wine=connecttoSearch.Searchwine();
	List beer=connecttoSearch.Searchbeer(); 
	List shoppinglist =new ArrayList();%>
	
 <div class="top-menu">
    <p><b>SKKU WHISKY AND MORE</b></p>
    <button id="home" type="button" name="button">HOME</button>
    <button id="product" type="button" name="button">PRODUCT</button>
    <button id="myshopping" type="button" name="button">MY SHOPPING</button>
    <button id="mycart" type="button" name="button">MY CART</button>
    <button id="contactus"type="button" name="button">CONTACT US</button>
    <a id="logout" href="../2018315379_SongJiEun_Final/mainPage.jsp" type="button" name="button">Log out</a>
  </div>

  <div class="home">
    <img src="https://data2.1freewallpapers.com/download/whiskey-wine-glasses-bottle.jpg" alt="">
    <div class="hometext">
      <p style="font-size:50px;"><b>December sale</b></p>
      <p style="font-size:35px;margin-top:2vh;">Welcome to Skku whisky and more</p>
      <p style="font-size: 20px; margin-top:5vh;">2021.12.01~12.12</p>
    </div>
  </div>

  <div class="product">
    <div>
      <h1 style="font-size:30px; margin:5vh;">Drinks</h1>
      <div class="product-title">
        <button id="whisky" type="button" name="button">Whisky</button>
        <button id="gin" type="button" name="button">Gin</button>
        <button id="rum" type="button" name="button">Rum</button>
        <button id="brandy" type="button" name="button">Brandy</button>
        <button id="tequila" type="button" name="button">Tequila</button>
        <button id="wine" type="button" name="button">Wine</button>
        <button id="beer" type="button" name="button">Beer</button>
      </div>
      <div class="whisky">       
 <%
   for(int i=0;i<whisky.size();i++){
	   List drink=(List)whisky.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img onclick=<%=shoppinglist.add(drink)%> src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
	    <div class="gin">       
 <%
   for(int i=0;i<gin.size();i++){
	   List drink=(List)gin.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
      <%-- 설명 --%>
      
      <div class="tequila">       
 <%
   for(int i=0;i<tequila.size();i++){
	   List drink=(List)tequila.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
      <%-- 설명 --%>
      
      <div class="rum">       
 <%
   for(int i=0;i<rum.size();i++){
	   List drink=(List)rum.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
      <%-- 설명 --%>
      
      <div class="brandy">       
 <%
   for(int i=0;i<brandy.size();i++){
	   List drink=(List)brandy.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
      <%-- 설명 --%>
      
      <div class="wine">       
 <%
   for(int i=0;i<wine.size();i++){
	   List drink=(List)wine.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div>
      <%-- 설명 --%>
      
      <div class="beer">       
 <%
   for(int i=0;i<beer.size();i++){
	   List drink=(List)beer.get(i);
 %>
  <ul class="item"><center>
          <li >
            <img class="drink" onclick="getsrc(this)" src=<%=drink.get(0) %>>
          </li>
          <li >
            <p ><%=drink.get(1) %></p>
            <p ><%=drink.get(2) %></p>
            <p style="color:#D35400;font-weight:bold;"><%=drink.get(3) %>won</p>
          </li></center>
        </ul>
 <%
  }
 %>
      </div> 	    
    </div>
  </div>


  <div class="myshopping">
    <div class="my-info">
      <h1 style="margin-bottom:2vh;">My Information</h1>
      <p>First name: <%=session.getAttribute("infoFName") %></p>
      <p>Last name: <%=session.getAttribute("infoLName") %></p>
      <p>sex: <%=session.getAttribute("infoSex") %></p>
      <p>ID: <%=session.getAttribute("infoID") %></p>
      <p>Email: <%=session.getAttribute("infoEmail") %></p>
    </div>
    <div class="ordered-list">
      <h2>Ordered list</h2>
      <table id="mycart">
        <thead>
          <tr>
            <th>Product image</th>            
            <th>Category</th>
	    <th>Product Name</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody class="mylist">
         
        </tbody>

      </table>
    </div>
  </div>

  <div class="contactus">
    <img src="https://t3.ftcdn.net/jpg/03/08/97/20/240_F_308972033_TXgwI0fuZZVz7vKLww7yuwrfElp7mER6.jpg" style="width:70vw;">
    <div class="waytocome">
      <div style="grid-row:1/2;grid-column:1/2;">
        <p style="font-size:30px;margin-bottom:5vh;">Way to come</p>
      </div>
    <div style="grid-row:2/3;grid-column:1/2;">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.0502918040506!2d126.97322935109307!3d37.293941879750875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b42b61ce1867f%3A0xb38e2754eb2dbb08!2z7ISx6reg6rSA64yA7ZWZ6rWQIOyekOyXsOqzvO2Vmey6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1639216661061!5m2!1sko!2skr" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <div class="contact-message">
        <p style="font-size:30px;margin-bottom:2vh;">Contact Us</p>
        <p style="font-size:15px;margin-bottom:1vh;">Telephone: 031-0000-0000</p>
        <p style="font-size:30px;margin-bottom:2vh;">Q&A</p>
        <form class="" action="index.html" method="post">
          <input type="text" name="" value="" placeholder="Enter your ID">
          <textarea name="name" rows="14" cols="80" placeholder="Enter message"></textarea>
          <button type="button" name="button" style="float:right;">Submit</button>
        </form>
      </div>
    </div>
  </div>

  <div class="copyright">
    <p>Copyright@2021 WoojinKim&JieunSong</p>
  </div>
	
<script type="text/javascript">
let drinklist=[];

function getsrc(el){ //get src when we click image
	var imgsrc=el.src;
	var num=0;
	
	for(var i=0;i<drinklist.length;i++){
		if(drinklist[i]==imgsrc){
			num=1;
		}		
	}
	if(num==0){
	drinklist.push(imgsrc)
	};
	console.log(drinklist);
}
	var mycart=[];
	var whiskylist='<%=whisky%>';
	var ginlist='<%=gin%>';
	var tequilalist='<%=tequila%>';
	var brandylist='<%=brandy%>';
	var winelist='<%=wine%>';
	var beerlist='<%=beer%>';
	var rumlist='<%=rum%>';
	var src;
	
	for(var i=0;i<whiskylist.length;i++){
		if(whiskylist[i]!='['&& whiskylist[i]!=']'&&whiskylist[i]!=' '){
			if(whiskylist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=whiskylist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<ginlist.length;i++){
		if(ginlist[i]!='['&& ginlist[i]!=']'&&ginlist[i]!=' '){
			if(ginlist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=ginlist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<tequilalist.length;i++){
		if(tequilalist[i]!='['&& tequilalist[i]!=']'&&tequilalist[i]!=' '){
			if(tequilalist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=tequilalist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<brandylist.length;i++){
		if(brandylist[i]!='['&& brandylist[i]!=']'&&brandylist[i]!=' '){
			if(brandylist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=brandylist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<rumlist.length;i++){
		if(rumlist[i]!='['&& rumlist[i]!=']'&&rumlist[i]!=' '){
			if(rumlist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=rumlist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<winelist.length;i++){
		if(winelist[i]!='['&& winelist[i]!=']'&&winelist[i]!=' '){
			if(winelist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=winelist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	for(var i=0;i<beerlist.length;i++){
		if(beerlist[i]!='['&& beerlist[i]!=']'&&beerlist[i]!=' '){
			if(beerlist[i]==','){
				mycart.push(src);
				src="";
			}
			else{
				src+=beerlist[i];
			}
		}
	}
	mycart.push(src);
	src="";
	mycart[0]=mycart[0].substr(9,mycart[0].length-9);
	console.log(mycart);
	
	function makemycart(){
		for(var i=0;i<mycart.length;i+=4){
			for(var j=0;j<drinklist.length;j++){
				if(drinklist[j]==mycart[i]){
					const table = document.getElementById('mycart');					  
					  // 새 행(Row) 추가
					  const newRow = table.insertRow();
					  var img=document.createElement('img');
					  img.src=mycart[i];
					  
					  // 새 행(Row)에 Cell 추가									  
					  const newCell1 = newRow.insertCell(0);
					  const newCell2 = newRow.insertCell(1);
					  const newCell3 = newRow.insertCell(2);
					  const newCell4 = newRow.insertCell(3);					  
					  
					  // Cell에 텍스트 추가	
					  newCell1.appendChild(img);
					  newCell2.innerText = mycart[i+3];
					  newCell3.innerText = mycart[i+2];
					  newCell4.innerText = mycart[i+1];
					  
				}
			}
		}
	}
	

</script>
</body>
</html>
