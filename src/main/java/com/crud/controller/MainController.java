package com.crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.crud.dao.studentDao;
import com.crud.entities.Student;

@Controller
public class MainController 
{	
	@Autowired
	private studentDao studentDao;
	
	
	@RequestMapping(value = "/")
	public String home(Model m)
	{
		List<Student> allStudent = this.studentDao.getAllStudent();
		m.addAttribute("student", allStudent);
		return "index";
	}
	
	
	@RequestMapping("/addStudentPage")
	public String AddStudentPage()
	{
		return "addStudentPage";
	}
	
	@RequestMapping(value = "/addStudent",method = RequestMethod.POST)
	public RedirectView addStudent(@ModelAttribute Student student,HttpServletRequest request)
	{
		System.out.println(student);
		this.studentDao.insertStudent(student);
		RedirectView rd=new RedirectView();
		rd.setUrl(request.getContextPath()+"/");
		return rd;
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteStudent(@PathVariable("id") int id,HttpServletRequest request)
	{
		this.studentDao.deleteStudent(id);
		RedirectView rd=new RedirectView();
		rd.setUrl(request.getContextPath()+"/");
		return rd;
	}
	
	
	@RequestMapping("/update/{id}")
	public String updatePage(@PathVariable("id") int id,@ModelAttribute("student") Student student ,Model m)
	{
		Student student2 = this.studentDao.getStudent(id);
		m.addAttribute("student", student2);
		return "updateStudentPage";
	}
	
	
	@RequestMapping(value = "/updateStudent",method = RequestMethod.POST)
	public String updateStudent(@ModelAttribute("student") Student student, Model m)
	{
		this.studentDao.updateStudent(student);
		m.addAttribute("student", student);
		return "redirect:/";
	}
}
