<%-- 
    Document   : index
    Created on : Sep 29, 2024, 6:14:14 PM
    Author     : Nguyễn Thanh Hiền
--%>

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
        <h1>CD list</h1>
        <h2><a href="viewcart.jsp">View Cart</a></h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Add Cart</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Product> products = (List<Product>)session.getAttribute("products");
                    for(Product p : products){
                %>
                <tr>
                    <td><%= p.getId()%></td>
                    <td><%= p.getName()%></td>
                    <td><%= p.getPrice()%></td>
                    <td><a href="AddCart?id=<%= p.getId() %>">Add Cart</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            
    </body>
</html>
