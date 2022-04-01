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
		Long acc = Long.parseLong(request.getParameter("accno"));
		String uname = request.getParameter("uname");
		String upas = request.getParameter("upass");
		Long amt = Long.parseLong(request.getParameter("dpamt"));
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
		PreparedStatement ps = con.prepareStatement("Update account set BALANCE = BALANCE+? where ACCOUNT_NO=? and USER_NAME=? and PASSWORD=?");
		ps.setLong(1, amt);
		ps.setLong(2, acc);
		ps.setString(3, uname);
		ps.setString(4, upas);
		
		int n = ps.executeUpdate();
		if(n>0){
			ps=null;
			out.println("<h1 align='center'>"+ amt+" Deposited Sucessful....</h1>");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT ACCOUNT_NO as AccountNumber, FIRST_NAME as FirstName, LAST_NAME as LastName, BALANCE, ADDRESS, PHNO as ContactNumber FROM ACCOUNT WHERE ACCOUNT_NO="+acc);
			ResultSetMetaData rsm =rs.getMetaData();
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
		
		}catch(Exception e){
			out.print(e);
		}
%>
</body>
</html>