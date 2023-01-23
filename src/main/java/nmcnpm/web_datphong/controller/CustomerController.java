package nmcnpm.web_datphong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {

	@GetMapping("/")
	public String homePage(Model model) {
		return "/web/index";
	}
	
	@GetMapping("/successful-booking")
	public String successfullBooking(Model model) {
		return "/web/successful-booking";
	}

}
