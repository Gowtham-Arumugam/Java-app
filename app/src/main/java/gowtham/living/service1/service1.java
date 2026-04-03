package gowtham.living.service1;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class service1 {
    private static final String API_KEY = "eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJ1c2VyIjoidGVzdC";
    private static final Logger logger = LoggerFactory.getLogger(service1.class);
    @GetMapping("/name")
    public String printPodName() {
        logger.info("name method called");
        return System.getenv("POD_NAME");
    }
    @GetMapping("/secret")
    public String printSecret() {
        logger.info("secret method called");
        return API_KEY;
    }
}