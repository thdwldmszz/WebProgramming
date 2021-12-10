<!DOCTYPE html>
<html lang="en" dir="ltr">


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
<meta charset="utf-8">
    <title>Final Project</title>
    <link rel="stylesheet" href="css/master2.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="js\script.js" type="text/javascript"></script>
      <script src="https://unpkg.com/sweetalert@2.1.2/dist/sweetalert.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>

<%@ page import ="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>

<% String firstName="";
    try{
        String id = request.getParameter("loginIdM");
        String password = request.getParameter("loginPassM");
        String registerNum = request.getParameter("loginReg");
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/memberlist?" + "user=root&password=wldms71999");
        PreparedStatement pst = conn.prepareStatement("Select ID,Password,RegisterNumber, FirstName from user_table where ID=? and Password=? and RegisterNumber=?");
        pst.setString(1, id);
        pst.setString(2, password);
        pst.setString(3, registerNum);
        ResultSet rs = pst.executeQuery();
        if(rs.next()){
           String move = new String("seller.html");
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
        	    location.replace("loginManager.html");
        	})
        	</script>
        	<%
        }
   }
   catch(Exception e){
       out.println("Something went wrong !! Please try again");
   }
%>

</body>

</html>
