<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete User</title>
</head>
<body>
<h1>Delete success</h1>
<p>
    <a href="/users">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <tr>
            <td>Name:</td>
            <td>${requestScope["user"].getName()}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${requestScope["user"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${requestScope["user"].getCountry()}</td>
        </tr>
        <tr>
            <td><input type="submit" value="Delete customer"></td>
            <td><a href="/users">Back to customer list</a></td>
        </tr>
    </fieldset>
</form>
</body>
</html>

