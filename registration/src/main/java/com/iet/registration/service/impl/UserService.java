package com.iet.registration.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.iet.registration.bean.User;
import com.iet.registration.repository.UserRepository;

@Component
public class UserService implements com.iet.registration.service.UserService {
	@Autowired UserRepository userRepository;
	@Override
	public User addUser(User user) {
		return userRepository.save(user);
	}
	@Override
	public List<User> getAllUser() {
		return userRepository.findAll();
	}
	@Override
	public User getUser(int userId) {
		return userRepository.findById(userId).get();
	}

}
