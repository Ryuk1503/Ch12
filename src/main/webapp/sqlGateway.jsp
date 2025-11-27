<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The SQL Gateway</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h2>The SQL Gateway</h2>
        <p>Enter an SQL statement and click the Execute button.</p>
        
        <form action="sqlGateway" method="post">
            <div class="form-group">
                <label for="sqlStatement">SQL statement:</label>
                <textarea id="sqlStatement" name="sqlStatement" required>${sqlStatement != null ? sqlStatement : 'select * from User'}</textarea>
            </div>
            
            <button type="submit">Execute</button>
        </form>
        
        <div class="form-group">
            <label>SQL result:</label>
            <div class="result-area">
                ${sqlResult != null ? sqlResult : ''}
            </div>
        </div>
        
        <div style="margin-top: 20px; text-align: center;">
            <a href="index.jsp" style="color: #87ceeb; text-decoration: none;">← Quay lại trang chủ</a>
        </div>
    </div>
</body>
</html>

