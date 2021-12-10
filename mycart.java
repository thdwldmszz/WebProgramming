package jsp.tutorial;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class mycart {

	public mycart() {
		// TODO Auto-generated constructor stub
	}
	
	public List Myinfo(String ID)
    {
			
  List myinfo=new ArrayList();  //make list
	
  String myinfoqueary=" SELECT * FROM user_table Where ID='"+ID+"'"; // where information of info 
  
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/memberlist?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(myinfoqueary);
  	 ResultSet rs = st.executeQuery(myinfoqueary);
  	 
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getString(4));
  	  drink.add(rs.getString(5));
  	  drink.add(rs.getString(6));
  	  drink.add(rs.getString(7)); 	  
  	  myinfo=drink;
  	
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return myinfo;
}

}
