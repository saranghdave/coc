<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Counter</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
</head>

<body>
	<form action="" id="counterForm">
		<h2>Welcome, ${username}!</h2>
		<hr/>
		<table style="text-align: center;">
			<tr align="center">
				<td align="center">Item Code: <input id="code" type="text" onchange="fetchItemDetails(this.value)"/></td>
				<td align="center">Item Name: <input id="name" type="text" readonly="readonly"/></td>
			</tr>
			<tr align="center">
				<td align="center">Quantity: <input id="quantity" type="text" onchange="calculateCost(this.value)" value="0"/></td>
				<td align="center">Category: <input id="category" type="text" readonly="readonly"/></td>
			</tr>
			<tr align="center">
				<td align="center">Cost: <input id="cost" type="text" readonly="readonly"/></td>
				<td align="center">Tax (in %): <input id="tax" type="text" readonly="readonly"/></td>
			</tr>
			<tr align="center">
				<td align="center">Total Cost: <input id="totalCost" type="text" readonly="readonly"/></td>
			</tr>
		</table>
		<hr/>
	</form>
	
</body>
<script type="text/javascript">

	function calculateCost(quantity)
	{
		$('#totalCost').val(($('#cost').val() * $('#quantity').val()) + ($('#cost').val() * $('#quantity').val() * $('#tax').val() / 100));
	}
	
	function fetchItemDetails(code)
	{
		if($('#code').val() != -1)
		{
		    $.ajax({
			    	url: "/CoC/item?code=" + code, 
			    	success: function(result){
			    		jQuery('#name').val(result.name);
			    	}
			    }
		    );
		}
	}

</script>
</html>