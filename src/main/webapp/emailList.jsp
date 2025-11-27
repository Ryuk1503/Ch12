<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Subscription</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="header">
        <div class="header-content">
            <h1>Email Subscription</h1>
            <p>Subscribe to receive the latest information and updates</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-card">
            <p style="text-align: center; margin-bottom: 30px;">
                Please fill in your information in the form below to subscribe to our email list.
            </p>
            
            <form action="emailList" method="post">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="your.email@example.com" required>
                </div>
                
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>
                </div>
                
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>
                </div>
                
                <div style="text-align: center; margin-top: 30px;">
                    <button type="submit">Subscribe Now</button>
                </div>
            </form>
            
            <div class="return-button">
                <a href="index.jsp" class="back-link">← Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>

