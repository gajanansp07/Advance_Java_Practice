<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	out.println("Name : "+name);
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//out.println("Loaded....");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin"); 
	//out.println("Connected....");
	PreparedStatement stmt = con.prepareStatement("delete from registration where Name=?");	
	
	stmt.setString(1,name);
	
	int i = stmt.executeUpdate();
	out.println("I = "+i);
	if(i>0)
		out.println("<h1 align='center'> Deleted Sucessful....</h1>");
	else
		out.println("<h1 align='center'>Not Deleted parson</h1>");

	}catch(Exception e){
		out.println(e);
	}finally{
		out.println("<a href='UserHome.jsp'>Back</a>");
	}
	
	%>
</body>
</html>