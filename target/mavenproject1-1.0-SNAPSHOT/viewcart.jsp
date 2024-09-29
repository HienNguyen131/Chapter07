<%-- 
    Document   : viewcart
    Created on : Sep 29, 2024, 7:19:13 PM
    Author     : Nguyễn Thanh Hiền
--%>

<%@page import="vn.aptech.entity.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="vn.aptech.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your cart</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
                    if (cart != null && !cart.isEmpty()) {
                        for (CartItem p : cart) {
                %>
                <tr>
                    <td><%= p.getProductId() %></td>
                    <td><%= p.getName() %></td>
                    <td><%= p.getTotal()%></td>
                    <td><%= p.getQuantity() %></td>
                    <td><a href="RemoveCart?id=<%= p.getProductId()%>">Remove Cart</a></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">Your cart is empty.</td> 
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <p><b>To change the quantity</b>, enter the new quantity and click on the Update button.</p>
            <a href="index.jsp">
                <button type="button">Continue Shopping</button>
            </a>

    </body>
</html>
