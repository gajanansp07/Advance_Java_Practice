package ganesh;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class MyCookiesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			
			pw.println("Hello here " + name);
			pw.println("Your password is : "+ pass);
			
			//Creating Cookies
			Cookie c1 = new Cookie("userName",name);
			Cookie c2 = new Cookie("password",pass);
			
			response.addCookie(c1);
			response.addCookie(c2);
			
			pw.println("<br><a href='Welcome'> View Details </a>");
			pw.close();
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
