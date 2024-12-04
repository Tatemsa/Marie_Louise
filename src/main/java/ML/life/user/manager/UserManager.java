package ML.life.user.manager;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "")
public class UserManager {

	@GetMapping(path = "/user")
	public String getAll(){
		return "Tous les utilisateurs sous forme de JSON";
	}
}
