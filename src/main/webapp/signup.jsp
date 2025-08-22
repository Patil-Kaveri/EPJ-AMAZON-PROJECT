	<!DOCTYPE html>
	<html>
	<head>
	    <title>Amazon Clone - Sign Up</title>
	    <link rel="stylesheet" href="styles.css">
	</head>
	<body>
	<%
	    String error = request.getParameter("error");
	    if (error != null) {
	%>
	    <p style="color: red;">Error: <%= error %></p>
	<%
	    }
	%>
	
	    <div class="container">
	        <h2>Create your Amazon account</h2>
	        <form action="SignupServlet" method="post">
	            <label>Full Name</label><br>
	            <input type="text" name="fullname" required><br>
	
	            <label>Email</label><br>
	            <input type="email" name="email" required><br>
	
	            <label>Password</label><br>
	            <input type="password" name="password" required><br>
		
	            <label>Mobile Number</label><br>
	            <input type="text" name="mobile" required><br>
	
	            <input type="submit" value="Sign Up">
	        </form>
	        <p>Already have an account? <a href="login.jsp">Sign In</a></p>
	    </div>
	</body>
	</html>
