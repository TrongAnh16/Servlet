<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
    <h2>Product Discount Calculator</h2>

    <form action="/chietkhau" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Product Description</label><br>
            <input type="text" class="form-control" id="exampleInputEmail1" name="description" placeholder="Description">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">List Price</label><br>
            <input type="number" class="form-control" id="exampleInputPassword1" name="price" placeholder="Price">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Discount Percent</label><br>
            <input type="number" class="form-control" id="exampleInputPassword2" name="percent" placeholder="Percent">
        </div>

        <input type = "submit" id = "submit" value = "Calculate Discount"/>
    </form>
</body>
</html>