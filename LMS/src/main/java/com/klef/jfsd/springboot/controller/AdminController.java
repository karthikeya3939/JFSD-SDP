package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CourseService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private CourseService courseService;
	
	
	@GetMapping("/")
	public String main()
	{
		return "adminlogin";
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		if(a!=null)
		{
			mv.setViewName("adminhome");
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		
		return mv;		
		
	}
	
	@GetMapping("adminhome")
//	@ResponseBody
	public String adminhome()
	{
		return "adminhome";
	}

	
	@GetMapping("admin_student")
	public String admin_student()
	{
		return "admin_student";
	}
	
	@GetMapping("admin_addstudent")
	public String admin_addstudent(Model m)
	{
		m.addAttribute("student", new Student());
		
		return "admin_addstudent";
	}
	
	@PostMapping("insertstudent")
	   public ModelAndView insertstudentaction(@ModelAttribute("student") Student s )
	   {
		   
		   ModelAndView mv =  new ModelAndView("admin_addstudent");
		   String msg = studentService.addstudent(s);
		   mv.addObject("message", msg);
		   
		return mv;
		   
	   }
	
	@GetMapping("admin_faculty")
	  public String admin_faculty()
	  {
	    return "admin_faculty";
	  }
	  
	  @GetMapping("admin_addfaculty")
	  public String admin_addfaculty(Model m)
	  {
		  m.addAttribute("faculty",new Faculty());
		  
	    return "admin_addfaculty";
	  }
	  
	  @PostMapping("insertfaculty")
	  public ModelAndView insertfacultyaction(@ModelAttribute("faculty") Faculty f )
	  {
		  ModelAndView mv = new ModelAndView("admin_addfaculty");
		  String msg = facultyService.addfaculty(f);
		  mv.addObject("message", msg);
		  return mv;
		  
	  }
	  
	  
	  
	  
	  @GetMapping("admin_course")
	  public String admin_course()
	  {
	    return "admin_course";
	  }
	  
	  @GetMapping("admin_addcourse")
	  public String admin_addcourse(Model m)
	  {
		  m.addAttribute("course",new Course());
		  
	    return "admin_addcourse";
	  }
	  
	  @PostMapping("insertcourse")
	  public ModelAndView insertfacultyaction(@ModelAttribute("course") Course c )
	  {
		  
		  ModelAndView mv = new ModelAndView("admin_addcourse");
		  String msg = courseService.addcourse(c);
		  mv.addObject("message", msg);
		  return mv;
	  }
	  
	
	
	
	
	
}
