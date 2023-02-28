<%@ page language="java" import="com.employee.EmployeeDAO" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
int status=EmployeeDAO.deletebyID(id);
if(status!=0)
{
	response.sendRedirect("EmployeeList.jsp");
}

%>