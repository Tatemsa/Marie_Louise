package ML.life.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "")
public class TestController {
	@GetMapping(path = "/test")
	public String getString(){
		return "Test de chaine";
	}

}
