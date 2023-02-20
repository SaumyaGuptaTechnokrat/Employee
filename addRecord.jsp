<%@ page language="java" import="employee.Employee,employee.EmployeeDAO" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String fName=request.getParameter("fName");
String lName=request.getParameter("lName");
int age=Integer.parseInt(request.getParameter("age"));
String Gender=request.getParameter("Gender");
String salary=request.getParameter("salary");
String Doj=request.getParameter("Doj");
String City=request.getParameter("City");
String Country=request.getParameter("Country");
Employee e=new Employee(fName,lName,age,Gender,salary,Doj,City,Country);
int status =EmployeeDAO.save(e);
if(status!=0){
	response.sendRedirect("EmployeeList.jsp");
}
%>
</body>
</html>