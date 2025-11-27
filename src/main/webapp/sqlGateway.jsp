<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Gateway</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="header">
        <div class="header-content">
            <h1>SQL Gateway</h1>
            <p>Enter an SQL statement and click Execute to run it</p>
        </div>
    </div>
    
    <div class="container">
        <div class="content-card">
            <form action="sqlGateway" method="post">
                <div class="form-group">
                    <label for="sqlStatement">SQL Statement</label>
                    <textarea id="sqlStatement" name="sqlStatement" rows="8" required>${sqlStatement != null ? sqlStatement : 'select * from User'}</textarea>
                </div>
                
                <div style="text-align: center; margin-top: 25px;">
                    <button type="submit">Execute Query</button>
                </div>
            </form>
            
            <div class="form-group" style="margin-top: 40px;">
                <label>Query Results</label>
                <div class="result-area">
                    ${sqlResult != null ? sqlResult : 'Results will be displayed here after executing the SQL statement...'}
                </div>
            </div>
            
            <div class="return-button">
                <a href="index.jsp" class="back-link">← Back to Home</a>
            </div>
        </div>
    </div>
</body>
</html>

