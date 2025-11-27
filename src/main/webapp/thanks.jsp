<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks for joining our email list</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>Thanks for joining our email list</h2>
        
        <p>Here is the information that you entered:</p>
        
        <ul class="info-list">
            <li><strong>Email:</strong> ${email}</li>
            <li><strong>First Name:</strong> ${firstName}</li>
            <li><strong>Last Name:</strong> ${lastName}</li>
        </ul>
        
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>
        
        <div class="return-button">
            <button onclick="window.location.href='emailList'">Return</button>
        </div>
    </div>
</body>
</html>

