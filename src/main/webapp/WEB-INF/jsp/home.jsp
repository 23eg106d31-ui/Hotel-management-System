<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LotusStay | Home</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600&display=swap');
        
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Outfit', sans-serif; }
        body { background-color: #fdfaf6; /* Beige */ color: #4a4a4a; }

        /* Navbar Styling */
        .navbar {
            background-color: #ffd1dc; /* Soft Pink */
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 12px rgba(255, 182, 193, 0.2);
            position: sticky;
            top: 0;
            z-index: 100;
        }
        .navbar .logo { font-size: 26px; font-weight: 600; color: #d63384; text-decoration: none; }
        .nav-links { list-style: none; display: flex; gap: 30px; }
        .nav-links a {
            text-decoration: none;
            color: #d63384;
            font-size: 16px;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        .nav-links a:hover { color: #a51f5e; }
        .nav-links .btn-logout {
            background-color: #d63384;
            color: #fff;
            padding: 8px 20px;
            border-radius: 20px;
        }
        .nav-links .btn-logout:hover { background-color: #a51f5e; color: #fff; }

        /* Hero Section */
        .hero {
            height: 80vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background: linear-gradient(135deg, #fdfaf6 0%, #ffe6eb 100%);
            padding: 0 20px;
        }
        .hero h1 { font-size: 4rem; color: #d63384; margin-bottom: 20px; font-weight: 600; }
        .hero p { font-size: 1.2rem; color: #6c757d; max-width: 600px; margin-bottom: 40px; line-height: 1.6; }
        .hero .cta {
            padding: 15px 40px;
            font-size: 1.1rem;
            background-color: #d63384;
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-decoration: none;
            box-shadow: 0 8px 20px rgba(214, 51, 132, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .hero .cta:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(214, 51, 132, 0.4);
            background-color: #a51f5e;
        }
    </style>
</head>
<body>

    <!-- Beautiful Navbar embedded directly since other files were confusingly structured -->
    <nav class="navbar">
        <a href="/home" class="logo">LotusStay</a>
        <ul class="nav-links">
            <li><a href="/home">Home</a></li>
            <li><a href="/searchHotel">Hotels</a></li>
            <li><a href="/logout" class="btn-logout">Logout</a></li>
        </ul>
    </nav>

    <!-- Clean, Neat Home Landing Page -->
    <div class="hero">
        <h1>Welcome to Comfort.</h1>
        <p>Experience the perfect blend of luxury and relaxation. Book your favorite hotels instantly with ease and elegance.</p>
        <a href="/searchHotel" class="cta">Explore Hotels</a>
    </div>

</body>
</html>