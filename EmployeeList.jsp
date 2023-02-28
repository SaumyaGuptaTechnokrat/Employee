<%@ page language="java" import="com.employee.Employee,com.employee.EmployeeDAO,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <STYLE>
  TD A
  {
   display:inline-block;
   margin:8px;
  }
  </STYLE>
</head>
<body>
<%
int i=0;
out.print("<table align='center' class='table'><tr><th>Sr. No.</th><th>Employee ID</th><th>First Name</th><th>Last Name</th><th>Salary</th><th>Department</th><th>Action</th></tr>");
for(Employee e:(List<Employee>)EmployeeDAO.getAllEmployee())
{
	out.print("<tr>");
	out.println("<td>"+(++i)+"<td>"+e.getId()+"<td>"+e.getFname()+"</td><td> "+e.getLname()+"</td><td>"+(e.getSalary())+"</td><td> "+e.getDepartment()+"</td>");
	out.print("<td><a class='btn btn-danger' href='delete.jsp?id="+e.getId()+"'>Delete</a>");
	out.print("<a class='btn btn-warning' href='update.jsp?id="+e.getId()+"'>Update</a></td>");
	out.print("</tr>");
	
}
out.print("</table>");
%>
<a href="index.jsp">Home Page</a>
</body>
</html>