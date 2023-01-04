
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Deleting customer</title>
</head>
<body>
  <h1>Deleting customer</h1>
  <p>
    <a href="/customers">Back to customer list</a>
  </p>
<p>
  <form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
      <legend>Customer information</legend>
        <tr>
          <td>Name: </td>
          <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
          <td>Email: </td>
          <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
          <td>Address: </td>
          <td>${requestScope["customer"].getAddress()}</td>
        </tr>
      <tr>
        <td><input type="submit" value="Delete customer"></td>
        <td><a href="/customers">Back to customer list</a></td>
      </tr>
    </fieldset>
  </form>
</p>
</body>
</html>
