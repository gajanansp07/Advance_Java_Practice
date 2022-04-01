<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		long ano = Long.parseLong(request.getParameter("accno"));
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
		String sql="SELECT ACCOUNT_NO, USER_NAME, BALANCE, ADDRESS, PHNO FROM ACCOUNT WHERE ACCOUNT_NO=? AND USER_NAME=? AND PASSWORD=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setLong(1, ano);
		ps.setString(2, uname);
		ps.setString(3, upass);
		
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsm = rs.getMetaData();
		int n = rsm.getColumnCount();
		if(n>0)
		{
			out.print("<h1 align='center'> Account Balance :</h1>");
			out.print("<table border='1' align='center'><tr>");
			for(int i=1;i<=rsm.getColumnCount();i++)
				out.print("<th>"+rsm.getColumnName(i)+"</th>");
			out.print("</tr>");
			if(rs.next())
			{
				out.print("<tr>");
				for(int i=1;i<=rsm.getColumnCount();i++)
					out.print("<td>"+rs.getString(i)+"</td>");
				out.print("</tr>");
			}else{
				out.print("Error in fatching Data........");
			}
			out.print("</table>");
			
		}
		else
		{
			out.print("Incoreect Acount Details..");
		}
		
	%>
</body>
</html>