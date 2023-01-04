
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>View product</h1>
<p>
  <a href="/products">Back to product list</a>
</p>
<table>
  <tr>
    <td>Name: </td>
    <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
  </tr>
  <tr>
    <td>Price: </td>
    <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
  </tr>
  <tr>
    <td>Quantity: </td>
    <td><input type="text" name="quantity" id="quantity" value="${requestScope["product"].getQuantity()}"></td>
  </tr>
  <tr>
    <td>Description: </td>
    <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
  </tr>
</table>
</body>
</html>
