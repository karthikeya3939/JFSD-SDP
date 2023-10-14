package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.repository.CourseRepository;

@Service
public class CourseServiceImpl implements CourseService
{

	@Autowired
	private CourseRepository courseRepository;
	
	@Override
	public String addcourse(Course course) {
		courseRepository.save(course);
		return "Course Added Successfully";
	}

}
