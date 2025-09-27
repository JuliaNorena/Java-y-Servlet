package com.example.inventory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "InventoryServlet", urlPatterns = "/inventory")
public class InventoryServlet extends HttpServlet {

    private static final List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Queso mozzarella", 10, 12.50));
        products.add(new Product(2, "Quesito", 20, 8.75));
        products.add(new Product(3, "Queso campesino", 50, 1.25));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("products", products);
        getServletContext().getRequestDispatcher("/pages/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("productId");
        String quantityStr = req.getParameter("quantity");
        String priceStr = req.getParameter("price");

        int id = Integer.parseInt(idStr);
        int quantity = 0;
        double price = 0.0;
        try {
            quantity = Integer.parseInt(quantityStr);
        } catch (NumberFormatException e) {
            // dejar por defecto 0
        }
        try {
            price = Double.parseDouble(priceStr);
        } catch (NumberFormatException e) {
            // dejar por defecto 0.0
        }

        Product found = null;
        for (Product p : products) {
            if (p.getId() == id) {
                found = p;
                break;
            }
        }

        String message;
        if (found != null) {
            found.setQuantity(quantity);
            found.setPrice(price);
            message = "Inventario actualizado para: " + found.getName();
        } else {
            message = "Producto no encontrado";
        }

        req.setAttribute("message", message);
        req.setAttribute("product", found);
        getServletContext().getRequestDispatcher("/pages/updateResult.jsp").forward(req, resp);
    }
}