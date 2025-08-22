<%
    if (session != null) {
        session.invalidate(); // destroy session
    }
    response.sendRedirect("login.jsp"); // back to login
%>
		