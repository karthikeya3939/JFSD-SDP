package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "student_name",nullable=false,length = 100)
	private String name;
	
	@Column(name="student_email",nullable=false,unique=true,length = 30)
	private String email;
	
	@Column(name="student_gender",nullable=false,length = 10)
	private String gender;
	
	@Column(name = "student_dob",nullable=false,length =20)
	private String dob;
	
	@Column(name = "student_program",nullable=false,length=100)
	private String program;
	
	@Column(name = "student_department",nullable=false,length=100)
	private String department;
	
	@Column(name = "student_cgpa",nullable=false,precision =10)
	private double cgpa;	
		
	@Column(name="student_password",nullable=false,length =30) 
	private String password;
	
	@Column(name="student_contactno",nullable=false,unique = true)
	private String contact;

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", gender=" + gender + ", dob=" + dob
				+ ", program=" + program + ", department=" + department + ", cgpa=" + cgpa + ", password=" + password
				+ ", contact=" + contact + "]";
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

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public double getCgpa() {
		return cgpa;
	}

	public void setCgpa(double cgpa) {
		this.cgpa = cgpa;
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

