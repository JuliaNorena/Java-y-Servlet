<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Actualización Inventario</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f6fbfa; }
        .card{ background:white; border-radius:6px; padding:20px; max-width:900px; margin:20px auto; box-shadow: 0 1px 3px rgba(0,0,0,0.06); }
        label{ display:block; margin-top:12px; color:#0b6b61; }
        input[type=text], select{ width:100%; padding:10px; border:1px solid #e6e6e6; border-radius:4px; }
        .btn{ background:#0e6b56; color:white; padding:12px 20px; border-radius:6px; border:none; margin-top:14px; cursor:pointer; }
    </style>
</head>
<body>
<div class="card">
    <h3 style="color:#0b6b61;">Actualización Inventario</h3>
    <form action="/inventory" method="post">
        <label for="productId">Producto</label>
        <select id="productId" name="productId">
            <c:forEach var="p" items="${products}">
                <option value="${p.id}">${p.name}</option>
            </c:forEach>
        </select>

        <label for="quantity">Cantidad</label>
        <input type="text" id="quantity" name="quantity" />

        <label for="price">Precio</label>
        <input type="text" id="price" name="price" />

        <button type="submit" class="btn">Actualizar Inventario</button>
    </form>
</div>
</body>
</html>