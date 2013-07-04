package app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/win")
public class WinController {
	@RequestMapping(value = "/")
	public String index(){
		return "winExtend/index";
	}

	@RequestMapping(value = "/input-name")
	public String html() {
		return "winExtend/input-name";
	}
}
