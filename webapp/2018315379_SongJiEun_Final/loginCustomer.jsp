<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/master2.css">
  <title>Web programming</title>
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <script src="woojin-js/jquery-3.5.1.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="woojin-js/scriptFull.js"></script>
  <script src="https://unpkg.com/sweetalert@2.1.2/dist/sweetalert.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>

<%@ page import ="java.sql.*" %>
<% String firstName="";
    try{
        
        String id = request.getParameter("loginIdC");
        String password = request.getParameter("loginPassC");
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/memberlist?" + "user=root&password=wldms71999");
        PreparedStatement pst = conn.prepareStatement("Select ID,Password,Occupation from user_table where ID=? and Password=? and Occupation=?");
        pst.setString(1, id);
        pst.setString(2, password);
        pst.setString(3, "Customer");
        ResultSet rs = pst.executeQuery();
        
       // String sql ="select * from user_table where ID= '"+id+"'";
        //Statement statement = conn.createStatement();
        
        
        String sql ="select * from user_table";
        Statement statement = conn.createStatement();
        ResultSet rs2 = statement.executeQuery(sql);

        if(rs.next()){ 
            while(rs2.next()){
            	if(id.equals(rs.getString("ID"))&&password.equals(rs.getString("Password"))){
            		session.setAttribute("infoFName",rs2.getString("FirstName")); 
        			session.setAttribute("infoLName",rs2.getString("LastName"));
        			session.setAttribute("infoSex",rs2.getString("Gender")); 
        			session.setAttribute("infoID",id); 
        			session.setAttribute("infoEmail",rs2.getString("Email"));
            	}
            }
            
	        String move = new String("../final-project/buyers.jsp");
	        response.setStatus(response.SC_MOVED_TEMPORARILY);
	        response.setHeader("Location", move);
    	}
        else{
        	%>
        	<script>
        	swal({
        	    title: 'Error',
        	    text: 'Please check you ID or Password',
        	    icon: 'error',
        	    confirmButtonText: 'OK'
        	})
        	.then(() => {
        	    location.replace("loginCustomer.html");
        	})
        	</script>
        	<%
        }
   
    conn.close();
    }catch(Exception e){
       out.println("Something went wrong !! Please try again");
   }
%>


