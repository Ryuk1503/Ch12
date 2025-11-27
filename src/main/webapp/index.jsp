<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống Quản lý</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Hệ thống Quản lý</h1>
        <p style="text-align: center; margin-bottom: 30px;">Vui lòng chọn chức năng:</p>
        
        <ul class="menu-list">
            <li class="menu-item">
                <a href="sqlGateway">
                    <span class="menu-icon">📁</span>
                    <span>The SQL Gateway (Chạy câu lệnh SQL)</span>
                </a>
            </li>
            <li class="menu-item">
                <a href="emailList">
                    <span class="menu-icon">✉️</span>
                    <span>Join Email List (Đăng ký nhận tin)</span>
                </a>
            </li>
        </ul>
    </div>
</body>
</html>

