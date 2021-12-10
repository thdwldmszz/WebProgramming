package jsp.tutorial;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;


public class SearchDrink {
	public SearchDrink() {
		// TODO Auto-generated constructor stub
	}
	
	public List Searchwhisky()
	      {
				
		List whisky=new ArrayList();  //make list
		
	    String whiskyqueary="SELECT * FROM whisky"; // where information of drink is
	    	    
	    try{
	    	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
	        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
	                           "user=root&password=root");
	    	try{
	    	 Statement st = conn.prepareStatement(whiskyqueary);
	    	 ResultSet rs = st.executeQuery(whiskyqueary);
	    	 while (rs.next()) {
	    	  List drink=new ArrayList();
	    	  drink.add(rs.getString(1));
	    	  drink.add(rs.getString(2));
	    	  drink.add(rs.getString(3));
	    	  drink.add(rs.getInt(4));
	    	  whisky.add(drink);
	    	}
	       }catch (SQLException s){
	    	 System.out.println("SQL statement is not executed!");
	      }
	    }
	    catch (Exception e){
	      e.printStackTrace();
	    }
	  	return whisky;
  }
	/////////////////////////////////////////////////////////////////////////////////////
	
	public List Searchgin()
    {
			
	List gin=new ArrayList();  //make list 			 	     
	String ginqueary="SELECT * FROM gin"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(ginqueary);
  	 ResultSet rs = st.executeQuery(ginqueary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  gin.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return gin;
}
	///////////////////////////////////////////////////////////////
	
	public List Searchrum()
    {
			
	List rum=new ArrayList();  //make list 			 	     
	String rumqueary="SELECT * FROM rum"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(rumqueary);
  	 ResultSet rs = st.executeQuery(rumqueary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  rum.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return rum;
}
	////////////////////////////////////////////////////////////////////
	
	public List Searchbrandy()
    {
			
	List brandy=new ArrayList();  //make list 			 	     
	String brandyqueary="SELECT * FROM brandy"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(brandyqueary);
  	 ResultSet rs = st.executeQuery(brandyqueary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  brandy.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return brandy;
}
	//////////////////////////////////////////////////////////////
	
	public List Searchtequila()
    {
			
	List tequila=new ArrayList();  //make list 			 	     
	String tequilaqueary="SELECT * FROM tequila"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(tequilaqueary);
  	 ResultSet rs = st.executeQuery(tequilaqueary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  tequila.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return tequila;
}
	///////////////////////////////////////////////////////////////////////
	
	public List Searchwine()
    {
			
	List whine=new ArrayList();  //make list 			 	     
	String whinequeary="SELECT * FROM whine"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(whinequeary);
  	 ResultSet rs = st.executeQuery(whinequeary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  whine.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return whine;
}
	/////////////////////////////////////////////////////////////////////
	
	public List Searchbeer()
    {
			
	List beer=new ArrayList();  //make list 			 	     
  String beerqueary="SELECT * FROM beer"; // where information of drink si
  	    
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/drinks?" + 
                         "user=root&password=root");
  	try{
  	 Statement st = conn.prepareStatement(beerqueary);
  	 ResultSet rs = st.executeQuery(beerqueary);
  	 while (rs.next()) {
  	  List drink=new ArrayList();
  	  drink.add(rs.getString(1));
  	  drink.add(rs.getString(2));
  	  drink.add(rs.getString(3));
  	  drink.add(rs.getInt(4));
  	  beer.add(drink);
  	}
     }catch (SQLException s){
  	 System.out.println("SQL statement is not executed!");
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
	return beer;
}

}
