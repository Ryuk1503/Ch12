<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Join our email list</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Join our email list</h2>
        <p>To join our email list, enter your name and email address below.</p>
        <p style="color: #888; font-style: italic;">TODO write content</p>
        
        <form action="emailList" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
            </div>
            
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
            </div>
            
            <button type="submit">Join Now</button>
        </form>
        
        <div style="margin-top: 20px; text-align: center;">
            <a href="index.jsp" style="color: #87ceeb; text-decoration: none;">← Quay lại trang chủ</a>
        </div>
    </div>
</body>
</html>

