<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    String username = (session != null) ? (String) session.getAttribute("username") : null;
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="auth">
    <div class="container">
        <h2>Welcome, <%= username %>!</h2>
        <p>You are successfully logged in to your dashboard.</p>
        <br>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
