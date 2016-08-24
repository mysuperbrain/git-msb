package com.msb.dao;

import com.msb.model.QuizGenre;

public interface QuizDAO {

	public QuizGenre getQuizzesBasedOnClient(String client);

}
