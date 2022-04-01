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
	Long accno = Long.parseLong(request.getParameter("accno"));
	String name = request.getParameter("uname");
	String pass = request.getParameter("upass");
	Long damt = Long.parseLong(request.getParameter("dpamt"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
	
	PreparedStatement ps = con.prepareStatement("update account set BALANCE = BALANCE-? where ACCOUNT_NO=? and USER_NAME=? and PASSWORD=? and BALANCE>=?");
	ps.setLong(1, damt);
	ps.setLong(2, accno);
	ps.setString(3,name);
	ps.setString(4,pass);
	ps.setLong(5, damt);
	int n = ps.executeUpdate();

	if(n>0){
		out.print("<h1 align='center'>"+damt+" Amount Withdraw Sucessful....</h1>");
		ps=null;
		Statement stmt = con.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT ACCOUNT_NO as AccountNumber, FIRST_NAME as FirstName, LAST_NAME as LastName, BALANCE, ADDRESS, PHNO as ContactNumber FROM ACCOUNT WHERE ACCOUNT_NO="+accno);
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
	
	%>

</body>
</html>