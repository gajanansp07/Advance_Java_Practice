<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 	td{
        font-size: 2rem;
		padding: 10px;
}
table{
        width: 70%;
		text-align: -webkit-center;
        background-color: rgb(181 181 181);
        color: white;
}
#cp{
    color: #69116a;
}
</style>
</head>
<body>
    <div>
    </div>
    <hr>
    <div id="regf">
        <form action="reg.jsp">
            <table align="center">
                <caption id="cp">EMPLOYEE MANAGEMENT SYSTEM</caption>
                <tr>
                    <td>Name : </td>
                    <td> <input type="text" name="ename"> </td>
                </tr>
                <tr>
                    <td>Password : </td>
                    <td> <input type="password" name="epas"> </td>
                </tr>
                <tr>
                    <td>Email : </td>
                    <td><input type="email" name="email"> </td>
                </tr>
                <tr>
                    <td>Mobile Number : </td>
                    <td><input type="tel" name="ephone"> </td>
                </tr>
                <tr>
                    <td>Gender : </td>
                    <td>
                        <input type="radio" name="gender" id="male" value="male"> <label for="male">Male </label>
                        <input type="radio" name="gender" id="female" value="female"> <label for="female">Female</label>
                    </td>
                </tr>
                <tr>
                    <td>Address : </td>
                    <td> <input type="text" name="add"> </td>
                </tr>
                <tr>
                    <td>Country : </td>
                    <td>
                        <select name="country" id="cnt">
                            <option value="in">India</option>
                            <option value="Russia">Russia</option>
                            <option value="Australia">Australia</option>
                            <option value="Austria">Austria</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Vietnam">Vietnam</option>
                            <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                            <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                            <option value="Wake Island">Wake Island</option>
                            <option value="Wallis & Futana Is">Wallis and Futana Is</option>
                        </select>
                    </td>
                </tr>
                <tr align="center">
                    <td><input type="submit" value="Register"></td>
                    <td><input type="reset" value="Reset"></td>
                </tr>

            </table>
        </form>
    </div>
</body>
</html>