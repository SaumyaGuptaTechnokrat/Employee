package employee;

public class Employee {
	private int id,age;
	private String fName,salary, lName,City, Gender,Doj,Country;
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age=age;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary=salary;
	}
	public String getLName() {
		return lName;
	}
	public void setLName(String lName) {
		this.lName=lName;
	}
	public String getFName() {
		return fName;
	}
	public void setFName(String fName) {
		this.fName=fName;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String City) {
		this.City=City;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String Gender) {
		this.Gender=Gender;
	}
	public String getDoj() {
		return Doj;
	}
	public void setDoj(String Doj) {
		this.Doj=Doj;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String Country) {
		this.Country=Country;
	}
	/*public String getDepartment() {
		return Department;
	}
	public void setDepartment(String Department) {
		this.Department=Department;
	}*/
	public Employee() {
		
	}
	public Employee( String fName, String lName, int age, String Gender,String salary,String Doj,String City,String Country
			) {
		this.age=age;
		this.salary=salary;
		this.fName=fName;
		this.lName=lName;
		this.Gender=Gender;

		this.Doj=Doj;
		this.City=City;

		this.Country=Country;
		//this.Department=Department;

	}


}
