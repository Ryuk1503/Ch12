package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EmailListServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Hiển thị trang đăng ký email
        request.getRequestDispatcher("/emailList.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin từ form
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
        // Validate input
        if (email == null || email.trim().isEmpty() ||
            firstName == null || firstName.trim().isEmpty() ||
            lastName == null || lastName.trim().isEmpty()) {
            // Nếu thiếu thông tin, quay lại form
            request.setAttribute("error", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("/emailList.jsp").forward(request, response);
            return;
        }
        
        // Set thông tin vào request attribute để hiển thị trên trang thanks
        request.setAttribute("email", email);
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        
        // Trong thực tế, bạn có thể lưu thông tin vào database ở đây
        // saveToDatabase(email, firstName, lastName);
        
        // Forward đến trang thanks
        request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }
}

