package com.iet.registration.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iet.registration.bean.User;

@Service
public interface UserService {
	User addUser(User user);
	List<User> getAllUser();
	User getUser(int userId);
}
