<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>User Management Application</title>
</head>

<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <form action="/users?action=search" method="get">
                <td colspan="2" style="text-align: center">Search User</td>
                <td colspan="2">
                    <input name="action"  value="search" hidden>
                    <input type="text" name="q" style="width: 100%" />
                </td>

                <td>
                    <input type="submit" value="Search" />
                </td>
            </form>
        </tr>
        <tr>
          <td colspan="5" style="text-align: center">
              <a href="/users?action=order">
                  <button type="button" class="btn btn-success">OrderByNameASC</button>
              </a>
          </td>
        </tr>
    </table>
</div>
</body>
</html>
