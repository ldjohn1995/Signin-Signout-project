package com.eats.repository;

import org.springframework.data.repository.CrudRepository;

import com.eats.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	public User findByUsernameAndPassword(String username, String password);

}
