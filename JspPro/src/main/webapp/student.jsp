<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sn = request.getParameter("sname");
String ps = request.getParameter("spass");
String cps = request.getParameter("scpass");
String gen = request.getParameter("gen");
String ql = request.getParameter("quli");
String []cus = request.getParameterValues("course");
String []hb = request.getParameterValues("hob");
String add = request.getParameter("add");
out.println("<table align='center'> <tr><td><h3>");
out.println("Student Name : "+sn+"<br><br>Student Passwprd : "+ps+"<br><br>Student ConformPassword : "+cps+"<br><br>Student Gender :"+gen+"<br><br>Student Qualification : "+ql+"<br><br>Student Courses : ");

for(String s: cus)
	out.println(s+" ");
out.println("<br><br>Hobbies : ");
for(String s: hb)
	out.println(s+" ");
out.println("<br><br>Student Address : "+add);
out.println("<h3></td></tr></table>");
%>
</body>
</html>