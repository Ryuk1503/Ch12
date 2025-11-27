<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="header">
        <div class="header-content">
            <h1>Thank You!</h1>
            <p>Thank you for subscribing to our email list</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-card">
            <div style="text-align: center; margin-bottom: 30px;">
                <span style="font-size: 64px; color: #64ffda;">✓</span>
                <h2 style="color: #64ffda; margin-top: 20px;">Subscription Successful!</h2>
            </div>
            
            <p style="text-align: center; margin-bottom: 30px;">
                Here is the information you entered:
            </p>
            
            <ul class="info-list">
                <li><strong>Email:</strong> ${email}</li>
                <li><strong>First Name:</strong> ${firstName}</li>
                <li><strong>Last Name:</strong> ${lastName}</li>
            </ul>
            
            <p style="text-align: center; margin-top: 30px;">
                You can return to subscribe another email address or use other functions.
            </p>
            
            <div class="return-button">
                <button onclick="window.location.href='emailList'" style="margin-right: 15px;">Subscribe Another</button>
                <a href="index.jsp" class="back-link">Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>

