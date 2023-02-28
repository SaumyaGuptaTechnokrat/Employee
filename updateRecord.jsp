<%@ page language="java" import="com.employee.Employee,com.employee.EmployeeDAO" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
int age=Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
double salary=Double.parseDouble(request.getParameter("salary"));
String doj=request.getParameter("doj");
String country=request.getParameter("country");
String city=request.getParameter("city");
String dep=request.getParameter("deprt");

Employee e=new Employee(fname,lname,age,gender,salary,doj,country,city,dep);

int status=EmployeeDAO.updatebyID(e);
if(status!=0)
	response.sendRedirect("EmployeeList.jsp");
else
{
	out.print("Somthing went wrong");
	}
%>