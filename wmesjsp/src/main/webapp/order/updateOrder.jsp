<%@ page import="wmes.dto.OrderDTO"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<style>
.center {
	margin: auto;
	width: 80%;
	text-align: left
}

table, th, td {
	border: 1px solid black;
}
</style>
<%
	OrderDTO updateOrder = (OrderDTO) request.getAttribute("orderUpdate");
%>
</head>

<body>
	<div class="center">
		
		<h2 style="color: red"><%=updateOrder%>
		</h2>
	
		<h1>------Modifica Ordine------</h1>
		<form method="POST" action="/wmesjsp/OrderServlet?richiesta=update">

    <input type="hidden" name="order_id" value="<%=updateOrder.getId()%>"  /><br>
    UserId: <input type="text" size="40" maxlength="40" name="user_id" value="<%=updateOrder.getUser().getUserId()%>"  /><br> 
    ClientId: <input type="text" size="40" maxlength="40" name="client_id" value="<%=updateOrder.getClient().getClientId()%>"  /><br> 
    Description: <input type="text" size="40" maxlength="40" name="order_description" value="<%=updateOrder.getDescription()%>"  /><br>
    
	<input type="SUBMIT" value="Modifica">
	
</form>  
		
	</div>
</body>
</html>