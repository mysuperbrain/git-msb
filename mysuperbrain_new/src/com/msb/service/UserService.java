package com.msb.service;

import java.io.InputStream;
import java.util.Map;

import com.msb.model.User;
import com.msb.model.UserLikeValidation;

public interface UserService {
	
	public User validateUser(String username,String password);
	
	public boolean isUserExist(String username);
	
	public Map<String,String> getStudentPassword(String userNameOrMail);
	
	public boolean saveStudent(User user,InputStream photo);
	
	public boolean activateRegisteredUser(String activationCode);
	
	public boolean changePassword(User user);
	
	public boolean updateProfilePicture(User user);
	
	public boolean updateUserDetails(User user);
	
	public boolean saveStudentLike(UserLikeValidation userLikeValidation);
	
	public boolean isStudentLiked(UserLikeValidation userLikeValidation);
	
	public boolean updateUserPoints(String username,int points);

}
