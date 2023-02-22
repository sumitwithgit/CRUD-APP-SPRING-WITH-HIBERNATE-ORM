package com.crud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;

import com.crud.entities.Student;

@Controller
public class studentDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void insertStudent(Student student) {
		this.hibernateTemplate.save(student);
	}

	public List<Student> getAllStudent() {
		List<Student> list = this.hibernateTemplate.loadAll(Student.class);
		return list;
	}

	public Student getStudent(int id) {
		Student student = this.hibernateTemplate.get(Student.class, id);
		return student;
	}

	@Transactional
	public void deleteStudent(int id) {
		Student student = this.hibernateTemplate.get(Student.class, id);
		this.hibernateTemplate.delete(student);
	}
	
	@Transactional
	public void updateStudent(Student student) {
		this.hibernateTemplate.saveOrUpdate(student);
	}

}
