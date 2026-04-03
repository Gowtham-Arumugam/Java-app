package gowtham.living.service1;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Service1ApplicationTests {

	@Test
	void contextLoads() {
	}
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


}
