package app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/autoComplete")
public class AutoCompleteController {
	@RequestMapping("/")
	public String index() {
		return "autoComplete/index";
	}
}
