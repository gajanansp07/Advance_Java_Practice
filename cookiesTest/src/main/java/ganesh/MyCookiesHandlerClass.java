package ganesh;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class MyCookiesHandlerClass extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		//Reading Cookies
		
		Cookie[] c = request.getCookies();
		//Displaying User Name and value from Cookies
		pw.println("Name from Cookies :"+c[0].getValue());
		pw.println("Password from Cookies :"+c[1].getValue());
		pw.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
