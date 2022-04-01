<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1.terr {
    text-align: center;
    text-shadow: #FC0 2px 0 10px;
    color:red;
    margin-top: 20%;
}
h1#succ {
    text-align: center;
    color: lightgreen;
    text-shadow: #0F0 2px 0 10px;
    margin-top: 20%;
}

</style>
</head>
<body>
	<%
	try{
	Long sacc = Long.parseLong(request.getParameter("saccno"));
	String name = request.getParameter("uname");
	String pass = request.getParameter("upass");
	Long racc = Long.parseLong(request.getParameter("taccno"));
	Long tamt = Long.parseLong(request.getParameter("tamt"));
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","admin");
		String sql="Select * from account where ACCOUNT_NO=? and USER_NAME=? and PASSWORD=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setLong(1, sacc);
		ps.setString(2, name);
		ps.setString(3, pass);
		
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			if(rs.getLong("BALANCE")>tamt){
				sql="Update account set BALANCE=BALANCE-? Where ACCOUNT_NO=?";
				ps=con.prepareStatement(sql);
				ps.setLong(1, tamt);
				ps.setLong(2, sacc);
				int n= ps.executeUpdate();
				if(n>0){
					sql ="Update account set BALANCE=BALANCE+? WHERE ACCOUNT_NO=?";
					ps = con.prepareStatement(sql);
					ps.setLong(1, tamt);
					ps.setLong(2, racc);
					int i = ps.executeUpdate();
					if(i>0)
						out.print("<h1 id='succ'>"+tamt+" is Tranfered Sucessfully...</h1>");
					else
						out.print("<h1 class='terr'> Reciever Account Number is Invalid... </h1>");
				}else{
					out.println("<h1 class='terr'>Error In Trancfer Balance</h1>");
				}
				
			}
			else{
				out.print("<h1 class='terr'>Insuficient Balance Plese check balance Before tranfer..</h1>");
			}
		}else{
			out.println("<h1 class='terr'>Invalid Account Number or UserName or Password.</h1>");
		}
		
	}catch(Exception e){
		out.print(e);
	}
%>
</body>
</html>