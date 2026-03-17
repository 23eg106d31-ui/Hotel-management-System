<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HotelSys | Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap');
        
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Inter', sans-serif; }
        body { background: #f4f7f6; display: flex; justify-content: center; align-items: center; height: 100vh; color: #333; }
        .login-wrapper {
            background: white; border-radius: 12px; padding: 40px; width: 100%; max-width: 400px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05); text-align: center;
        }
        .login-wrapper h2 { margin-bottom: 8px; font-weight: 600; color: #1a1a1a; }
        .login-wrapper p { font-size: 14px; color: #666; margin-bottom: 24px; }
        .form-group { margin-bottom: 20px; text-align: left; }
        .form-group input { 
            width: 100%; padding: 12px 16px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; 
            outline: none; transition: border 0.3s;
        }
        .form-group input:focus { border-color: #007bff; }
        .btn-primary { 
            width: 100%; padding: 12px; background: #007bff; color: white; border: none; border-radius: 8px; 
            font-size: 16px; font-weight: 500; cursor: pointer; transition: background 0.3s; margin-top: 10px;
        }
        .btn-primary:hover { background: #0056b3; }
        .links { margin-top: 20px; font-size: 14px; }
        .links a { color: #007bff; text-decoration: none; margin: 0 10px; transition: color 0.3s; }
        .links a:hover { color: #0056b3; text-decoration: underline; }
        .error-msg { color: #dc3545; font-size: 14px; margin-bottom: 15px; font-weight: 500; }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <h2>Welcome Back</h2>
        <p>Please log in to your account</p>
        
        <c:if test="${not empty error}">
            <div class="error-msg">${error}</div>
        </c:if>

        <form method="post" action="/login">
            <div class="form-group">
                <input type="email" name="email" placeholder="Email Address" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="btn-primary">Login</button>
        </form>
        
        <div class="links">
            <a href="/register">Create Account</a> | 
            <a href="/adminlogin">Admin Login</a>
        </div>
    </div>
</body>
</html>