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
    <a id="logout" href="../2018315379_Final/mainPage.jsp" type="button" name="button">Log out</a>
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
        <button type="button" name="button">Whisky</button>
        <button type="button" name="button">Gin</button>
        <button type="button" name="button">Rum</button>
        <button type="button" name="button">Brandy</button>
        <button type="button" name="button">Tequila</button>
        <button type="button" name="button">Whine</button>
        <button type="button" name="button">Beer</button>
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
      <table>
        <thead>
          <tr>
            <th>Date</th>
            <th>Product image</th>
            <th>Product Name</th>
            <th>Category1</th>
            <th>Price</th>
            <th>Quantity</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>date</td>
            
          </tr>


        </tbody>

      </table>

    </div>
  </div>

  <div class="mycart">
    <div class="mycart-title">
      <p><i class="fas fa-shopping-cart" style="font-size:40px;margin-right:20px;"></i>My Cart</p>
    </div>
    <table>
      <thead>
        <tr>
          <th>Product image</th>
          <th>Product Name</th>
          <th>Category1</th>
          <th>Category2</th>
          <th>Price</th>
          <th>Quantity</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><img src="http://liquorstore21.co.kr/data/file/product1/thumb-3076872730_wmPj7Zo4_93c26400a634f3a4dc447e1770485ef8d54f2452_178x183.png"></td>
          
        </tr>


      </tbody>

    </table>

  </div>

  <div class="contactus">
    <img src="https://t3.ftcdn.net/jpg/03/08/97/20/240_F_308972033_TXgwI0fuZZVz7vKLww7yuwrfElp7mER6.jpg" style="width:70vw;">
    <div class="waytocome">
      <div style="grid-row:1/2;grid-column:1/2;">
        <p style="font-size:30px;margin-bottom:5vh;">Way to come</p>
      </div>
      <div style="grid-row:2/3;grid-column:1/2;"id="daumRoughmapContainer1637852956660" class="root_daum_roughmap root_daum_roughmap_landing"></div>

      <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
      <script charset="UTF-8">
      	new daum.roughmap.Lander({
      		"timestamp" : "1637852956660",
      		"key" : "2882z",
      		"mapWidth" : "35vw",
      		"mapHeight" : "auto"
      	}).render();
      </script>
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
</body>
</html>