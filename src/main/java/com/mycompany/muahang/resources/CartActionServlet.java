package com.mycompany.muahang.resources;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartActionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if ("update".equals(action)) {
            String productCode = request.getParameter("productCode");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            cart.updateItem(productCode, quantity);
            response.sendRedirect("cart.jsp");
        } else if ("remove".equals(action)) {
            String productCode = request.getParameter("productCode");
            cart.removeItem(productCode);
            response.sendRedirect("cart.jsp");
        } else if ("continueShopping".equals(action)) {
            response.sendRedirect("index.jsp");
        }
    }
}