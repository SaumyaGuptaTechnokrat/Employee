package employee;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
public class ConnectionProvider {
	public static Connection getConnection() throws ClassNotFoundException,SQLException {
		Connection con =null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","12346789");
		return con;
	}
	


}
