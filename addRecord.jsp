<%@ page language="java" import="com.employee.Employee,com.employee.EmployeeDAO" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String fname=request.getParameter("fname");
  String lname=request.getParameter("lname");
  int age=Integer.parseInt(request.getParameter("age"));
  String gender=request.getParameter("gender");
  int salary=Integer.parseInt(request.getParameter("salary"));
  String doj=request.getParameter("doj");
  String country=request.getParameter("country");
  String city=request.getParameter("city");
  String dep=request.getParameter("deprt");
  
  Employee e=new Employee(fname,lname,age,gender,salary,doj,country,city,dep);
  if(EmployeeDAO.save(e)!=0)
  {
	  response.sendRedirect("EmployeeList.jsp");
  }
%>
</body>
</html>