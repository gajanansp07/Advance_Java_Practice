<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String eid = request.getParameter("eid");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin", "admin");
	PreparedStatement ps = con.prepareStatement("Select * from registration where name =?");
	
	ps.setString(1, eid);
	ResultSet rs = ps.executeQuery();
	ResultSetMetaData rsm = rs.getMetaData();
	
	int n = rsm.getColumnCount();
	String []colname = new String[n];
	out.println("<h1 align='center'>Update User : " + eid +"<br></h1>");	
		for (int i = 1; i <= rsm.getColumnCount(); i++) {
			colname[i-1] = rsm.getColumnName(i);
		}
		%>
		<form action="updateMyRecordone.jsp" method="post">
		<table align='center'>
		<%
		out.print(" ");
		while(rs.next()){
			for(int i=0;i<n;i++)
			{
				
			%>
			<tr>
			<td><label for="<% out.print(colname[i]); %>"><% out.print(colname[i]); %> : </label></td>
			<td>
			<input type ="text" name="<% out.print(colname[i]); %>" class="ufild" value="<% out.print(rs.getString(i+1)); %>"> 
			</td>
			</tr>
			<%
			}%>
			<tr><td colspan="2" align="center"> <input type="submit" value="Update" id="urec"> </td></tr>
			<%
		}
		%>
		</table>
		</form>
		<%
%>

	<!-- <form action="updateRecordone.jsp" method="post"> -->
	<!-- <input type="text" name="name" value="" placeholder=""> -->
	<!-- <input type="submit" value="UPDATE"> -->
	<!-- </form> -->

</body>
</html>