<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style src=""></style>
<style>
#show {
	appearance: auto;
	user-select: none;
	white-space: pre;
	align-items: flex-start;
	text-align: center;
	cursor: default;
	box-sizing: border-box;
	background-color: green;
	color: white;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}

body {
	background-color: aliceblue;
	margin-top: 2%;
}

td {
	padding: 1px;
}

table {
	background-color: #e7de5f;
	border: 1px solid;
	padding: 10px;
	text-align: -webkit-center;
}
</style>
<script type="text/javascript">
	function showBill() {
		//alert("ok");
		let tamt = document.getElementById('tamt');
		let tdec = document.getElementById('tdec');
		let sgst = document.getElementById('sgst');
		let cgst = document.getElementById('cgst');
		let payamt = document.getElementById('payamt');
		let prtamt = document.getElementById('prtamt');

		const PRO1 = document.getElementById('p1prc');
		const PRO2 = document.getElementById('p2prc');
		const PRO3 = document.getElementById('p3prc');
		const PRO4 = document.getElementById('p4prc');
		const PRO5 = document.getElementById('p5prc');

		let p1 = PRO1.value ? parseInt(PRO1.value) : 0;
		let p2 = PRO2.value ? parseInt(PRO2.value) : 0;
		let p3 = PRO3.value ? parseInt(PRO3.value) : 0;
		let p4 = PRO4.value ? parseInt(PRO4.value) : 0;
		let p5 = PRO5.value ? parseInt(PRO5.value) : 0;

		let total = p1 + p2 + p3 + p4 + p5;
		let des = parseFloat(total * 0.1);
		let sgs = parseFloat(total * 0.09);
		let cgs = parseFloat(total * 0.09);

		tamt.value = total.toFixed(2);
		tdec.value = des.toFixed(2);
		sgst.value = sgs.toFixed(2);
		cgst.value = cgs.toFixed(2);
		console.log(typeof pymt);
		payamt.value = ((total + sgs + cgs) - des).toFixed(2);
		prtamt.value = (total + sgs + cgs).toFixed(2);

	}
</script>
</head>
<body>
	<form action="CustBill.jsp" method="get">
		<table align="center">
			<caption>
				<h2>*Customer Bill*</h2>
			</caption>
			<tr>
				<td>Customer ID</td>
				<td>: <input type="text" name="cid" id="cid">
				</td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td>: <input type="text" name="cname" id="cname">
				</td>
			</tr>
			<tr>
				<td>Customer Phone No</td>
				<td>: <input type="text" name="cpone" id="cpone">
				</td>
			</tr>
			<tr>
				<td colspan=2><hr /></td>
			</tr>
			<tr>
				<td><b>Product Name</b></td>
				<td>: <b>Price</b>
				</td>
			</tr>
			<tr>
				<td><input type="text" name="pname1" id="pname1"></td>
				<td>: <input type="text" name="p1prc" id="p1prc">
				</td>
			</tr>
			<tr>
				<td><input type="text" name="pname2" id="pname2"></td>
				<td>: <input type="text" name="p2prc" id="p2prc">
				</td>
			</tr>
			<tr>
				<td><input type="text" name="pname3" id="pname3"></td>
				<td>: <input type="text" name="p3prc" id="p3prc">
				</td>
			</tr>
			<tr>
				<td><input type="text" name="pname4" id="pname4"></td>
				<td>: <input type="text" name="p4prc" id="p4prc">
				</td>
			</tr>
			<tr>
				<td><input type="text" name="pname5" id="pname5"></td>
				<td>: <input type="text" name="p5prc" id="p5prc">
				</td>
			</tr>
			<tr>
				<td colspan=2 align="center">
					<hr /> <input type="button" value="Show" id="show"
					onclick="showBill()">
				</td>
			</tr>
			<tr>
				<td>Total</td>
				<td>: <input type="text" name="tamt" id="tamt">
				</td>
			</tr>
			<tr>
				<td>Discount</td>
				<td>: <input type="text" name="tdec" id="tdec">
				</td>
			</tr>
			<tr>
				<td colspan=2><hr /></td>
			</tr>
			<tr>
				<td>SGST</td>
				<td>: <input type="text" name="sgst" id="sgst">
				</td>
			</tr>
			<tr>
				<td>CGST</td>
				<td>: <input type="text" name="cgst" id="cgst">
				</td>
			</tr>
			<tr>
				<td colspan=2><hr /></td>
			</tr>
			<tr>
				<td>Payable Amount</td>
				<td>: <input type="text" name="payamt" id="payamt">
				</td>
			</tr>
			<tr>
				<td>Print Bill</td>
				<td>: <input type="text" name="prtamt" id="prtamt">
				</td>
			</tr>
			<tr>
				<td colspan=2><hr /></td>
			</tr>
		</table>
	</form>

	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3 class="animate-charcter">Ganesh</h3>
			</div>
		</div>
	</div>

</body>
</html>