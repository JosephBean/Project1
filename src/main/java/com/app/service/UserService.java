package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.app.repository.UserEntityRepository;

@Service
public class UserService {

	@Autowired
	private UserEntityRepository uRepository;
	
	
}
