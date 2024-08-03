<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="School_Management.AboutUs" %>

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
                display:table-row;
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
                height:100px;
                border-radius: 2px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease-in-out;
            }
            .gallery-item img:hover {
                transform: scale(1.05);
            }

            .paragraph {
            text-indent: 50px;
            }

            .content {
                text-align: justify;
                text-justify: inter-word;
            }

        .auto-style1 {
            margin-left: 40px;
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



</head>
<body>
    <form id="form1" runat="server">

        <div class="hero-section">
        <h1 class="moving-text">WHERE DREAMS COME TRUE</h1>
        </div>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img src="Images/MLS.jpg"  alt="Logo" style="max-height: 100px;" />
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Sms.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AboutUs.aspx"><b>About Us</b></a>
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

        <br /> <br />
       <div class="gallery-container">
    <div class="gallery-item">
        <img src="Images/success.png" alt="Image 1" />
    </div>
           
          

          
<div class="content">
    <p class="auto-style1">
        &nbsp;MLS isn&#39;t just an educational institution; it&#39;s a phenomenon. For over three decades, MLS has been at the forefront of educational excellence, offering a comprehensive range of programs that cater to every aspect of a student&#39;s academic journey. From schools and colleges to evening coaching, entry test preparation, competitive exam training, foreign test preparation, language courses, and publications, MLS has become synonymous with success. The key to MLS&#39; outstanding achievements lies in its unwavering commitment to quality and innovation. With an immensely competent faculty leading the way, MLS ensures that every student receives the best possible education. Our purpose-built campuses boast state-of-the-art facilities, creating an environment conducive to learning and growth. But perhaps the most significant factor contributing to MLS&#39; success is its elaborate quality assurance system. From curriculum development to teaching methodologies and student assessments, every aspect of the 
        educational process is meticulously monitored and refined to ensure the highest standards of excellence. As a result, MLS has produced a league of successful students and professionals, not only across the country but also beyond its borders. Our alumni are making their mark in diverse fields, embodying the values of excellence, integrity, and leadership instilled during their time at MLS. At MLS, we believe in empowering individuals to realize their full potential and achieve their dreams. Our success story is a testament to the transformative power of education and the unwavering dedication of our faculty and staff. Join us at MLS and become part of a legacy of excellence that extends far beyond the classroom.<br />



       </p>



       <div class="gallery-container">
<div class="gallery-item">
    <img src="Images/vision.jpeg" alt="Image 2" />
</div>

           <div class="content">    
               <p class="auto-style1">
                   Developing the nation through quality education in such a way to uplift the image of Pakistan and Pakistanis among the Muslim and International World in Science, Research, Technology and Arts.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
           </div>

                  <div class="gallery-container">
<div class="gallery-item">
    <img src="Images/mission.jpeg" alt="Image 3" />
</div>

           <div class="content" >  
               <p class="auto-style1">
                   MLS has the mission to set the new and healthy trends of competition for the students and professionals, for all walks of life by delivering holistic education to the students for a radiant future and ensuring grooming of students and helping them to analyze their strengths, weaknesses, opportunities, and threats to meet the upcoming challenges for a better and prosperous future through a well-bonded rectangular collaboration among the students, teachers, parents and the management. &nbsp;&nbsp;&nbsp;&nbsp;
               </p>

               <br /> <br /> <br />

           </div>

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
