package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "faculty_table")
public class Faculty 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "faculty_name",nullable=false,length = 100)
	private String name;
	
	@Column(name="faculty_email",nullable=false,unique=true,length = 30)
	private String email;
	
	@Column(name="faculty_gender",nullable=false,length = 10)
	private String gender;
	
	@Column(name = "faculty_dob",nullable=false,length =20)
	private String dob;
	
	@Column(name = "faculty_college",nullable=false,length=100)
	private String college;
	
	@Column(name = "faculty_department",nullable=false,length=100)
	private String department;
	
	@Column(name = "faculty_salary",nullable=false,precision =10)
	private double salary;	
		
	@Column(name="faculty_password",nullable=false,length =30) 
	private String password;
	
	@Column(name="faculty_contactno",nullable=false,unique = true)
	private String contact;

	@Override
	public String toString() {
		return "Faculty [id=" + id + ", name=" + name + ", email=" + email + ", gender=" + gender + ", dob=" + dob
				+ ", college=" + college + ", department=" + department + ", salary=" + salary + ", password="
				+ password + ", contact=" + contact + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	
}
