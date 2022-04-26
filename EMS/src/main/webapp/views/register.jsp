<h1> User Registration Form </h1>

<br />
<hr />
<a href="/">Home</a>
<a href="about">About</a>
<a href="contact">Contact</a>
<br />
<hr />

<div>
<form action="useresg">
<lable for="uname"> User Id :</lable>
<input type="text" name="uname" id="uname" /><br /><br />
<lable for="upass"> Password : </lable>
<input type="password" name="upass" id="upass" /><br /><br />
<lable for="uemail"> Email Id : </lable>
<input type="email" name="uemail" id="uemail" /><br /><br />
<lable for="gender"> Gender : </lable>
<lable for="um"> Male : </lable>
<input type="radio" name="Gender" value"Male"  id="um" />
<lable for="um"> Female : </lable>
<input type="radio" id="ug" name="Gender" value"Female" /><br /><br />

<lable for="country"> Country : </lable>
<select name="country" id="country">
<option value="India" selected=true>--Select--</option>
<option value="India">India</option>
<option value="India">India</option>
<option value="India">India</option>
<option value="India">India</option>
<option value="India">India</option>
<option value="India">India</option>
<option value="India">India</option>
</select><br /><br />
<lable for="umbno"> Mobile Number : </lable>
<input type="text" name="umbno" id="umbno" /><br /><br />
<lable for="uadd"> Address : </lable>
<input type="text" name="uadd" id="uadd" /><br /><br />

<input type="submit" value="Register" />
</form>
</div>