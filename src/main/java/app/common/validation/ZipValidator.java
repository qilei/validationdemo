package app.common.validation;

import java.util.regex.Matcher;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ZipValidator implements ConstraintValidator<Zip, String> {

	private java.util.regex.Pattern pattern = java.util.regex.Pattern.compile("^\\d{6}$",
			java.util.regex.Pattern.CASE_INSENSITIVE);

	public void initialize(Zip annotation) {
	}

	public boolean isValid(String value, ConstraintValidatorContext context) {
		if (value == null || value.length() == 0) {
			return true;
		}
		Matcher m = pattern.matcher(value);
		return m.matches();
	}
}
