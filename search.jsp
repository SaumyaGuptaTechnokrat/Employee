<%@ page language="java" import="employee.Employee,employee.EmployeeDAO,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

for(Employee e:(List<Employee>)EmployeeDAO.search())
{
	out.println("<input >");
}

%>
</body>
</html>