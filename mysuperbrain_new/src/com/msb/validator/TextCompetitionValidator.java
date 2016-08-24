package com.msb.validator;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.msb.model.CompetitionText;
import com.msb.model.User;
import com.msb.service.UserService;

@Component
public class TextCompetitionValidator implements Validator {

	@Autowired
	private UserService userService;

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		CompetitionText text = (CompetitionText) target;
		System.out.println(text.getSummary());
		
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "summary",
				"summary.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "content",
				"content.required");
		
		if(text.getSummary().length()>250){
			errors.rejectValue("summary", "summary.length");
		}
		try {
			if(text.getContent().getBytes("UTF-8").length>65535){
				errors.rejectValue("content", "content.length");
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
