<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sach khach hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="table" style="background-color: paleturquoise;box-shadow: 0 0 20px black" >
        <h3 class="text-center w-100">Danh sách khách hàng </h3>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Tên</th>
                <th scope="col">Ngày sinh</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Ảnh</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope['users']}" var="user">
                <tr >
                    <td scope="row">${user.getName()}</td>
                    <td>${user.getDob()}</td>
                    <td>${user.getAddress()}</td>
                    <td><img style="width: 70px" src="${user.getLinkImg()}" alt="anh"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</html>