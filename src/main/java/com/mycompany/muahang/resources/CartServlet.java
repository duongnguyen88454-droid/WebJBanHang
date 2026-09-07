/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.muahang.resources;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CartServlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String action = request.getParameter("action");
    if ("continueShopping".equals(action)) {
        response.sendRedirect("index.jsp");
        return;
    }
    
    HttpSession session = request.getSession();
    Cart cart = (Cart) session.getAttribute("cart");

    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }

    String productCode = request.getParameter("productCode");
    String description = request.getParameter("description");
    float price =  Float.parseFloat(request.getParameter("price"));

    Product product = new Product(productCode, description, price);
    cart.addItem(product);
    response.sendRedirect("cart.jsp");
}
    
    @Override protected void doGet(HttpServletRequest request,HttpServletResponse respone)
       throws ServletException,IOException {
                doPost(request ,respone);
    } 
}
