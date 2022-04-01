<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Transfer Balance</h1>
    <form action="amttrans.jsp" method="post">
        <table align="center">
            <caption>Check Balance</caption>
            <tr>
                <td><label for="saccno">Sender Account Number </label> </td>
                <td><input type="text" name="saccno" id="saccno" placeholder="Account number of Sender" required /> </td>
            </tr>
            <tr>
                <td><label for="uname">User Name </label> </td>
                <td><input type="text" name="uname" id="uname" placeholder="UserName Name of Sender" required /> </td>
            </tr>
            <tr>
                <td><label for="upass">Password </label> </td>
                <td><input type="password" name="upass" id="upass" placeholder="Password  of Sender"  /> </td>
            </tr>
            <tr>
                <td><label for="taccno"> Receiver Account Number </label> </td>
                <td><input type="text" name="taccno" id="taccno" placeholder="Account number of Receiver" required /> </td>
            </tr>
            <tr>
                <td><label for="tamt"> Amount </label> </td>
                <td><input type="text" name="tamt" id="tamt" placeholder="Amount to Tranfer"  /> </td>
            </tr>
            <tr>
                <td> <input type="submit" id="chkbal" value="Transfer"/> </td>
                <td><input type="reset" value="Clear" id="clr"/> </td>
            </tr>
        </table>
    </form>
</body>
</html>