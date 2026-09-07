<%@page import="com.mycompany.muahang.resources.Cart"%>
<%@page import="com.mycompany.muahang.resources.CartItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Cart cart = (Cart) session.getAttribute("cart");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

<h1>Your cart</h1>

<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>

    <% for (CartItem item : cart.getItems()) { %>

    <tr>
        <td>
            <form action="CartActionServlet" method="post">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="productCode" value="<%= item.getProduct().getCode() %>">
                       
                <input type="number" name="quantity" value="<%= item.getQuantity() %>" min="1">
                <input type="submit" value="Update">
            </form>
        </td>

        <td>
            <%= item.getProduct().getDescription() %>
        </td>

        <td>
            $<%= String.format("%.2f", item.getProduct().getPrice()) %>
        </td>
        <td>
            $<%= String.format("%.2f",item.getProduct().getPrice() * item.getQuantity()) %>
        </td>
        <td>
            <form action="CartActionServlet" method="post">
                <input type="hidden" name="action" value="remove">
                <input type="hidden" name="productCode"
                       value="<%= item.getProduct().getCode() %>">
                <input type="submit" value="Remove Item">
            </form>
        </td>
    </tr>

    <% } %>

</table>

<p>To change the quantity, enter the new quantity and click on the Update button.</p>

<h3>
    Total:
    $<%= String.format("%.2f", cart.getTotal()) %>
</h3>

<form action="CartActionServlet" method="post">
    <input type="hidden" name="action" value="continueShopping">
    <input type="submit" value="Continue Shopping">
</form>

</body>
</html>