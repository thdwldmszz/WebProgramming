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
<link rel="stylesheet" type="text/css" href="../final-project/woojin-css/styles.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="woojin-js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="woojin-js/scriptFull.js"></script>
</head>
<body>
  <div class="top-menu">
    <p><b>SKKU WHISKY AND MORE</b></p>
    <button id="home" type="button" name="button">HOME</button>
    <button id="product" type="button" name="button">PRODUCT</button>
    <a id="myshoppingMain" type="button" name="button" href="loginCustomer.html">MY SHOPPING</a>
    <a id="mycartMain" type="button" name="button" href="loginCustomer.html">MY CART</a>
    <button id="contactus"type="button" name="button">CONTACT US</button>
    <a id="loginMain" name="button" href="loginCustomer.html">Login</a>
  </div>

  <div class="home">
    <img src="https://data2.1freewallpapers.com/download/whiskey-wine-glasses-bottle.jpg" alt="">
    <div class="hometext">
      <p style="font-size:50px;"><b>December sale</b></p>
      <p style="font-size:35px;margin-top:2vh;">Welcome to Skku whisky and more</p>
      <p style="font-size: 20px; margin-top:5vh;">2021.12.01~12.12</p>
    </div>
  </div>

  <div class="copyright">
    <p>Copyright@2021 WoojinKim&JieunSong</p>
  </div>
</body>
</html>