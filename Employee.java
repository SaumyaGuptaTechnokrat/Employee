package com.employee;

public class Employee {
 private int id,age;
 private double salary;
 private String fname,lname,doj,gender,department,city,country;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getDoj() {
	return doj;
}
public void setDoj(String doj) {
	this.doj = doj;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public Employee() {
	
}
public Employee(String fname, String lname,int age, String gender, double salary, String doj,
		 String country,String city, String department) {
	this.age = age;
	this.salary = salary;
	this.fname = fname;
	this.lname = lname;
	this.doj = doj;
	this.gender = gender;
	this.department = department;
	this.city = city;
	this.country = country;
}
 

 
	
}
