<!DOCTYPE html>
<html>
<head>
    <title>Amazon Clone - Sign In</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Sign-In</h2>
        <form action="LoginServlet" method="post">
            <label>Email</label><br>
            <input type="email" name="email" required><br>

            <label>Password</label><br>
            <input type="password" name="password" required><br>

            <input type="submit" value="Login">
        </form>
        <p>New to Amazon? <a href="signup.jsp">Create your account</a></p>
    </div>
</body>
</html>
