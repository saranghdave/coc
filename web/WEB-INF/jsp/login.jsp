<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- <script type="text/javascript" src="/CoC/login/web/WEB-INF/js/jquery.js"></script> -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<title>Checkout</title>
</head>

<body>
	<form action="" id="loginForm">
		<br/>
		<h2>Welcome to D-Mart !</h2>
		<hr/>
			<table border="1">
				<tr align="center">
					<td align="center">User Name: <input id="username" name="username" type="text"/></td>
				</tr>
				<tr align="center">
					<td align="center">Password: <input id="password" name="password" type="password"/></td>
				</tr>
				<tr align="center">
					<td align="center"><input type="button" onclick="login()" value="Login !"/></td>
				</tr>
			</table>
		<hr/>
	</form>
</body>
<script type="text/javascript">
/* 
	function calculateCost(quantity)
	{
		alert(quantity);
		
		alert('Cost : ' + $('#cost').val());
		alert('quantity : ' + $('#quantity').val());
		alert('tax : ' + $('#tax').val());
		
		alert('Total Cost : ' + ($('#cost').val() * $('#quantity').val()) + ($('#cost').val() * $('#quantity').val() * $('#tax').val() / 100));
		
		$('#totalCost').val(($('#cost').val() * $('#quantity').val()) + ($('#cost').val() * $('#quantity').val() * $('#tax').val() / 100));
	} */
	
	function login()
	{
		document.forms[0].action = "/CoC/home/";
		document.forms[0].submit();
	}

</script>
</html>