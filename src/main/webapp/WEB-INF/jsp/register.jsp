<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HotelSys | Register</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap');
        
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Inter', sans-serif; }
        body { background: #fdfaf6; display: flex; justify-content: center; align-items: center; min-height: 100vh; color: #4a4a4a; padding: 20px; }
        
        .register-wrapper {
            background: white; border-radius: 12px; padding: 40px; width: 100%; max-width: 450px;
            box-shadow: 0 10px 25px rgba(214, 51, 132, 0.08); border-top: 5px solid #d63384;
        }
        .register-wrapper h2 { margin-bottom: 8px; font-weight: 600; color: #d63384; text-align: center; }
        .register-wrapper p { font-size: 14px; color: #666; margin-bottom: 24px; text-align: center; }
        
        .form-group { margin-bottom: 16px; }
        .form-group label { display: block; font-size: 13px; font-weight: 500; margin-bottom: 6px; color: #333; }
        .form-group input, .form-group select { 
            width: 100%; padding: 12px 14px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 14px; 
            outline: none; transition: border 0.3s; background-color: #fcfcfc;
        }
        .form-group input:focus, .form-group select:focus { border-color: #d63384; }
        
        .btn-primary { 
            width: 100%; padding: 12px; background: #d63384; color: white; border: none; border-radius: 8px; 
            font-size: 16px; font-weight: 500; cursor: pointer; transition: background 0.3s; margin-top: 10px;
        }
        .btn-primary:hover { background: #a51f5e; box-shadow: 0 4px 10px rgba(214, 51, 132, 0.3); }
        
        .links { margin-top: 20px; font-size: 14px; text-align: center; }
        .links a { color: #d63384; text-decoration: none; font-weight: 500; transition: color 0.3s; }
        .links a:hover { color: #a51f5e; text-decoration: underline; }
    </style>
</head>
<body>
    <div class="register-wrapper">
        <h2>Create an Account</h2>
        <p>Join us to book the best hotels seamlessly</p>
        
        <form method="post" action="/register">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="username" placeholder="John Doe" required>
            </div>
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" placeholder="john@example.com" required>
            </div>
            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" name="phone" placeholder="+1234567890" pattern="[+0-9]{10,14}" title="Enter a valid phone number" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="••••••••" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            </div>
            
            <button type="submit" class="btn-primary">Register Now</button>
        </form>
        
        <div class="links">
            Already have an account? <a href="/login">Login here</a>
        </div>
    </div>
</body>
</html>