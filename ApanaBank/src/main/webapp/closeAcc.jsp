<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Close Account Form</h1>
<form action="accClose.jsp" method="post">
    <table>
        <caption>Account Closing</caption>
        <tr>
            <td><label for="accno">Account Number </label> </td>
            <td><input type="text" name="accno" id="accno"/> </td>
        </tr>
        <tr>
            <td><label for="uname">User Name </label> </td>
            <td><input type="text" name="uname" id="uname"/> </td>
        </tr>
        <tr>
            <td><label for="upass">Password </label> </td>
            <td><input type="password" name="upass" id="upass"/> </td>
        </tr>
        <tr>
            <td> <input type="submit" id="chkbal" value="Show Balance" /> </td>
            <td><input type="reset" value="Clear" id="clr"/> </td>
        </tr>
    </table>
</form>
</body>
</html>