package test.app.common.validation;

import static org.junit.Assert.assertEquals;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.junit.BeforeClass;
import org.junit.Test;

import app.model.User;

public class ZipValidaorTest {

	private static Validator validator;

	@BeforeClass
	public static void setUp() {
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
	}

	@Test
	public void zipValid() {
		User user = new User("qi", "lie");
		user.setZip("123456");

		Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);

		assertEquals(0, constraintViolations.size());

		user.setZip("wrong zip");
		constraintViolations = validator.validate(user);
		assertEquals(1, constraintViolations.size());
		assertEquals("无效的邮编", constraintViolations.iterator().next().getMessage());
	}

}
