package gowtham.living.service1;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class Service1 {
    private static final Logger logger = LoggerFactory.getLogger(Service1.class);
    @GetMapping("/name")
    public String printPodName() {
        logger.info("name method called");
        return System.getenv("POD_NAME");
    }
    @GetMapping("/version")
    public String printVersion() {
        logger.info("version method called");
        return System.getenv("VERSION");
    }   
    @GetMapping("/color")
    public String printColor() {
        logger.info("color method called");
        return System.getenv("COLOR");
    }@GetMapping("/")
    public String homePage() {
        logger.info("sayHello method called");
        return "Hello, World!"; 
    }
    @GetMapping("/health")
    public String healthCheck() {
        logger.info("healthCheck method called");
        return "Service is healthy";    
    }
}