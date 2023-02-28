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
int id=Integer.parseInt(request.getParameter("id"));
Employee e=(Employee)EmployeeDAO.getEmployeeById(id);
%>
<a href="index.jsp">Home Page</a> | <a href="EmployeeList.jsp">Employee List</a>
<form action="updateRecord.jsp" method="post">
<input type="hidden" value="<%=e.getId() %>" name="id"><br>
  First Name: <input type="text" value="<%=e.getFname() %>" name="fname"><br> 
  Last Name: <input type="text" value="<%=e.getLname() %>" name="lname"><br>
  age: <input type="number"  value="<%=e.getAge() %>" min="18" max="100" name="age"><br>  
  Gender 
  <%
  if(e.getGender().equals("M"))
  {
	  out.print("<input type='radio' name='gender' value='M' checked>Male");
	  out.print("<input type='radio' name='gender' value='F'>Female<br>");
  }
  else if(e.getGender().equals("F"))
  {
	  out.print("<input type='radio' name='gender' value='M'>Male");
	  out.print("<input type='radio' name='gender' value='F' checked>Female<br>");  
  }
  %>
   
         
  Salary: <input type="number" value="<%=(e.getSalary())%>" name="salary"><br>
  Date of Joining <input type="text" value="<%=e.getDoj() %>" placeholder="YYYY-MM-DD" name="doj"/><br/>
  Country : <select name="country">
  <option value="US">US</option>
  <option value="UK">UK</option>
  <option value="INDIA">INDIA</option>
  
  </select><br>
  City: 
  <select name="city">
  <option value="Lucknow">Lucknow</option>
  <option value="NY">NewYork</option>
  <option value="London">London</option>
  
  </select><br>
  Department: 
  <select name="deprt">
  <option value="IT">IT</option>
  <option value="Finance">Finance</option>
  <option value="Manufacturing">Manufacturing</option>
  <option value="Sales">Sales</option>
  <option value="Management">Management</option>
  
  
  </select><br>
  <input type="submit" value="Update">
</form>
</body>
</html>