package com.example.demo.service;

import java.util.List;

import com.example.demo.model.User;

public interface UserService {
	List<User> findAllUser();
	
	User findByUserName(String userName);
	
	User save(User user);

}
