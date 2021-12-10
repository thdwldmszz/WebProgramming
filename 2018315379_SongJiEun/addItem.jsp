<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Final Project</title>
  <link rel="stylesheet" href="css/master2.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="js\script.js" type="text/javascript"></script>
</head>

<body>

<%@ page import ="java.sql.*" %>
<% String name="";
    try{

        name = request.getParameter("productName");
        String image = request.getParameter("productImage");
        String category = request.getParameter("productCategory");
        String price = request.getParameter("productPrice");
        String type = request.getParameter("productType"); 
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL databadse connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drink?" + "user=root&password=wldms71999");
        String sql="";
        switch (type){
        	case "beer":
        		sql = "insert into beer(image,category,name,price) values (?,?,?,?)";
        		break;
        	
        	case "brandy":
        		sql = "insert into brandy(image,category,name,price) values (?,?,?,?)";
        		break;
        		
        	case "gin":
        		sql = "insert into gin(image,category,name,price) values (?,?,?,?)";
        		break;
        		
        	case "rum":
        		sql = "insert into rum(image,category,name,price) values (?,?,?,?)";
        		break;
        		
        	case "tequila":
        		sql = "insert into tequila(image,category,name,price) values (?,?,?,?)";
        		break;
        		
        	case "whisky":
        		sql = "insert into whisky(image,category,name,price) values (?,?,?,?)";
        		break;
        		
        	case "wine":
        		sql = "insert into wine(image,category,name,price) values (?,?,?,?)";
        		break;	
        }
        
        PreparedStatement ps = null;
        ps = conn.prepareStatement(sql);
        ps.setString(1,image);
        ps.setString(2, category);
        ps.setString(3, name);
        ps.setString(4, price);
        int i=ps.executeUpdate();

        if(i==0)  {
        	
           }
   }
   catch(Exception e){
       out.println("Something went wrong !! Please try again");
   }
    
    String move = new String("seller.html");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", move);
%>

</body>

</html>
