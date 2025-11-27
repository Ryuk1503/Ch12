package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SQLGatewayServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Hiển thị trang SQL Gateway
        request.getRequestDispatcher("/sqlGateway.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy SQL statement từ form
        String sqlStatement = request.getParameter("sqlStatement");
        
        // Xử lý SQL statement (ở đây chỉ là demo, không thực sự chạy SQL)
        String sqlResult = processSQL(sqlStatement);
        
        // Set kết quả vào request attribute
        request.setAttribute("sqlResult", sqlResult);
        request.setAttribute("sqlStatement", sqlStatement);
        
        // Forward về trang SQL Gateway
        request.getRequestDispatcher("/sqlGateway.jsp").forward(request, response);
    }
    
    private String processSQL(String sqlStatement) {
        if (sqlStatement == null || sqlStatement.trim().isEmpty()) {
            return "No SQL statement provided.";
        }
        
        // Đây là demo, không thực sự kết nối database
        // Trong thực tế, bạn sẽ cần kết nối database và thực thi SQL
        String sql = sqlStatement.trim().toLowerCase();
        
        if (sql.startsWith("select")) {
            return "SQL executed successfully.\n" +
                   "Query: " + sqlStatement + "\n\n" +
                   "Result: (This is a demo. In a real application, " +
                   "this would display the actual query results from the database.)";
        } else if (sql.startsWith("insert") || sql.startsWith("update") || 
                   sql.startsWith("delete")) {
            return "SQL executed successfully.\n" +
                   "Query: " + sqlStatement + "\n\n" +
                   "Rows affected: (This is a demo. In a real application, " +
                   "this would show the number of affected rows.)";
        } else {
            return "SQL executed successfully.\n" +
                   "Query: " + sqlStatement + "\n\n" +
                   "Note: This is a demo application. " +
                   "No actual database connection is established.";
        }
    }
}

