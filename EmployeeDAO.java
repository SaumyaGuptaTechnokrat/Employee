package employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.employee.ConnectionProvider;



public class EmployeeDAO {
	public static int save(Employee e) throws ClassNotFoundException, SQLException {
		Connection con = ConnectionProvider.getConnection();
		//Statement s = con.createStatement();
		PreparedStatement ps= con.prepareStatement("insert into `Employee_table`(fName, lName, age, Gender, salary, Doj,City, Country) values(?,?,?,?,?,?,?,?);"
				+ "");
		ps.setString(1, e.getFName());
		
		ps.setString(2, e.getLName());
		ps.setInt(3, e.getAge());
		ps.setString(4, e.getGender());
		ps.setString(5, e.getSalary());
		ps.setString(6, e.getDoj());
		ps.setString(7,e.getCity());
		ps.setString(8,e.getCountry());

		int status = ps.executeUpdate();
		return status;
	}
	public static List<Employee> getAllEmployee() throws ClassNotFoundException, SQLException
	{
		
		List<Employee> empList=new ArrayList<Employee>();
		Connection con=ConnectionProvider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from Employee_table;");
		
		while(rs.next())
		{
			
			Employee e=new Employee();
			e.setId(rs.getInt("emp_id"));
			e.setFName(rs.getString("fName"));
			e.setLName(rs.getString("lName"));
			e.setAge(rs.getInt("age"));
			e.setGender(rs.getString("Gender"));
			e.setSalary(rs.getString("salary"));

			e.setDoj(rs.getString("Doj"));
			e.setCity(rs.getString("City"));

			e.setCountry(rs.getString("Country"));
			empList.add(e);
			
		}
		
		return empList;
	}
	public static List<Employee> search() throws ClassNotFoundException, SQLException
	{
		
		List<Employee> empList=new ArrayList<Employee>();
		Connection con=ConnectionProvider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from Employee_table;");
		
		while(rs.next())
		{
			
			Employee e=new Employee();
			e.setFName(rs.getString("fName"));
			e.setLName(rs.getString("lName"));

			empList.add(e);
			
		}
		
		return empList;
	}
	public static List <Employee> search(String fName) throws ClassNotFoundException, SQLException {
		List<Employee> empList= new ArrayList<Employee>();
		Connection con=ConnectionProvider.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from Employee_table where first_name =?;");
		Employee e = new Employee();
		ps.setString(1, fName);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Employee e = new Employee();
			e.setId(rs.getInt("emp_id"));
			e.setFName(rs.getString("fName"));
			e.setLName(rs.getString("lName"));
			e.setAge(rs.getInt("age"));
			e.setGender(rs.getString("Gender"));
			e.setSalary(rs.getString("salary"));
			e.setCity(rs.getString("City"));
			e.setCountry(rs.getString("Country"));
			empList.add(e);
		}
		
	}
	public static int delete(int id) throws ClassNotFoundException, SQLException {
		Connection con=ConnectionProvider.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from Employee_table where emp_id=?;");
		ps.setInt(1,id);
		
		int status=ps.executeUpdate();
		return status;
		
	}
	public boolean updateBook(Employee e) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE Employee_table SET fName = ?, lName = ?, age = ?";
        sql += " WHERE emp_id = ?";
		Connection con=ConnectionProvider.getConnection();

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, e.getFName());
        statement.setString(2, e.getLName());
        statement.setInt(3, e.getAge());
        statement.setInt(4, e.getId());
         
        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
        return rowUpdated;     
    }
}
