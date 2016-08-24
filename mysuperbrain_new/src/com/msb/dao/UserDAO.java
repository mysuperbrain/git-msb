package com.msb.dao;

import java.io.InputStream;
import java.util.Map;

import com.msb.model.User;
import com.msb.model.UserLikeValidation;

public interface UserDAO {

	public User validateUser(String username, String password);
	
	public boolean isUserExist(String username);

	public Map<String, String> getStudentPassword(String userNameOrMail);

	public boolean saveStudent(User user, InputStream photo);
	
	public boolean activateRegisteredUser(String activationCode);
	
	public boolean updateUser(User user);
	
	public boolean saveStudentLike(UserLikeValidation userLikeValidation);
	
	public UserLikeValidation checkStudentLike(UserLikeValidation userLikeValidation);
	
	public boolean updateUserPoints(String username,int points);
	
	

}
