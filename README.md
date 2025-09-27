Proyecto de ejemplo: Inventario con Servlets y JSP

Cómo ejecutar (Windows PowerShell):
1. Ir al directorio del proyecto:
   cd "c:\Users\USER\Documents\JULIA\SENA\TECNOLOGIA\Java y Servlet"
2. Ejecutar con Jetty Maven plugin:
   mvn jetty:run

Luego abrir en el navegador: http://localhost:8080/inventory

Notas:
- Usa GET para cargar `index.jsp` y POST para enviar el formulario.
- Las páginas JSP usan JSTL para iterar la lista de productos.
