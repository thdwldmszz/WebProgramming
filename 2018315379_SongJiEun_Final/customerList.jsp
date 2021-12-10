<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Final Project</title>
    <link rel="stylesheet" href="css/master2.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  </head>
  <body>

    <div class="top-menu">
      <p><b>SKKU WHISKY AND MORE</b></p>
      <p style="margin-left:-8.5vw;">for sellers</p>
      <a id="homeM" type="button" name="button" href="seller.html">HOME</a>
      <a id="addProduct" type="button" name="button" href="addItem.html">ADD PRODUCT</a>
      <a id="customerList" type="button" name="button">CUSTOMER LIST</a>
      <a id="logoutM" type="button" name="button" href="buyers.html">Log out</a>
    </div>
    <div class="listBox">
      <center>
          <table id="customerTable" class="customerTable" cellpadding="10" cellspacing="0">
              <thead>
                  <tr>
                      <th colspan="5">CUSTOMER LIST</th>
                  </tr>
                  <tr>
                      <td>FIRST NAME</td>
                      <td>LAST NAME</td>
                      <td>GENDER</td>
                      <td>ID</td>
                      <td>EMAIL</td>
                  </tr>
              </thead>
              <tbody>

<%@ page import ="java.sql.*" %>
<%
    try{

        Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/memberlist?" + "user=root&password=wldms71999");
        String sql ="select * from user_table";
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        while(rs.next()){
        	String occ = rs.getString("Occupation");
        	if(occ.equals("Customer")){
        		
%>

<tr>
<td><%=rs.getString("FirstName") %></td>
<td><%=rs.getString("LastName") %></td>
<td><%=rs.getString("Gender") %></td>
<td><%=rs.getString("ID") %></td>
<td><%=rs.getString("Email") %></td>
</tr>
<%
}       	
}
conn.close();
    }catch(Exception e){
       out.println("Something went wrong !! Please try again");
   }
%>

              </tbody>
          </table>
        </center>
    </div>

    <div class="copyright">
      <p>Copyright@2021 WoojinKim & JieunSong</p>
    </div>
  </body>
</html>
