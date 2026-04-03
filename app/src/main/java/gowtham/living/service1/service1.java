package gowtham.living.service1;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class service1 {
    private static final String API_KEY = "eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJ1c2VyIjoidGVzdC";

    @GetMapping("/name")
    public String printPodName() {
        return System.getenv("POD_NAME");
    }
    @GetMapping("/secret")
    public String printSecret() {
        return API_KEY;
    }
}