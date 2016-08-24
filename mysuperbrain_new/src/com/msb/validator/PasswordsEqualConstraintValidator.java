package com.msb.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.msb.model.User;

public class PasswordsEqualConstraintValidator implements
		ConstraintValidator<PasswordEqualConstraint, Object> {

	@Override
	public void initialize(PasswordEqualConstraint arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isValid(Object arg0, ConstraintValidatorContext arg1) {
		User user=(User)arg0;
		System.out.println("password validator");
		return user.getPassword().equals(user.getCpassword());
	}

}
