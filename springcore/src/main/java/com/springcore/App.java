package com.springcore;
import org.springframework.context.ApplicationContext;
import org.springframework.beans.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	System.out.print("Hello world");
    	try {
    	ApplicationContext ctx = new ClassPathXmlApplicationContext("config.xml");
    	Employee emp =(Employee)ctx.getBean("emp");
    	System.out.println(emp);
    	}
    	catch(Exception e) {
    		System.out.println(e);
    	}
    }
}
