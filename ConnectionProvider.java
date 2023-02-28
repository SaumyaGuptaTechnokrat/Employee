package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
public static Connection getConnection() throws ClassNotFoundException, SQLException {
	Connection con=null;
	
	 Class.forName("com.mysql.cj.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makecareer","root","54321");
	 return con;
	
	
	
}
	
}
