<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
</head>
<body>
<a href="index.jsp">Home Page</a> | <a href="EmployeeList.jsp">Employee List</a>
<form action="addRecord.jsp" method="post">
  First Name: <input type="text" name="fname"><br> 
  Last Name: <input type="text" name="lname"><br>
  age: <input type="number"  min="18" max="100" name="age"><br>  
  Gender <input type="radio" name="gender" value="M">Male 
         <input type="radio" name="gender" value="F">Female<br>
  Salary: <input type="number"  name="salary"><br>
  Date of Joining <input type="text" placeholder="YYYY-MM-DD" name="doj"/><br/>
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
  <input type="submit" value="Save">
</form>
</body>
</html>