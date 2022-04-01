<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Withdraw Amount</h1>
<form action="wdrwamt.jsp" method="post">
        <table align="center">
            <caption> Withdraw </caption>
            <tr>
                <td><label for="accno">Account Number </label> </td>
                <td><input type="text" name="accno" id="accno" required/> </td>
            </tr>
            <tr>
                <td><label for="uname">User Name </label> </td>
                <td><input type="text" name="uname" id="uname" required/> </td>
            </tr>
            <tr>
                <td><label for="upass">Password </label> </td>
                <td><input type="password" name="upass" id="upass" required/> </td>
            </tr>
            <tr>
                <td><label for="dpamt">Amount </label> </td>
                <td><input type="text" name="dpamt" id="dpamt" required/> </td>
            </tr>
            <tr>
                <td> <input type="submit" id="wdwbal" value="Withdraw" /> </td>
                <td><input type="reset" value="Clear" id="clr"/> </td>
            </tr>
        </table>
    </form>
</body>
</html>