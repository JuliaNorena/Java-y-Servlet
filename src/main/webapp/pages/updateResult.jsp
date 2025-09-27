<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f6fbfa; }
        .card{ background:white; border-radius:6px; padding:20px; max-width:900px; margin:20px auto; box-shadow: 0 1px 3px rgba(0,0,0,0.06); }
        .success{ color:#0e6b56; }
    </style>
</head>
<body>
<div class="card">
    <h3 class="success">${message}</h3>

    <c:if test="${not empty product}">
        <p><strong>Producto:</strong> ${product.name}</p>
        <p><strong>Cantidad:</strong> ${product.quantity}</p>
        <p><strong>Precio:</strong> ${product.price}</p>
    </c:if>

    <p><a href="/inventory">Volver</a></p>
</div>
</body>
</html>