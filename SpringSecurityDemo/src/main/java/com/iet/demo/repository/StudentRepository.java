package com.iet.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iet.demo.beans.Student;
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
	Optional<Student> findByPrn(String prn);
}
