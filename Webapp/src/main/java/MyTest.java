
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

public class MyTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pw.println("Driver loaded.....");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin", "admin");
			pw.println("Connection Eshtabilished..........");
		} catch (Exception e) {
			pw.println("Welcom" + e.getMessage());
			e.printStackTrace();
		}
	}

}
