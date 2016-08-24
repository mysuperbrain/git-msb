package com.msb.service;

import java.io.InputStream;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.UserDAO;
import com.msb.model.User;
import com.msb.model.UserLikeValidation;
import com.msb.util.MsbUtil;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDao;

	@Override
	public User validateUser(String username, String password) {
		return userDao.validateUser(username, password);
	}

	@Override
	public Map<String, String> getStudentPassword(String userNameOrMail) {

		return userDao.getStudentPassword(userNameOrMail);
	}

	@Override
	public boolean saveStudent(User user, InputStream photo) {

		return userDao.saveStudent(user, photo);
	}

	@Override
	public boolean activateRegisteredUser(String activationCode) {

		return userDao.activateRegisteredUser(activationCode);
	}

	@Override
	public boolean isUserExist(String username) {

		return userDao.isUserExist(username);
	}

	@Override
	public boolean changePassword(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public boolean updateProfilePicture(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public boolean updateUserDetails(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public boolean saveStudentLike(UserLikeValidation userLikeValidation) {

		return userDao.saveStudentLike(userLikeValidation);
	}

	@Override
	public boolean isStudentLiked(UserLikeValidation userLikeValidation) {
		UserLikeValidation userLikeValidation1 = userDao
				.checkStudentLike(userLikeValidation);
		if (userLikeValidation1 != null) {
			return MsbUtil.isDateIsToday(String.valueOf(userLikeValidation1
					.getLikeDate()));

		} else
			return false;

	}

	@Override
	public boolean updateUserPoints(String username, int points) {
		return userDao.updateUserPoints(username, points);
	}

}
