<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form action="student.jsp" method="get">
        <table align="center">
            <tr>
                <td>Enter Your Name : </td>
                <td> <input type="text" name="sname"> </td>
            </tr>
            <tr>
                <td>Enter Your Password : </td>
                <td> <input type="text" name="spass"> </td>
            </tr>
            <tr>
                <td>Enter Your Conform Password : </td>
                <td> <input type="text" name="scpass"> </td>
            </tr>
            <tr>
                <td>Select Your Gender : </td>
                <td> 
                    <input type="radio" name="gen" value="male"> Male
                    <input type="radio" name="gen" value="male"> Female
                </td>
            </tr>
            <tr>
                <td>Qualification : </td>
                <td> 
                    <select name="quli" id="quli">
                        <option value="btech"> B. Tech </option>
                        <option value="mtch"> M. Tech </option>
                        <option value="bca"> B.C.A. </option>
                        <option value="mca"> M.C.A. </option>
                        <option value="ba"> B.A. </option>
                        <option value="ma"> M. A. </option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>course : </td>
                <td> 
                    <select name="course" id="scur" multiple>
                        <option value="java"> Java </option>
                        <option value="Python"> Python </option>
                        <option value=".net"> .NET </option>
                        <option value="hadoop"> Hadoop </option>
                        <option value="ui"> UI Technologies </option>
                        <option value="ux"> UX Technologies </option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Hobbies : </td>
                <td> 
                    <input type="checkbox" name="hob" value="chatting" /> Chatting
                    <input type="checkbox" name="hob" value="programming" /> Programming
                    <input type="checkbox" name="hob" value="gamming" /> Gamming
                </td>
            </tr>
            <tr>
                <td>Address : </td>
                <td> 
                    <textarea name="add" id="add" cols="30" rows="10"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan=2> <input type="submit" value="Submit"> </td>
           
            </tr>
        </table>
        
    </form>
    
</body>
</html>