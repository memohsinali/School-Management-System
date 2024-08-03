<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sms.aspx.cs" Inherits="School_Management.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/heroes/hero-1/assets/css/hero-1.css" />

    <style>
        .hero-section {
            background-image: url("Images/hero.png");
            background-size:cover;
            height:100px;
            color: #fff;
            text-align: center;
            display:flex;  
            flex-direction: column;
            justify-content: center;
            align-items: center;
             position: relative; /* Add position relative for absolute positioning of moving text */
        }


       .moving-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        animation: moveText 5s infinite;
       }

       
       @keyframes moveText {
        0% { transform: translate(-50%, -50%); }
        50% { transform: translate(-70%, -50%); } /* Move left */
        100% { transform: translate(-50%, -50%); } /* Move back to center */
    }

        .gallery-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .gallery-item {
            margin: 10px;
        }
        .gallery-item img {
            width: 100%;
            max-width:300px;
            height:300px;
            border-radius: 2px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        .gallery-item img:hover {
            transform: scale(1.05);
        }

        .colored-line {
            border: 0;
            height: 1px;
            background-image: linear-gradient(to right, rgba(255, 0, 0, 0), rgba(255, 0, 0, 0.75), rgba(255, 0, 0, 0));
        }


        .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
        z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }



        .nav-item a.nav-link.login-link {
            color: #6c757d; /* Change the color */
            padding: 0.5rem 1rem; /* Add padding */
            transition: color 0.3s ease-in-out; /* Add transition */
        }

        .nav-item a.nav-link.login-link:hover {
            color: #007bff; /* Change the hover color */
        }



    </style>


     <script>
     function toggleLoginOptions() {
         var options = document.getElementById("loginOptions");
         options.style.display = (options.style.display === "block") ? "none" : "block";
     }

     function toggleOthersOptions() {
         var options = document.getElementById("otherOptions");
         options.style.display = (options.style.display === "block") ? "none" : "block";
     }

     </script>



</head>
<body>
    <form id="form1" runat="server">
    <div class="hero-section">
    <h1 class="moving-text">WHERE DREAMS COME TRUE</h1>
    </div>

        <nav class="navbar navbar-expand-lg navbar-light custom-blue">
            <img src="Images/MLS.jpg"  alt="Logo" style="max-height: 100px;" />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Sms.aspx"> <b>Home</b> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.aspx">About Us</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="Policy.aspx">Policy</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link login-link" href="#" onclick="toggleLoginOptions()">Login</a>
                        <div id="loginOptions" class="dropdown-content">
                            <a href="LoginPage.aspx">Admin</a>
                            <a href="TeacherAccount.aspx">Teacher</a>
                            <a href="StudentAccount.aspx">Student</a>
                        </div>
                      
                    </li>
                </ul>
            </div>
              </nav>
            <div class="gallery-container">
                <div class="gallery-item">
                    <img src="Images/assembly.jpeg" alt="Image 1" />
                </div>
                <div class="gallery-item">
                    <img src="Images/sports.jpeg" alt="Image 2" />
                </div>
                <div class="gallery-item">

                    <img src="Images/class.jpeg" alt="Image 3" />
                </div>
                </div>

           <hr class="colored-line">

        <footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>Contact Info</h5>
                <p>Email: example@example.com<br>
                Phone: +1234567890</p>
            </div>
            <div class="col-md-4">
                <h5>Social Media</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Instagram</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Location</h5>
                <p>123 Street Name<br>
                City, Country</p>
            </div>
        </div>
    </div>
</footer>

      
    </form>
</body>
</html>