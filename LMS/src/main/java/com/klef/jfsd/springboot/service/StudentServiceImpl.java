package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService 
{
	
	@Autowired
	StudentRepository studentRepository;

	@Override
	public String addstudent(Student student) {
		
		studentRepository.save(student);
		return "Student registered Successfully....!!";
		
		
	}

}
