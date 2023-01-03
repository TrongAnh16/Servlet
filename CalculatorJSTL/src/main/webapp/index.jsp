<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Calculator</title>
</head>

<body>
<form action="/calculator" method="post">
    <div class="form-group">
        <label for="exampleFormControlInput1">First operand: </label>
        <input type="text" class="form-control" name = "firstOperand" id="exampleFormControlInput1" >
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect1">Operator: </label>
        <select name="operator" class="form-control" id="exampleFormControlSelect1" >
            <option value="+">Addition(+)</option>
            <option value="*">Multiple(*)</option>
            <option value="/">Division(/)</option>
            <option value="-">Minus(-)</option>
        </select>
    </div>

    <div class="form-group">
        <label for="exampleFormControlInput1">Second operand: </label>
        <input type="text" class="form-control" name="secondOperand" id="exampleFormControlInput2">
    </div>

    <button type="submit" id ="calculate" class="btn btn-primary">Calculate</button>
</form>
</body>
</html>