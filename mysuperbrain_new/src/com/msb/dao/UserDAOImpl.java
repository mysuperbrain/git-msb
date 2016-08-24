package com.msb.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.User;
import com.msb.model.UserLikeKey;
import com.msb.model.UserLikeValidation;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User validateUser(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;
		try {

			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", username));
			user = (User) criteria.uniqueResult();

			if (user != null && user.getUsername() != null
					&& !user.getUsername().isEmpty()) {

				if (user.getPassword().equals(password)) {
					return user;
				}

			} else
				return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

		return null;
	}

	@Override
	public Map<String, String> getStudentPassword(String userNameOrMail) {

		Session session = sessionFactory.getCurrentSession();
		Map<String, String> usermap = new HashMap<String, String>();
		try {
			Criteria criteria = session.createCriteria(User.class);
			Criterion username = Restrictions.eq("username", userNameOrMail);
			Criterion mail = Restrictions.eq("mail", userNameOrMail);

			LogicalExpression expression = Restrictions.or(username, mail);
			criteria.add(expression);
			User user = (User) criteria.uniqueResult();

			if (user != null)
				usermap.put(user.getMail(), user.getPassword());

			return usermap;

		} catch (HibernateException exception) {
			exception.printStackTrace();
			return null;
		}

	}

	@Override
	public boolean saveStudent(User user, InputStream photo) {
		Session session = sessionFactory.getCurrentSession();

		try {
			System.out.println("photo size" + photo.available());
			if (photo != null && photo.available() > 0) {
				// UserProfileImage profileImage = new UserProfileImage();
				byte[] image = IOUtils.toByteArray(photo);
				user.setImage(image);
			}
			user.setTxnref("MSBU00" + (getStudentMaxID() + 1));

			session.save(user);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	private Integer getStudentMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			return id;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public boolean activateRegisteredUser(String activationCode) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Query selectQuery = session
					.createQuery("select student_id from UserActivation where activation_code= :acode");
			selectQuery.setParameter("acode", activationCode);
			int student_id = (int) selectQuery.uniqueResult();
			if (student_id != 0) {

				Query deleteQuery = session
						.createQuery("delete UserActivation where activation_code = :acode");
				deleteQuery.setParameter("acode", activationCode);

				int deleted = deleteQuery.executeUpdate();
				System.out.println(deleted);
				if (deleted > 0) {
					Query updateQuery = session
							.createSQLQuery("update USER_DETAILS set active = :active , mail_verified = :verified"
									+ " where id = :id");
					updateQuery.setParameter("active", 1);
					updateQuery.setParameter("verified", 1);
					updateQuery.setParameter("id", student_id);
					int updated = updateQuery.executeUpdate();

					/*
					 * Criteria criteria =
					 * session.createCriteria(UserActivation.class);
					 * criteria.add(Restrictions.eq("activation_code",
					 * activationCode)); List<UserActivation> activations =
					 * criteria.list(); UserActivation activation =
					 * activations.get(0); if (activation != null) {
					 * session.delete(activation);
					 */
					if (updated > 0)
						return true;
					else
						return false;

				} else {
					return false;
				}
			} else {
				return false;
			}

		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean isUserExist(String username) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;
		try {

			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", username));
			user = (User) criteria.uniqueResult();

			if (user != null)
				return true;
			else
				return false;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.update(user);
			session.flush();
			session.refresh(user);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean saveStudentLike(UserLikeValidation userLikeValidation) {
		Session session = sessionFactory.getCurrentSession();

		try {

			session.saveOrUpdate(userLikeValidation);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public UserLikeValidation checkStudentLike(
			UserLikeValidation userLikeValidation) {
		Session session = sessionFactory.getCurrentSession();

		String username = userLikeValidation.getUsername();
		int entry_id = userLikeValidation.getEntry_id();
		String comp_type = userLikeValidation.getComp_type();
		UserLikeValidation likeValidation = (UserLikeValidation) session.get(
				UserLikeValidation.class, new UserLikeKey(username, entry_id,
						comp_type));
		return likeValidation;
	}

	@Override
	public boolean updateUserPoints(String username, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", username));
			User user = (User) criteria.uniqueResult();
			user.setPoints(user.getPoints() + points);
			session.update(user);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}

}
