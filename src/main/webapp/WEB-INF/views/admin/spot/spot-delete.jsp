<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Usuń Spot</title>
</head>
<body>
<p>Czy chcesz usunąć spot?</p>
<p>Nazwa: ${fishingSpot.name}</p>
<form:form method="post" action="${pageContext.request.contextPath}/admin/spot/delete" csrf="${_csrf.parameterName}" csrf_token="${_csrf.token}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="hidden" name="id" value="${fishingSpot.id}" />
    <button type="submit">Usuń spot</button>
</form:form>
</body>
</html>