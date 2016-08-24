package com.msb.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.QuizGenre;

@Repository
@Transactional
public class QuizDAOImpl implements QuizDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public QuizGenre getQuizzesBasedOnClient(String client) {
		//Session session=sessionFactory.getCurrentSession();
		return null;

	}

}
