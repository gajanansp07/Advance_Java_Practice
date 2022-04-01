<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#newacc{
	text-align: center;
}
</style>
</head>
<body>
	<h1 id="newacc"> New Account</h1>
    <form action="addAcc.jsp" method="post">
        <table align="center">
            <caption> Account Details </caption>
            <tr>
                <td><label for="cid"> Customer ID : </label></td>
                <td><input type="text" name="cid" id="cid" placeholder="Enter Customer Id" required /> </td>
            </tr>
            <tr>
                <td><label for="fname"> First Name :</label></td>
                <td><input type="text" name="fname" id="fname" required /> </td>
            </tr>
            <tr>
                <td><label for="fhname"> Father / Husband Name :</label></td>
                <td><input type="text" name="fhname" id="fhname" required /> </td>
            </tr>
            <tr>
                <td><label for="lname"> Last Name :</label></td>
                <td><input type="text" name="lname" id="lname" required /> </td>
            </tr>
            <tr>
                <td><label for="uname"> User Name </label></td>
                <td><input type="text" name="uname" id="uname" required /> </td>
            </tr>
            <tr>
                <td><label for="upass"> Password </label></td>
                <td><input type="password" name="upass" id="upass" required /> </td>
            </tr>
            <tr>
                <td><label for="cpass"> Confirm Password </label></td>
                <td><input type="password" name="cpass" id="cpass" required /> </td>
            </tr>
            <tr>
                <td><label for="uamt"> Amount </label></td>
                <td><input type="text" name="uamt" id="uamt" required /> </td>
            </tr>
            <tr>
                <td><label for="uadrs"> Address </label></td>
                <td><input type="text" name="uadrs" id="uadrs" required /> </td>
            </tr>
            <tr>
                <td><label for="uph"> Phone </label></td>
                <td><input type="text" name="uph" id="uph" required /> </td>
            </tr>
                <tr>
                <td><input type="submit" id="cracc" Value="Create Account">  </td>
                
                <td><input type="reset" name="reset" id="reset" /> </td>
             </tr>
        </table>
    </form>
</body>
</html>