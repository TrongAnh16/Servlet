
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<style>
  .message {
    color: dodgerblue;
  }
</style>
<body>
<h1>Edit Customer</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/products">Back to product list</a>
</p>
<form method="post">
  <fieldset>
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
      <tr>
        <td></td>
        <td><input type="submit" value="Update product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
