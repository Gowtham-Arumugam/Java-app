package gowtham.living.service1;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
class Service1ApplicationTests {
    @Autowired
    Service1 service1 = new Service1();
    @Test
    void testSayHello() {
        String result = "Hello, World!";
        assertEquals("Hello, World!", result);
    }
    @Test
    void testadd() {
        int a = 5;
        int b = 5;
        int sum = a + b;
        assertEquals(10, sum);
    }
    @Test
    void testPrintPodName() {
        String podName = service1.printPodName();
        assertEquals(System.getenv("POD_NAME"), podName);
    }

}
