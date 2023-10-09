<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <meta charset="UTF-8">
  <title>Admin dashboard</title>
</head>
<body>
<h1>Admin dashboard</h1>

<a class="btn btn-primary" href='<c:url value="/admin/spot/list"/>' role="button">Spoty</a>
<a class="btn btn-primary" href='<c:url value="/admin/fish/list"/>' role="button">Ryby</a>

</body>
</html>