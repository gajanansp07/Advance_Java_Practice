

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
public class Testing extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Testing() {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		printWriter dw = response.getWriter();
		pw.println("<h1> Welcome to servlet</h1>");
		
		}
	}

}