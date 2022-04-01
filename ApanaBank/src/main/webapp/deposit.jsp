<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Deposit Amount</h1>
    <form action="accDeposit.jsp" method="post">
        <table align="center">
            <caption> Deposit </caption>
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
                <td><label for="dpamt">Amount </label> </td>
                <td><input type="text" name="dpamt" id="dpamt"/> </td>
            </tr>
            <tr>
                <td> <input type="submit" id="chkbal" value="Deposit" /> </td>
                <td><input type="reset" value="Clear" id="clr"/> </td>
            </tr>
        </table>
    </form>
</body>
</html>