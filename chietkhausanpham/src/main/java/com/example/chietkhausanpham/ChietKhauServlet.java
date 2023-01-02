package com.example.chietkhausanpham;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ChietKhauServlet", value = "/chietkhau")
public class ChietKhauServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float percent = Float.parseFloat(request.getParameter("percent"));

        float amount = price * percent * ((float) 0.01) ;
        float total = price - amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Description " + description +"</h1>");
        writer.println("<h1>List Price " + price +"</h1>");
        writer.println("<h1>Discount Percent " + percent +"</h1>");
        writer.println("<h1>Discount Amount " + amount +"</h1>");
        writer.println("<h1>Total " + total +"</h1>");
    }
}
