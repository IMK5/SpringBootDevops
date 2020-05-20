/**
 * 
 */
package imk.tn.devops.main;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author med5
 *
 */
@RestController
public class MyController {

	@GetMapping("/")
	public String sayHello() {

		return "Hello Spring boot Devops !";
	}

	@GetMapping("/{id}")
	public String displayId(@PathVariable String id) {
		return "ID: " + id;
	}
}