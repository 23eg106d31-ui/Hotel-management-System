<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LotusStay | Create Account</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600&display=swap');
        
        :root {
            --primary: #d63384;
            --primary-dark: #b0246a;
            --bg: #fcf9f5;
            --card-bg: #fff;
            --text: #4a4a4a;
            --text-light: #888;
            --border: #f0e6e1;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Outfit', sans-serif; }
        
        body { 
            background: var(--bg);
            background-image: 
                radial-gradient(at 0% 0%, rgba(214, 51, 132, 0.05) 0px, transparent 50%),
                radial-gradient(at 100% 100%, rgba(245, 230, 215, 0.3) 0px, transparent 50%);
            display: flex; 
            justify-content: center; 
            align-items: center; 
            min-height: 100vh; 
            color: var(--text); 
            padding: 40px 20px;
        }
        
        .register-wrapper {
            background: var(--card-bg); 
            border-radius: 24px; 
            padding: 48px; 
            width: 100%; 
            max-width: 500px;
            box-shadow: 0 20px 40px rgba(214, 51, 132, 0.05); 
            border: 1px solid var(--border);
            position: relative;
            overflow: hidden;
            animation: slideUp 0.6s cubic-bezier(0.23, 1, 0.32, 1);
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .register-wrapper::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; height: 6px;
            background: linear-gradient(90deg, var(--primary), #f5a5c0);
        }
        
        .header { text-align: center; margin-bottom: 32px; }
        .header h2 { font-size: 28px; font-weight: 600; color: var(--primary); margin-bottom: 8px; }
        .header p { font-size: 15px; color: var(--text-light); }
        
        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-bottom: 16px; }
        .form-group { margin-bottom: 20px; }
        .full-width { grid-column: span 2; }
        
        .form-group label { 
            display: block; font-size: 14px; font-weight: 500; margin-bottom: 8px; color: #555; 
        }
        
        .form-group input, .form-group select { 
            width: 100%; padding: 12px 16px; border: 1px solid var(--border); border-radius: 12px; font-size: 15px; 
            outline: none; transition: all 0.3s ease; background-color: #fafafa;
        }
        
        .form-group input:focus, .form-group select:focus { 
            border-color: var(--primary); 
            background-color: #fff;
            box-shadow: 0 0 0 4px rgba(214, 51, 132, 0.1);
        }
        
        .btn-primary { 
            width: 100%; padding: 14px; background: var(--primary); color: white; border: none; border-radius: 12px; 
            font-size: 16px; font-weight: 600; cursor: pointer; transition: all 0.3s ease; margin-top: 12px;
            box-shadow: 0 4px 12px rgba(214, 51, 132, 0.2);
        }
        
        .btn-primary:hover { 
            background: var(--primary-dark); 
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(214, 51, 132, 0.3);
        }
        
        .btn-primary:active { transform: translateY(0); }
        
        .links { margin-top: 24px; font-size: 14px; text-align: center; color: var(--text-light); }
        .links a { color: var(--primary); text-decoration: none; font-weight: 600; transition: color 0.3s; }
        .links a:hover { color: var(--primary-dark); text-decoration: underline; }

        @media (max-width: 480px) {
            .form-grid { grid-template-columns: 1fr; }
            .full-width { grid-column: span 1; }
            .register-wrapper { padding: 32px 24px; }
        }
    </style>
</head>
<body>
    <div class="register-wrapper">
        <div class="header">
            <h2>Create Account</h2>
            <p>Join LotusStay for an exclusive experience</p>
        </div>
        
        <form method="post" action="/register">
            <div class="form-grid">
                <div class="form-group full-width">
                    <label>Full Name</label>
                    <input type="text" name="name" placeholder="John Doe" required>
                </div>
                
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" placeholder="johndoe123" required>
                </div>
                
                <div class="form-group">
                    <label>Country</label>
                    <select name="country" required>
                        <option value="" disabled selected>Select City</option>
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <option value="India">India</option>
                        <option value="Canada">Canada</option>
                        <option value="Australia">Australia</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" placeholder="john@example.com" required>
            </div>
            
            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" name="phoneno" placeholder="+1 234 567 890" required>
            </div>
            
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="••••••••" required>
            </div>
            
            <button type="submit" class="btn-primary">Register Now</button>
        </form>
        
        <div class="links">
            Already have an account? <a href="/login">Log in here</a>
        </div>
    </div>
</body>
</html>