package gowtham.living.service1;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class service1 {
    @GetMapping("/service")
    public String hello() {
        return "Hello from Service 1";
    }
    @GetMapping("/greet")
    public String greet() {
        return "Greetings from Service 1 !!!!";
    }

    
    @GetMapping("/status")
    public String status() {
        return "Service 1 is running smoothly!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
    } 
    @GetMapping("/")
    public String printPodName() {
        System.out.println("Root method called");
        return System.getenv("POD_NAME");
    }
}