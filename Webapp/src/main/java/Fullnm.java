

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Fullnm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fn = request.getParameter("fname");
		String ln = request.getParameter("lname");
		PrintWriter pw = response.getWriter();
		pw.println(" Welcome : "+ fn + " " + ln);
		try {
		}catch(Exception e){pw.println("Error : "+e.getMessage());}

		
	}

}
