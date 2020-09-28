package com.eats.services;

import org.springframework.stereotype.Service;
import com.eats.model.User;
import com.eats.repository.UserRepository;

import javax.transaction.Transactional;


@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository ) {
		
		this.userRepository = userRepository;
	}
	
	
	
	public void saveMyUser(User user) {
		
	 userRepository.save(user);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}

}
 // userRepository