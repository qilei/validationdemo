package app.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.validation.groups.Default;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import app.common.validation.ErrorMessage;
import app.common.validation.ValidationResponse;
import app.model.User;
import app.model.User.Complete;

@Controller
public class UserController {
	@Autowired
	private MessageSource messageSource;

	@RequestMapping(value = "/user/add", method = RequestMethod.GET)
	public String initNewForm(Model model) {
		model.addAttribute("user", new User());
		return "form";
	}

	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public @ResponseBody
	ValidationResponse processCreationForm(@ModelAttribute("agent") @Validated({ Default.class }) User user,
			BindingResult bindingResult, Locale locale) {

		ValidationResponse res = new ValidationResponse();
		if (bindingResult.hasErrors()) {
			handleErrors(bindingResult, res, locale);
		} else {
			res.setStatus("SUCCESS");
		}

		return res;
	}

	@RequestMapping(value = "/user/add2", method = RequestMethod.POST)
	public @ResponseBody
	ValidationResponse processCreationFormWithCompleteValidation(
@ModelAttribute("agent") @Validated({ Default.class,
			Complete.class }) User user,
			BindingResult bindingResult, Locale locale) {

		ValidationResponse res = new ValidationResponse();
		if (bindingResult.hasErrors()) {
			handleErrors(bindingResult, res, locale);
		} else {
			res.setStatus("SUCCESS");
		}

		return res;
	}

	private void handleErrors(BindingResult bindingResult, ValidationResponse res, Locale locale) {
		res.setStatus("FAIL");
		List<FieldError> allErrors = bindingResult.getFieldErrors();
		List<ErrorMessage> errorMesages = new ArrayList<ErrorMessage>();
		for (FieldError objectError : allErrors) {
			String msg = messageSource.getMessage(objectError, locale);
			errorMesages.add(new ErrorMessage(objectError.getField(), msg));
		}
		res.setErrorMessageList(errorMesages);
	}
}
