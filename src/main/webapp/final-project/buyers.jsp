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
<script src="https://unpkg.com/sweetalert@2.1.2/dist/sweetalert.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<%   SearchDrink connecttoSearch = new SearchDrink();

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
    <button onclick="makemycart()" id="myshopping" type="button" name="button">MY SHOPPING</button>
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
            <img onclick="getsrc(this)" src=<%=drink.get(0) %>>
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
      <%-- ì ¤ëª  --%>
      
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
      <%-- ì ¤ëª  --%>
      
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
      <%-- ì ¤ëª  --%>
      
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
      <%-- ì ¤ëª  --%>
      
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
      <%-- ì ¤ëª  --%>
      
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
      </table>
      <button id="purchaseBtn">Purchase</button>
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
        <p style="font-size:15px;margin-bottom:1vh;">Woojin: 010-0000-0000</p>
          <p style="font-size:15px;margin-bottom:5vh;">Jieun: 010-0000-0001</p>
        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQUExYUFBQXFxYXGR4bGhkZGh4ZGxkaIR8eHx4ZHxwgHykiHxwoIR8hIjIiJiosLy8vHiA1OjUtOSkuLywBCgoKDg0OHBAQHC4mIScuLiwuLC4uLi4uNy4uMC4uMC4uLi4uLi4uLjAwLjAuMC4uLi4uLi4uLi4uLi4uLi4uLv/AABEIALEBHAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgcAAf/EAEsQAAICAAQDBQQHBAUJCQEBAAECAxEABBIhBTFBBhMiUWEycYGRFCNCUqGxwWKS0fAHM1Ny4RUkJUNUgrLS8RYXNGNzk6LC4rRE/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QALhEAAgIABQEHBAMBAQEAAAAAAQIAEQMSITFBUQQTFGFxgZGhscHwIjLRQlIj/9oADAMBAAIRAxEAPwDk30hfvjEkzSj7Q+eICAnlGv7wv8se7k/2afMfwxGhK2Zecyh5uPmMS+lr99T8sD9w1/1SfMYsGWe67lf3gMbKsNmXDOL99fmMWJn4+rj3fyMDrkZP7AH/AHhgPOZXSSWTTy8Idb8rrn/PocYKp0mLERmc5F94V7/0wTDmYUIqZWDjcDUAL6G1G/mRt6nCPILqtFjLkj7wBHTY1WL34XpB1oy7Ei5UFgcwBW5xjhrtcIxCNahnFsqVNjmNx6r5fpgzWJog/Mr4X93QnBOVyskkOl49LJ7J1BtQ+B+Hy9cKMlmRDL4h9W5p/Qdf59+I7iuRLWBrwZbwWepDC52YaR+an9MVcUQqdXI+y2JcYyvdtq56TYPK15hv1wy4hF3sauRRdaYeTjn8xvjWAQ3WajRXpJZkiWJX/tEo/wB5dj+hwDwCUkTRnnp1fFTv+GLOAsTDJGRWg619R7L/AKHFGSAjza7bOaJ9GFfngAUGWG7ytKO0C+IN95fywXA+pVPmAfwxTx2LwLYvSSK/DHuHNca7VW3yOG3wxBtiGEVi2MYgMXRDEiZQS9Fx5hi2NcQmGJ3rHkE54JVcCw88MEXbAaFRcHZcA8UzGhCBzbYe7qf588M5RjJcQl7yTwta8gB/PXFMFcxk8U5RLuC5MyyAAWSaGDO0mc1uuXjP1ce232m+03xOw9B64JEgy0BYGpZAVTzA5Mw9eg+J6YH7O8OBuSQ0iDU7HoB+p5DFi1nMeNpPLpl+YblAuVh79wC52iXzbz9wwBwbh7zSF3Nkks7HkOpJPkMfZXfNz6gDp9mNPup0HvPPF/Gc2APosJtR/WuPtN90H7o64FHbk7+UNjfjiD8VzvfusUViGM+H9tush/QeXvODZZBlUFAGdx4VO4jH32Hn5DH2MLlI1dlDSuPq0P8Axt+yPxO3mRTwzhxfVPO9LdvI3U+Xv6ADGsV5feajfn9pDgvBy5aSRqUeJ5G3/wCrHyw0zeYEgCJUcKeytiyfvN+1+XzJV8W4ispCpKI4l9lAV/ebzb8uQ6konMpY1IpA5Eug2+eCMNnNkxDiBdAJpGAHXFRkJ9BhPENvFMA3WmUj5i8F5cD/AGpV+K/wxjhVzFDXHuTyDSAsGUBfvMAfkTePmrGczzOKEc6uOviRa8udXgPvZv7Rf/cT+OB4cnW4e9A4n1Zj67YKjmut+WG2a4THMuuJvl+o/h8sJJIHiLBxyGx6HxKPjzxRXVtt4rIyekJDm/dvi+Gbf5kH3AnFaTKHlUjZFbrfLa8fcmdMjKf7KU17oXYYBFzXDkzZ88fMhwZs1m00snIkhr5Ipbp7sK3zYG45eWJjickRDJ4H02GBo6WHp5jasZUINiZiCIZlM8BRoC/Tf3Y9xdBMgAIBBsE+XLCxNRBKpYVdTHyG5/IH5HH2LiVeQxshBsTZhVGPsrmigUa7KgD0O2+3rinjWWDKJU5E7/suOR/n9cLk4qvkLwy4fxmKyj7RybN+yejfxPx6YmUYHMBHV12M+QsJoN/biFMPNOR+R39zDFnCZdSNAfbHs+pUWp+K2vwGBH1ZWckiwNmHRlO1/EWD/hj5xWMxOJIzemmQ/eQ7qfhywKvTg6iUuten2kspMIp1J9hrv3NSt/H4Yq41EUIPVSVPw5H8sX8XQSL3iDYjWo8gfaX4Gxj0jd9Dq6ld/wC8ux/jgg7N7Gatx7yXFfHGzDrT/MX+eF3CmtD6McG8MbXFXkpX5bj8MLuCnd18iPzOGApSOkU6sp6xmowXCuK4Yxg6KMY53adCrJRLijMjBsaYHzQGJg6xyukDy/PDeBdsKssN8PIENY2IY2GsW8SlVRuau/l1wm4FkQ7l60oN+XID9f1x94uxlmCqb6fDz+J/LBPEm7tFgj9pqLV5dB+vy8sXUZVyjczmY5mLcCD5y8zP4R4VpVodOWkHqL/Ek9cX8ZlBAysW4U3Kw5Fx9n3L/PPE2P0eMKn9dIPD+yvIv+g+OPmXVcrGHIDSt/Vqd7P3z+yPxOGvavb/AGDLvfv/AJJ5yX6LGIY//ESDc9YkP/3b8BiGSy6ZaISyLqZv6qP75+8f2B1PXH3J5dUVszOS5Ymh9qRzvpHp1J6D4Y8kWotmsy1KKG3/AMYox+nxPnjaVX6TNXP6BLeE8Led2nnba7Zj18kUfgB0wxz+malICxJ7CUDX7Rvm3rhcnGTMoNd2g2VL2A8x5kjqfXpi5ZgN9S/j/DCMGuzFzLVCSbhcfRBXnQ/hj5leDLIxVVXl5Ctrvf02wXFMW+0PTnhZ2a4e8Tu7MuptrW2PMk9Opr5YIzZTrEJFjSfOJdlIk1u0lAc+SgYP4P2bhMYZWV138WxBN77+QwXxREmjOXRgHYr68jqokkDcKfkfLEeCxCKIIW8MYPiIqzZJ2BPn0wC7FKvX8QhBd1pLm4Fl7AEa7jaxd1zPLlvi+DhWUGoNl1Y3zCrXIWPneLMnmUCGR92tQB90EMQPfSkn1JxjpOy8zs7hoaZ2It2Bony042FeuZqmYf8AkS1YkLkxkwTdVYUp946e8YveQH6vMJRPXmD+0K5+8G8Cme1AapoxyI2kT+Hw29MXQZil8J76PnpOzL61zB9V+WMQf39+8uKkZOA7yNGxYyIwC2DqJo2G2B5b9fQDfAPEMuY83It/6h//AOdsPsnNGfYbnzBGx/vKOf8AfTceuHHD+NoDpmXUKIDc3WwQSDycUffyvGGO6nUXM3ZwRpOccVy/1+kc2CEb+ajBfbPKhJiq1USpEa+8qjV+N46dFndMkaLAk3eGkkFBTsTR6q1Dl6bE0cA/942VJKycPRzvsVQ2eR54dMZmIIGwkcTCygg8xT2Nyq/R8ySmr/N0JvcU2oVXzxhU4fbAFgdIt9zVaq8JrnR5H346zF29hi7uKPIRoJkUqqhVBFmr8iCD7sE5bjMWpg/DIGIALUF3B2F3grilSSeZJkucahygNerqAaNaSWUkj3gbfxxYuWBjkkIoIVAHmWsjpyCg+W5X1x3rLZ7LMY64RFbrqSlh9kdbPLc4AfNZQqxHB49KsAw0QCmIFbaudMOm3zxQ44EQYZuc1NSwrC280UasP2kYXp96gge/zu8DZFC8DKd+6bw+elgTp91qx9PiMdYdsrqb/RAV1XcoIVIXSBsQwPsmtscsdo4sxrW2iLMjdDV0QempTTeVgHliYYNYHr7zoFjeB8OkIVojyU6l9QfaH6/PEOGyaGeMnYHUPdyP4Y9JpWUN0865A8zXP4eV4HzLU6uOhr/dOHq/f7wXXt9oRw5+7kdOlhh7uv6YFhTRmHX3/mMfcw31iMOo0n9MezjfXK/3hv76rDAa+ogP2MbwHDNOWEeXlw4hfw45cQVOlDL42NYBzsmLkfbC7OS788Ki6wsdJLLym8Ms/wAQKQmj4mFD023Py/TCKKTfni3O27LGRXXfy/S8VOGCwuJ3hC0JbwphFG07Dc+yPyGJcOIQNmJrJO/qxPQYjmJBIViAoKbYnyHID06+8gdMTkdZmUDaKPck/aPl7h+p8xgnXfnf06QDTbjb/ZPKNWrMz9TsB18kX8vcCcfMv4i2Zn2GwVR/8UUfz1OLWVZ5AdhDFyJ2B82923yHvwTk8uMzMhJ0xBgiWCbJ66RvZq657fIE/v4Ebj9+YPGuu8zmDojUUqj7I5hEHVj5+8nCxuItmZ4lKhYy6qkfMBSd78ySNyeeO1Z7K8JhiC5mB3CAEvJG4FmwD5C+XLC2VOE1G0eUmXxXEyCQAvYAq7B3KjcdRhxSi+ftOZmLHy+84zxFmDlVP23UA7UAflWLjlmOkBj7RFgFia5gKPH1HMDnjoHEMpwxdLzZeZQ3slyVB5k8xRvn64grcJ1au5LsdhZDnrzGk/kMOMQVtIsusw0YOqu8JAFmgWPMXq08gBZN+Xny13YeBnzMasbBore4306T5H2sMo8xwkWRlwdvF4V5/uGsOuD8b4Tl2DxRNr5g2TVdRfIbdOVYRmviMomGiUf5SahSiTMIo6KqBhXxOPd0WzU0VtpRWZRZ6BiLPMgEDG2XiXCWm71cu7SkyNSM5Nm+9OkH3k7bYOyOZ4S8rXEVmIIKgOZK31WANVc8Sc62OlS6MAoBHM5pEJTlWkOogyoNXTwpJ5f3vwxqezWe7nLxqwFsC3PzJ9PTGlPEuC6O7AGgGwChq+Vixzx8zJ4epCmFvCAK7t9hzA5eRv44lim9JTAOUmxOIx5wAG/LYjmMRXMEsB9okAMuxJPK8KA/r+GCILsG6oivf88elkE5BimMHznVjR++v64m/Eiy0x9Qw8+h/wAcLJCO8N8rxbnc3rpUHhArl+WBkGmkPekXHGW45KgrWeYNjbcGw1jk3qKOKZZ4tUcqg2G1MpPM3Zo+uEaoSavrXP1rBs3ipYwSwobbk7ch58sDu1B0mOMW3mt47FC/cO87Qt3SkUCx31HYgiuZFYtkzDSO0iZh6ddPhjYAezy8XPw/ifPGc4tmDN3KkqoTLqBfXSCR0589sW5HJxaR3iEnkbu+np6/hiRUhdz9JUuuaqH1mvyiAd0Tm57iogd29Eh9Yvc3vt7tuWL8tkEVSq5vMUzK3svsVUqK25Uet9MZVstlOqcue42/DEfokKpqMDBXtdTDlTAGrGx8SjfzxPU8n4EFqOB8mbpcutlvpWZNpoNh6rRov2dmoXY674WS8Dg/yfNofvNE61JpKsCwfUrXuTemz6DyrGZzHBsupKsJEZTRU6bB8j4eeJHiHc5doUJMZkVjZIIq7AC0K+F41E7HnpCGHSJDId1bpyx5jaA+tfHn/j88X5+HvLmS9OpVO1bnbF8kcaM0Ru7U1YNlb1Uw25Y6LETWASGwPgR/P88sQn30+YxdmDGSqKSANV7bgHcel4+ySIIdWkli1/CyP0wb2g3v92lay4LizpGE3fHp+PPE0kOCcMGEYsbvnjgSSe8BmQ4qaZsYYYExxY+4HEHktv6uMF3PoOnxP64lHmCxlzDDrsPNj7Ke4Dc+g9cS4fxCBMu8YLNJIRqta2BG13yq+t7nFRlViIKOkEspHMs4Wr91VhCNTGBuV6tKVfik3J615/HkPifLEpG5Rg0q+17/ACxX9MUMZTuWVgg/s2qkPqB0+eK4BpbuyNQetx7R3NAe8j8Bg5Zs0ccDgOYmSHWI4mYCzsKseI+fu92N3HFlghiDFlRyRSuaYDTZKxkFqJ3BqsYLJRCTMQZTRo0y6Xa7NsQNwBsRy59MGTcKy5eTW3iUm9xbU2k6RpN8+p5Y530betJQNa6iarOqhjMQ1tGxBKkSgEjlzi9PPAkXEJI0gTSwigIJZgdWkMje1pADWq7nbnt1GYzHCcsF1Cyeg1JubqvY5+nuxL/ImXFkPIBy2079fu7/AM+mBempPxFsA6D6zQ8ZmlzUcaOjJ3VaGUNfLnZQ3tgCLhjiYzGSXWTeoawb3692NjZ/nbCnNcIiCkoZmI6bCvedO354hNwmMMAskrWCdqJJHQbV8zh1JrQ/SKcp1I+sZRcLdQ6h8wA9A+IUQOV7b8ut4cf5XMZXVLCCq6BqRdh7tH4m8YyPhytdSPYagPMbG786PwxGTh7q0gUliAVYN9k8rvfe/LrgkFtC30mDKNl+s0PDajmEsciSErmD4Sdy6m+aVQ3x9HGoo+JtOSTHTVp3J1EkCr/PC7sPlXmnSE6QojmIJF/ZYn8vhhFBmHiYaFWzsGoMbsqCLFcwemN3dsQekYYgCg1Ws23CMkoAlmUBSbVXIA52L38R/ZH48saQ8bmO6o5HQnw37gWU18BjlX+XZVLbnvDtrJtgPKzv8BgBuJSEk7Hfm25+Z3xJuyM5smWXtioKAlckZ0E1Vfxx9ghOpQerAfjg3O5tHZyoIBQCj1OpT0+ONFksqkk0aFRTOoPusX8cdbYmUazgVbMx3EEqRx5EjB0OQVkQ2ASRfK99/wDDBPaLg8v0iXTFJp1mjpJFc+dYpy/BMw60sL3tv3bD/wCVe75+mDmBUG6jZGDHS5d9GXxglLQbcgCKDcvPAkOpSptSo325qLPpsPF64bjsfmTrAhkN+ySrC+VX5bX8saXsn2b7mRjmclNOjJpAQfavfYkbVWJnFQDe4/dMeKmZ4nk3g7plckNAshHQK2oURyNAkcr92J8J4j9bpcLp0t4SDs1DkCOZABs9PhjddoeAyuIxHlWZe6QAsnijoyeHfysArvy9MI+PdiszmJS4hdLA9mIKDsOmr05+7E0xFYU0d8MhiVizO5xnU2saBYWRQOrajuSeZtqvbbFOc4tKWlsF45dYXxEsoLq3xHgX88beDs3L9FEbQyvKr6t0VQQAKAYLdE3zPU+mHPZrhsgmeXOQs1qdIETELf2KGo7cvaPqScFHXNUniKwXNOOcQ7TSu4YqisGYtS7MSb3B+PXrjQLlfpEAzBCAI8asgAo6rJsemwwfx3sVOwzHc5VjrlVkNafDR1c6oX5jFMnA5ctwydJQys0it4gVOy9AeY9b88HFZdMp5m7OGYWQdoj44yIhRUSi6EECiB1HxPP3DC/NgiQSjkp39xvA8EZdOta0BPvw37dcPrNrHEpOoKAo3skDYfPDCgwX1jalM3pFLQfWE34asn0HX5Y8+8A9f+cn9cHf5O1wsoP1kfMXzTlfwIO3lgTh0eqJk6gn8R/EYbMCPQzZaNdRAYI8Mstw5m5DFnCcgXYUMbdMikUR7yZY3KEoNShyQCRSkWR8MSxsfKaG8fCwbFmYibhDqLIwrnirG64Dm1kikOZzCqwfSocooIoG+Qs3hPxvhoADowZSLBU2DvVg4K4xzZWmfDBWxM1lIzrG23XG94PwlRxGFW8QeOEjpu0RA+RGMpw1PEw/Yb9MdT4Hws/S+HyuNmgjP7jlR/xjGx3r4i4SaTA5jgiDK5dtw7Tyox9FC1+X44LTh+jiESop0o0YB9diRfnuThnxdu8z4yUSgJHPIf8AfbVqPy/T4uOGZcf5TdOiZj8lQfriLYrAG+hPzKhBYrqIp4YksnF1Vye7GYdl222e/jzxHIZDvpczIzUyM6odarXiIAKkeLYX6gGrOHPD5P8ASwHRHc0Ods/rQrw+fU4o4LxNIBnInEpZpZNJjSUi2ANEoKNXW/r0OMv8j7CK4IW/MxevCEkEFGQqwo7+zYYC/DarakWRR1LudziyTstKY1eNWZdYq2UOQwBAK34SBz252fIYoGeZZsuVikKxIQf83IN+KvZTxCjX48ycaHhnGXjy+Xg7iS0m70kKpqvEQVDKSCW5Gr3XmMFjUXJpES9m3E0kc66N1Y34goJ2Wg3iJ6WaA5m8GT9i5AzMImvu9Kr/ALpBbUTdknlXxw67ScTaZsxLHDONShVUqAbXa6Dm1PmL23x9/wC3GZ7xS0DBRCb+rFl6F14iKscjv88DMeIoUxLw/sRrWPTqI1NqcRnxsPCRRG26kXZHP3YnlewshmmM0MgGoHUPEAuq23Onp4r8tq3xbkO1mcjjRApCiRmpe71DUxY7MjVuxO5Pu22eQ9vZQk4ZJ9TMQh7uJwLAUFmVk8N77Idt7bliobzilT0me7H8NWGchCWWpirEEah3Bux0IsfM+uJ5j+j9maOONWZkFRkGh4ZG1AksCN1JvbrW5xPs7Lc8fgIcQzh5CSAxKUtKR4dh+HrgnhXaiNJss6xyxrGoWVpA0hYkSbgLe1sTdAWeVYRX/kfaUKnKJiuL9lngzGY7wUAjEiyaDcza8wL5HzFjC/hHZ6CSIM2ZVGtgQQ3RiARXQiue/PHSM12jy02ZnlnTvkZAkPieGl3DAg7knbc+XrjMdncnkgjjMEq3evoXu5nqO/CNUfhPX1xUYlybYJoaTATZQqDfz6Y23DMm3eLJaju3jsE+I6mrwit6rGczUMlFbtSRWltSM3pXhuvtHlywzyefmlmEjEDvJhYUsObBtx1U8xq5Ufdg4oLLFwyAw9YBxrMyrO4ErquokBWIAF+QodMMJsxoClppz5hZDttfn8PfiXFOHNJmpC8oQKrBSytJtZAAFUBzrfajinKRmWNzYXutDtpY6mDEK0YYbWASaPlv5YAUFV9IzOwZgOsZLm4vEGzGZteY72Tzqx577bYJITVpGYzGqtX9axFXXPlz6Yz0UTLmD4JKkOmiBtTVpG+/2fQ6vcTXBmJGRGVZDbaQNtzQ5b3Z8uWxwrYHQwjHM3HHn1LlyJ5UuBDaNp1c+dVe3nhSYmJ/8XP+8f44n2iysunLIiklcsobpRHQ+vPCz/JeaH+pf8P4450Wxv8AaXxWpiJo+zS6cwR9IlkBiksObHsncXf8nASI1WM5mR6azXyvFXZLKTpmLkjZV7uQWeV6TtgXhnDZJkaMRKZdS6e8cou6sQLsDVYDAH8sbKc5F9OkzMcgPrCJ5JB//sn/AHm/5sExPJLkZYy2v6wLrZqPiFbLpI2sdfPAXEeEscw0aKyRrpsyhkFkLYvxbkmwL3GCuEaostKHQofpEfhawa8PnvgupCg+YhwWJJ9DFS8O7iB4mNkyRN8NWGXGI74jC4PssPxH+GKeOPtO1AhNBFHoulq+ZP4YqzXEQzwZhhpBokDxVW3lv8sGmJzev1AhDKEAPl9DAOAiszP/AOkR+AxXw3h7d8/lWuvMBhY9+LezjhsxMy8jGa/AYaZLaQ+qN+mGdipPoIFAIHqZLsqiiZlPINiqLibZLMZtczGxGYDaJavamC0eqURYHKqryqyIIlZwebkfjjawTpNkpiQrr3TkagGAYKeh6gj5jHNiYmRrYWDQMoq5l0NEWYt/o6jVstOPA4Mt1swK6FG4+fPCjtBlBGgjUUq6qHkCSa+F1hJBw5o8u+dgkaN45hGVBrUCFII+J3U7Ee7Gw4+paCGWQAPLCrsAKFnyHQHnXrguhTFzg2CduhAgRgyZSNQPpOdQRtqBFgWFsevT5Y7xHF/4J72CIlf3nVr+Gj8ccYywoX/5q/k2OzI31eT35GL/AO2H7S11+9JsBdP3zmO4FEG43M3lK3z5Y+9mptXEZGP+0P8AgVH6Yh2Xk/0vmD/5jfmcBdjpv9IzC/8AXOQPLxmz+XywG/69BGA1HqfzG+WTRxEMoLMzNsK5ByepHnhDnuNZhpHC5iRFDMFXUfCL9nryw3has/HZ3LSH4al/jjGycNdu/fu5vaYqw2Ht9LU2OfL59MNhqGOvQRMViq6dTG68RzXTNN82xavF85/tZ/n4YBynDlUwI3egOtvqK6qJZfDabbUbN16YVw5dmWVgWDLyU+RKge7YnpzHqMVGHfT4kM5M0g4xnf8AagfeP/zi/JcZzZlQNmAVLAEAUaJo7164ykkDokehyS1nxGz029bs71Vb7YbZHJyLOh1IUEi795HdWPsatXwrAfCpSdPiZMW2AjzjnGs2MxMI8wFQOwVSLoAnbl+Huwufjee/2kfL/wDOKeO5KZsxMy6KMjVcsQPM9C4I+OFk2RnUWdFf+tF/z4VEtRtHd6Yia/svxfMGYrLOXXu5DQJWyFJ3qrHphNPxjOE2cyL9QbxHsYG75ySP6qQbMD9n0PvwPlODSoYpCpZFCsqmyrhiBpNEXfvxggzEaccRi5CKRzc+PxXNf7Qv7uA5O0WaBrvV+WHkPCcy/wBUhaOdjcb+yRGFIMYYkFV3O3Lw8txhdxDs9JJIzoERTQChwgFAKaF8iQTfriww1G4HxInGbgn5nQewudiGUyymdFO4KGRRXi5UTYwBxPjsKO8OtneSU6WVlZPFGqiyG35b7YA4RlOH5p9KZQqxveQqLIF1te9YHXL5BJgq5do5VavER4W6Hwk359emJM60RRjIhzA2JoewUyrmszqkVLaM8wh5Pd37R9d/LH3jvBg+S712QwrmJJG526u2kDUOQBprB3oYy/Ectk5JnkeE6ixs69mI21URtf8Ajtj4n0YLpEJ0+XegD5aThRiAAVfHTpHbDtibHMTRHLLO6Oo7mmCapNg/h9/vrlvzxQkEZy8DxxjvS9WHOp6s9TQ5VjWR8Ny+sAZdCSveAiUVVXf9Vz2/DFaQ5NAr/Rkq6H1qijsTv3XKjh/EKdri+HI5Es4lwNc5Jl1aQxt3GogAE1e/pzIHxxL/ALsI/wC3f91caDhmVLSxzKumNIu7Au61EsFBoagNJ3AxokB8jiAxHUACPiqC5P7tMHwzsfHlJO9WQsQrKQVA2Kny92HHZvPcNy2VSOeTLiYNvqQd5pMl2WqyNJ+WD+JyaPEb2JNWwsaW2tQTR5csZTiOby6IskmQifvCR/Waj4dt9UfL4nDIxLEtzAR/8wB1M0vDMxw6WeQq+XXwIFKjQp1s/egDSPFoCb1jM8Zj7+KVdhqkVGYA1YVVvc+KgALvp6YHi43lk3Thyr7pFXeuey4tknSWMPHD3Q70EqX7w3qFtqO/TkOVYLk6esfBAAbrRmM4gr5ZZMuCjA8zpIPiC8vFX4eeCM6v+bQe79cPeOZNJpqIJ+rSq57s2CMzw1AgXSe7XYcyPdfU46M406zk1MzPZnLspL2KI0116HEu0gA0j0OGwjVKCgDy9cLeL5hjGyrRDab68mvGBtrm4qUcEzOlR78azhvDYVy87xvKpMUjFRIdLHSea8jjO5DhZOXkat1TX7hex93TDXgWaMJEc8ZZZEXwhgC0cnh2IO2zeYIo8qxDHUn+p5nTguuzTR/0fcBhljdpl7wRT2qEnRq7qLxFeTEDYXfM4G/pUztSov8A5Y/4mxtODRCOFEFChZHvNi/MgbX6Y51/Sw3+cx+sI/4mwEGd7MzNlXSZXIRMa3Gm7r1ANY7TFw+Ux5cEBWi0lgT5XYBWwTvjjnDpOQ/nljvbyC6vc42MuY6xcPFKDScEnz8n0nMTQsyEuxsbEDV/Iwb2NmEc5nlJ3bduZJuya9+Nr26yEMOWk7qNUZnjLEDcjU1b+V3tyxhcmv1ddS/8MV0ZCK8pPvGVg3vHkOr6ckhD6WLldQ6GjsK934Y1vYZYcxHPGwLAHQ3TcMX2+Yxn+O+HM5dEukVl2J8lrl6YUR8Uy8LOofOxszEvokCgty2or4dqF2axILbewnQWJwtepm27N8LgzD5cuhLaTRDFTsde1epwk7V8IWLMTxQwSNHGKoOBdxqxINhttze/Mjbonj4rlkoiTPJp3BWQLQ/f5c8Vz8TyTEl/pbsebP3cjHpuzMWOwrn0xbDtVreczCzJTKVKqIn1Seye8jFffFCh91vW633AA4fk1M3eOmh43UUGDWRVkmqJPptiYm4cxAC5oncgaU8t/tVyGGsWXy0LqO7zA1MDzg03YAJ8Z2ur8xhsR7FRsNQCIwm7F5eYmVmk1SEsaK1Z8vDgTPdhMusbMrSWovdhuB05Y0uSn8A3F78qqrPKumJZ2S4ZK+4fyxzB2FC4r0WJmM7KxxRmZUL6xrI3UoYwjAnz1hiPSicaHsdne60wzRrIssYnTUNwaAWKivNide7VY9SRluzagTSFrH1Ul2ujY86LUD8MfJHyb0QM1sbGoqSPcQRimanY68ToABw1GnMcZqCWNZ59L2jimaJTVL0bWQu53oG/njSZ3PrlW7n26VfEqomo0AWIBIskEnlz5YwTR5Ugi81pJsgE18tVYskngY2z51j5sXJ+erGdwRpfxF7uzrXzFvD+KLGfExWzasOjdOu29b9MUJxaWXMRd5IsrawdYXQSL9nkL8+Vi+eCeC8NeSOZgptAKBUEsfIEsK9/r8MXDh4jkgtgSeY0ey16q1ajdnYGuXlitIAeskisWFDmBSyBc4xYhtz9W2oKRueYPP3eg9MS4c00kRCqNBkVS5A8LHcAHnVA8tvwxtuG9n8vmMxGqTzJMYy7BaUK1qNiU62wNE7YHl7PZfLwiRZJywm0KdaAEd73Reu79pQwIuufleAKKj0hcHOfUzP5eJ+/uKDVSeJSveIaHibxbXW9Dl0wOnDO7+iyau87zeRAGLJuKVgORIs1ttfljqSdk4lZklkndjEX1F4kZUA06QQoFAbb7CvLfH1+FIjRd3NJZDeFwPYK6tjXUmr5c65VhWbKJv7HSZbI5gRsj1NpEYAVI2dT7QAYhaU7irr3eTXh+alky8xXWZO+6Fg1VfgLDlQU1X2jg7gnEUi7/vJK+tNgN4iAxNgH9oDfA3HeIJNC8tNosKNMpV70qO82HSgRv1Ycuc8OqEfHP86J8okzDl8zK7gq5DIAPZKDk3U2aB6ddjjJ8WSQRwxVSRvpH3jrPIUK2ofPrjZS56MgxBV1UDrBNtzFc6oc/PxYxublhZIFExNSsXNgkKSrGqPiArbliuGCWJ8h+Y2MvdoFIO5/EEngn1SR6W+rDEqeYrSvz2HLDPswLVmYAuJtmoWNl5Hn1xTJNCZMywkaiDRtfEWa/D47rbpexOLezs57qRm599v79K4bFFJ8SeCbY+hjJs+Mw3cK8cTKJFWViY6a68T+jC1Ci9/M4LaJi6Rc2vu6U6rcsE2A6E0L9PLBGb7P5eKLKziLxyEM51E67V2Io7CzR/ncGAOMys0aKJFfWW3RVjNiRjRA2sGuh+NopVtBEOGwGaR7QdnDFJJC8jXG1RudmcVqJ1UdO1DmLsjFmQ4AZgpqNNag6fslmursnawNxeNJxgqz009jSLLU2rY+LqAd/ZBreuWCszwNsvBA0Z71QqrIVJ1LJGdShBo3BIK2SKoHfljHMx0gFAGcvmkbVKiOgilaOJiulRzWQCibVARpvYXtZ5Ydz5cieBnliYpAikuXVGVL+rUgEmQ2On5HDnjPBFmSebUR9fEuhljRdalYijMV7z2gRzo+RwtzWRWGeLulhIAHhk3vffSm+5NjxeGj0G2HzhjpxYgGHdA8y3O52SKXRJKgVwiZjbeQKGDqp0b+Fl2B8+W+KOJxDMTOzOAixCOEd0VoFbINkUBft1XzUYryMUc0s5lSViUdmkQ2YWbUSKOwAvahewvYnBXa/jRm7nNFaE6kKGPIsqISKYmgPGBXXcYK7xsp2g3CezLERPRVGChj1DWo0jn4rPlXvwdxifOS5+MCwyRalCKCobVpkIJFbqCefKsP+yHCXYM5lIUa20NqKju2rmtCgYzV7kHc4l2v0wrDOJCe9cKAhK2t0xIJF70CLApiThFu7j4ihWK+czOczE2ZzOZh+yZV0ActKSMB5gWu5PrilOCCLvI3Gl0bWCCbKCMaUoiq12b9fcSVwfigd5AtCbvljFBQ+kK2oMLJJU14rJ8FXtWNdxLTmM00SMUCxe0BZrSNiLA6jqeQwjvl3ioM1gTFdp31ZpBZrUeTFeg8jeMTm8rI8hLK56bKTW539rfaj8caTOSlpor5kE/8ONR2dy2Xmy2Zc94QO81XK63oBaiq7aQVBF+QHXd8Ow1eUL13Y9ZyySF/ACrhaokg86sjnv54omEik2pBvTvzPkD8/wAcdsymQy0ksPdO5ZY2WxNMCq2qhQSLqmcbeZJ5Yy3Ho8kITGrOsonq2eV1UgkBvECt6Rzvfnzx0zlzXrOdQx+EkFlYEDlVMeuq9sbBuM96sEJFNGyBbFPoJZiGJ3uyPhoxY/BlMbNq1BzYOjwykFiTYUWRR2u736jA8kYWcM3dEmNaK7jVagVufFVnniWIwIM6cFSGB6xzNxSHRJH4RL3YHeF9z4VBj08hRJOrz1Dpj5PIndJNFEiIyFI173vCK062JK3GSSebAkGhsd9XleJ5I5fLQ3AZlIZ1KEtdlTsviL2SRdjlYNjBvEOxn0jRJDNHH37CQkQg7aTS7MBWkVyvc+7E1rQRXGpnOsrNG2p1I1COQAWLC1uCv3gas31HneMeJyCGo+HbnyB3952GOn8e4Q2XjIJjbTqRmVNBd9JOogEgDTQPOyL9MZKDLgKzNoPfEAgKbIUKxG7UDVje/dywcJltpbFU92sW5kLUSiywHeOLGzA+d1yPIe7fnhNnW1OWK8/Xy2/THU+K9kxC0MiiPwIrINL7gkmrvc78gRsOl78yziiN2QqpIO5B2v54rhsp2nO4InSc52Wz0gPeSl26EyQsQLB02ZeW2FOU7ETxSLI52U6j4oTtdnYSEk73Q9cdUnaJ/Ajo5okgNutA77A7XX4Yy3E4lSMyGJCaLUVB3sbXuOv/AFx5q9ocigPtOsoqEEzP5Xhmcy+ZkmijifWK+tMTLXgI8PfAhhpHzxPOvxORGjYQaWl7013QOvXr597dWBt5AeWLozHekLGCaoFQNR2/Hp8MFKkJrS0DAczS0o6Eea+vqfPFD2h10r6RCFJv8xhkO0nEA5eWKEtpAXQYUrc2Tqka728sQl4lnZHjLww1GG06XRDqYVbHv/EAPQDnthJnJMt4gQrG1AKrYO4B5AVz9evliMWcRzaQoI9P2wg392kH/rgF3YXUKsi7RxkMpKG1tba1IfQYb7yzqoPJRXfZvlhFxbsxmpNaIqiMyLIC3cGWwoXdxJ6Xt54IMkSmlhiDFT7Ea2BQvkPXAuXk8XiVV3r2F393T/pgozrqJnZHNmfeD9ksxHKHkLFQpXcxkgtyoCUnmOeKf+xWZKIpQWBTFWiB2FbN3tkDy5c654Z5WNXO8cR8ejdATdWOhGJtIFJXuYwVQPuq1Rog7DlRvB77EvaFirDWIc12EzFkIKTnTvHfI0dpueLI+DTRRtAY/rnII+tj50AOVoL09W9/PF3AsyJLDd0peT2mChbKJ4Rt94laHM4Jl4dJQYw/VmRVLg6V9qj4dNnfawa9+KM7/wBTBhhNT5GR4dw3iKvCZtUsUJFIZIea7Cjr6cuZ64I45FnJJxImX0oFoqzRtZvntMu1Vtfnd4yeaSa3cOyRKQaQEqOYPPYNtddb5jBOSz+pQDqrlqK0L5e1+tD86cqwObSIHFZdajXLniCo8bx6lYja47FMDz77y2s3W2H3aXjks2WWCLLOjLIH1O0LiqYEUJBvbc/fjNZXiqMpGlaU0NQHi9BsdzR2w54Z9HeJnl0KdIKLpXnp1H/VkEbjaxyO9kYQtiD/AJH77xaw/P5iotn+6MKqAgkWQbR3atrH2/vAbXyBxKGLPNmFnmgWUqukLaIK1Br5t19MarJ5XLtoCCJ7FkhQoFdPFHsfjgDiphDUAikFhRA3IsbEAAjrZHliXf4imsoHtHyoddfmZ7inZzMTzyzCHuxINOgGNgvgC3drzI1cuvxwZxHgudny+Ty/caRlVkGrvA3eB2VuVDTWkdTfpgqeNBeiIMtXfdgkg1XMGute4YE+mLGbMKkWOUSKN/eB5YcdoxDsBBlS+Y5iyvFEjeKIBUZCoG1izZNh97tvmPcas5w3isnclgD3N0diTZFglmO1ACv7x64GTPg617kDSQG8Kkbixutg35e/ywHPPETvGl/3R/DAXGccRsSmJJO8hF2Q4ipZu7Qu0neajWq9RbzrmfxONFPFn0YGDJwRjRpOgFSx9afGX7wNUSIuhmBcV4R+3p5E4b9leDZWaNjLGSwPhosPtAbgGq9Kw5Yt/aog8ong4VmYjEMxGTptQ5cDcm9J2Y8lHTzx8y3BeJBZRCHjjmJJAPtKwq9geY67e4Y+ZuGOKRJkUGNrC6XC7gnnSmjtXLCVuMR/ZiRRq8TSRhwPiDz5nFFLkkiZsuQAxzDwbi0bBkdlYCrCHl/7fpj2X4BntQMsQnW7KSRvR9bVQThN2pnhqP6PVMN6CBr3seHpyr3Hc9KOCEpIwlW/DsGphz59d8PblM34ksqA1U30cOcRAseSRKZWXSs3gIYNS9Olee5w2zYabLEPlmTMFxv3LadI02xc2bq/M7fLENJF/Zr8sU97H90fl+uOYM0qMoImq7JjM5SSWUZR5hKpA06lUq5U2fqzZ8I36g9MGZjtHxi10xIgViV+olZgDqAUkim2POhjGidPL8z+uLEmQkDSN8YMwNxiVO80E/0yaJzmFo+NiRG6AswCjbkfZAG3U74z2Y4Fm7cFXUVSgRP4um5A25eo2x8XNR2QtahzAJsfI1vixc6nly8yf44GZwSa+kfvEKheJPiPC81KIhK0zBSC2mBlK7nYEKdW3u6YV5jsvIzEhJ6P3o3vkOfgwYeKDdg6qBtp8Wrr4rFjT0qrvle9Lsx2ocGvF+VelViinF4AiE4XNyzh3a+TUxihgjOmiQrEkHmLL3f574bcN4xncw31aw2tAamK81vk0nS6+PphRkuyxVjc0IAAvU53DAHkq3YBF+V+uCuDIA9KwYDqOWLMqbgTnBYnUy7imezke0gjNCyV1OFo8j49I3rlz8zhYeITodWldVbWr7irFEty9222DuOuusKzVtR8VAWDRPQ7gc/wwM0QDj2WIXajauRdtsR1rqLoYyhSNRCb4MlHx7MICoSL1JSz0O5LEnbzvqMK85x+UE6lUk8+YJBvY77j05YOTLqNPeClBtiSu45VsT59R1wuzuSRmLK6hQdhsfmb/TDqidIhLQiLtDMBp0p4h1Y8t+urarO3S8EZfta66nMEbalK7nrz1VXr8ceQLrRi6UEo1p56SPlZ+W3risqgjChk1BmP2eRAAvf3+WDlXpBZheX7ZyREqYI2KksCWYhW5ahXhsb7gdT5YFn7ZSnUSgDOhQsDRAPXYDcXgXieTWSRmWRQCdh4RtZrkQCfWvzwLNwu7PeJfwr8MHInSHMwnzIz6FDd5VeJUZWbfcar5CtyD5gY6XHl3jjg+kSRs4fU5Dl2u7N+GtifP3bY5XPlGGlfCaHMHbmT578/LG/4vxGFjHqmQ1ISSvKq51ZNYl2kWVqX7Oau46LCPhjESIJGklkYBhYp2Ubc+Sg7jGI4plGj7pYo3LOAGV2U7ncewRQocm6qfLbSxcYy/wBHijkZSEskbGx3hbQRzpuvocLOOcXifMM0BhUCLSCtRL8vDbc+W9bb8gmECL0memoSXE45jlkKxrcegitgpJbnZ3sAb9fD54Ey0Mqsqu/gsEjQPYGx0ixvQPM88SmzZBDFlNKHYLbIx8S6tY2C3t7Q/M40OaXQFRnKlUB5WzbCtJvTVlhsaOna732YqKreM6gm7lk+aE8JWBXSUXpLaVVyTuDty5GhVc7woXs7njC8ijW52Me4JF0Sp1jbryrbC/NcbZX0o5ABJbT53RIUm7JoV5+WJ8J7TRaCs5Ykk7FmqiwN7NV9eX6YYKwG0na3vGnB+y2YdSJx3MhdFjUkUVsGSQkA7KoNURvV3eG44Rl2kRo5pn0yALr0hb1Eiy3OxG1gAHlvjO8f49BMEWApGIxbFmI1nS40iyf2bog79eeFc2cTUrxSxIRobTqOnWoazvZO5G5+VbY2Qka6GYEA6azVZrIE5zMSFXWNp1WMpdMz0SR0YKbAr15nEc5wydcvqtmPhsm1IvTZA33B2JsciduqiLj6RRRBJI2YMCwQWb0+1ZA2BGxuwSMafhfayF41LzIhOzI7qp2JvbVYHUEc76YnkYm6hNbRDFl2Ri/gYBvHrLW1V4VqjvyvyPxDvgc+iULEnd3bBTbhSVBo2bIDMb36c8Ccc45lCCQ1gtvoNsRvZHXywoz/AGkR3DRhqCgb7WwG96tjYUem+MVJIGWYEDW4k7WRmLMTizaOoHIbultsPXC6fKssIOpiG+zVrfvxPihaZ3kNjWwbTY2oV+WITQsY1XTyvfrjrGlSN7x3w3s+8saSeBCdwQFHxvWGBHu2PLC3P5NoJTGSCQBuDfPerJw64bxiSNEAC7KBuWJ2Ffewj4mWkmkc82N7HblX6YkpYsQdpRsoUVPv0g11xDvT5nFa5Y+vzxcuS8yfnhqAk9Z7vj54rkzB88ELw2+p+f8AhiR4T6t8z/y4H8YdZ6PiTlEohWSwGoWbNA+h52R6VWGOT7QTylYlbTGxoABSRQAA5UDQC6tPrXTFfCcogeNWjVhqAtgG9rUNwVo7sDZs+EDltj5x3JaMwyxgKgIFUautyRY88YhCaImFgXCs9wFo5hEaLGmVoX1NvZNkFdxpOwFCxviQ7PXZaKR2J3Z1kLE+tSVhvE7yXmDNFFIho6VYruAobYsLIIFBRvfXG14BwaV4g0kr6iTf1Z/jiLuRsZZAtaicv4vkGjfToYmt2FnwKNmqtiDYPoF88EZKBY36KDRon7VAtzPmfliL8Sm0ONUni2vUb3q7Pkawu8RIsk++8OGsUYpXWN8rMrTvoCs232Vk6biiD5dMSmyaysZAtFV30LSqLNsV5C7AJ5csJkZg4IZhW+x2+XLHsnG6q66mplo73Qu9r5e8UcD3hAMc5jg8cwaPvDHyHslkoaW1e1qvpW97n0wN/wB3jP3fdMxBvVIVCrt5LZbb8fIdX3Z493FSFhqIJN0bAI9/XDtc7IAKmkH++R+uJd+V0Er3IbWc5f8Ao/zdnTExAJ3uMA7893B354pbsHmxzhb96L/nx1SLPz/28n77fxxJs9PX9fJ++f44YdrMU9mnKB2GzX9k3zj/AOfBmR7ASs6iTVGhNFgqtQ86Db46GeITX/Xyfvn+OJfTMx/ayH3uf44HizG8LOdZn+j+RSwUuwHXSov5ttijh3YyQoe9jlDajQUpVUN+u938sdJOan/tHP8AvHETm5Ort87/AMcbxZg8LMC3YcVeie+g8P51gCXsi4O0Mx/3l/5cdHfNN5t88DyZvfcn54YdpMB7MIFkIpUOXQBgI4wGMhNFgBporWkLuornZJ57EZckmQ03ePQ1qNTx8/FqeyPhRA2B2sTmzhsUTy88fGzpra9+eEOJZupTu/45bifsl2bieYtmFs6iG7wab2Yk8+pAJPkxG9G0/aDsqO9YQqSDpI0bqBpF7ncsWN+gHW9tUk5G4sH44ks2wHr/AIYfvzdyfcDac9/7Kz8hFJfltiMnZmZTTROCPdjpCvvf8MRzMnKsbxLQ+GE51H2XnblDIfh/hi//ALGZm6MD/vLjomWl9cEyS+/CntTTDsqzmUfZCY39VJt6r/DBsfYaXTusgN7igSK69Nt8bqPM9BYwQuZboxHxwPFPD4VZzt+xcgJGmQi+dL86wXB2BZkLDvNiNtI3FHcGuhob+Z8sbJ5GP2vxwZk3YCtbfvHG8U03hRMFlv6OpWdQUlUEi20g6R511xRmuwEqk6UkYXsaAvHU4ZmHJ3/eP8cVyTP95vmcHxRieGnKZuwuYBpYnb1tR+YxKP8Ao8zhFjLvXnqj/jjqC5h/vN88ELM93rN+d743jDG8LOY5T+jLOOpZoym4ABKsT5t4eg+fpgaf+jnPrzyspA6goQfxx2KGd/vHBC5iQfbPzxh2zyi+F85xOHsjJFG086mMRnZWIBJFEcgQeu1jkfS6+O9mJjLNJHE7x94/iUbKdRGk7c+R9zDHbM1mmZSGOoeRCkfIisRgzB30lVs2QFQWfPYc/XGHa+YT2U7TmHF4SYBHCoW0j1IqqpEqspIJAFsNQG+34V8zeTnSR1WMVq6qt3tjpveMTbaD5ao0O9gitvQH4DBoy7v4i0d/3FxM446Ru5InHJeWBJPax7HsVWKZOL28HZfrj7j2A0Kxtw7kPecMsex7HO0usLy+JNj2PYmJQyEfLEGx7HsLHlrc8DDr7v1x7HsETSM+KPL+euPY9iiyZlc+B15Y9j2KxJYuJ49j2FhEngefHsewo3hMs4fhjj2PYVoyyEvL44pPXHsewBM288vPB+V5DHsewDNxDosUz49j2CYglZ64JTHsewkoIxhxceWPY9gCKd4FmcVx49j2CJSW9DhxkvZGPY9gmTM//9k="></img>
        
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
   alert("Went to cart");
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
      $('#mycart').empty();
      for(var i=0;i<mycart.length;i+=4){
         for(var j=0;j<drinklist.length;j++){
            if(drinklist[j]==mycart[i]){
               const table = document.getElementById('mycart');                 
                 // ì   í  (Row) ì¶ ê° 
                 const newRow = table.insertRow();
                 var img=document.createElement('img');
                 img.src=mycart[i];
                 img.height=183;
                 
                 // ì   í  (Row)ì   Cell ì¶ ê°                              
                 const newCell1 = newRow.insertCell(0);
                 const newCell2 = newRow.insertCell(1);
                 const newCell3 = newRow.insertCell(2);
                 const newCell4 = newRow.insertCell(3);                 
                 
                 // Cellì   í  ì ¤í ¸ ì¶ ê°    
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