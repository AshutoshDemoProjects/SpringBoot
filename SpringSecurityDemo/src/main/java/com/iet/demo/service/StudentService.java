package com.iet.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iet.demo.beans.Student;
import com.iet.demo.repository.StudentRepository;

@Service
public class StudentService {
	@Autowired StudentRepository studentRepository;
	public Student addStudent(Student student) {
		return studentRepository.save(student);
	}
	public Optional<Student> getStudent(String prn) {
		return studentRepository.findByPrn(prn);
	}


}
