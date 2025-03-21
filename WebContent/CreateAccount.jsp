<%@ page import="cn.techtutorial.model.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <%-- Include the navbar if needed --%>
    <%@ include file="/includes/navbar.jsp" %>

    <div class="container">
        <div class="card w-50 mx-auto my-5" style="background-color: #f0f8ff; border-radius: 10px;">
            <div class="card-header text-center" style="background-color: #007bff; color: white;">Create Account</div>
            <div class="card-body">
                <%-- Display error message if there's any --%>
                <%
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                <div class="alert alert-danger" role="alert">
                    <%= errorMessage %>
                </div>
                <%
                    }
                %>

                <form action="create-account" method="post">
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" class="form-control" name="name" id="name" required placeholder="Enter your full name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" class="form-control" name="email" id="email" required placeholder="Enter your email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" id="password" required placeholder="Enter a password">
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" required placeholder="Confirm your password">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Create Account</button>
                    </div>
                </form>
                <div class="text-center mt-3">
                    <a href="login.jsp">Already have an account? Login here</a>
                </div>
            </div>
        </div>
    </div>

    <%-- Include footer if needed --%>
    <%@ include file="/includes/footer.jsp" %>
</body>
</html>
