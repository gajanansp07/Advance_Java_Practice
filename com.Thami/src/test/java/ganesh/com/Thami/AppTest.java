package ganesh.com.Thami;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("Springcnf.xml");
		EmployeeBeen e1 = (EmployeeBeen)ctx.getBean("empbeen");
		e1.printEmployee();
	}
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }
}
