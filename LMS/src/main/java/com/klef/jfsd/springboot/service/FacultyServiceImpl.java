package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService 
{
	
	@Autowired
	FacultyRepository facultyRepository;

	@Override
	public String addfaculty(Faculty faculty) {
		facultyRepository.save(faculty);
		return "Faculty Registered Successfully";
	}

}
