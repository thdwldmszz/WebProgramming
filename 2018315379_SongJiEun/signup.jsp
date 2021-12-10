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
<% String firstName="";
    try{

        firstName = request.getParameter("signupFirst");
        String lastName = request.getParameter("signupLast");
        String gender = request.getParameter("gender");
        String id = request.getParameter("signupId");
        String email = request.getParameter("signupEmail");
        String password = request.getParameter("signupPass");
        String occupation = request.getParameter("occupation");
        String registerNum = request.getParameter("signupReg");
        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL databadse connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/memberlist?" + "user=root&password=wldms71999");

        String sql = "insert into user_table(FirstName,LastName,Gender,ID,Email,Password,Occupation,RegisterNumber) values (?,?,?,?,?,?,?,?)";
        PreparedStatement ps = null;
        ps = conn.prepareStatement(sql);
        ps.setString(1,firstName);
        ps.setString(2, lastName);
        ps.setString(3, gender);
        ps.setString(4, id);
        ps.setString(5, email);
        ps.setString(6, password);
        ps.setString(7, occupation);
        ps.setString(8, registerNum);

        int i=ps.executeUpdate();

        if(i==0)  {
        	
           }
   }
   catch(Exception e){
       out.println("Something went wrong !! Please try again");
   }
    
    String move = new String("mainPage.html");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", move);
%>

</body>

</html>
