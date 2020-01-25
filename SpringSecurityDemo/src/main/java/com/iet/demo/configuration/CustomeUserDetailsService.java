package com.iet.demo.configuration;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.iet.demo.beans.Student;
import com.iet.demo.repository.StudentRepository;
@Service
public class CustomeUserDetailsService implements UserDetailsService {
	@Autowired StudentRepository studentRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<Student> optStud=studentRepository.findByPrn(username);
		if(!optStud.isPresent()) {
			throw new UsernameNotFoundException("Please enter valid prn.");
		}
		return optStud.map(CustomUserDetails::new).orElse(null);
	}

}
