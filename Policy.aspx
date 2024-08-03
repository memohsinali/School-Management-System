<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Policy.aspx.cs" Inherits="School_Management.Policy" %>

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

        <nav class="navbar navbar-expand-lg navbar-light custom-blue">
           <img src="Images/MLS.jpg"  alt="Logo" style="max-height: 100px;" />
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="Sms.aspx">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AboutUs.aspx">About Us</a>
            </li>
         
            <li class="nav-item">
                <a class="nav-link" href="Policy.aspx"><b>Policy</b></a>
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

        
            <div>
                 <br /> <br />
            <h2>School Policies</h2>
            <p><strong>1. Academic Integrity:</strong></p>
            <p>Students are expected to uphold high standards of academic integrity, honesty, and ethics. Plagiarism, cheating, and other forms of academic dishonesty are strictly prohibited. Consequences for violations of academic integrity may include disciplinary action, academic penalties, or referral to the Academic Integrity Committee.</p>
  
            <p><strong>2. Code of Conduct:</strong></p>
            <p>MLS School is committed to maintaining a safe, respectful, and inclusive learning environment. Students are expected to demonstrate respect for themselves, others, and school property. The Code of Conduct outlines expectations for behavior, dress code, language, and interactions within the school community. Consequences for breaches of the Code of Conduct are outlined in the school's disciplinary procedures.</p>
  
            <p><strong>3. Attendance and Punctuality:</strong></p>
            <p>Regular attendance and punctuality are essential for academic success and student engagement. Parents/guardians are responsible for ensuring that students attend school regularly and arrive on time. Procedures for reporting absences and tardiness, as well as consequences for excessive absenteeism, are outlined in the school handbook.</p>
            
            <p><strong>4. Curriculum and Grading::</strong></p>
             <p>
                The curriculum is designed to meet academic standards and promote the holistic development of students.
                Grading criteria, assessment methods, and promotion policies are transparent and consistent across all grade levels.
                Teachers provide timely feedback to students and parents on academic progress and performance.</p>

             <p><strong>5.Safety and Security:</strong></p>
                <p> MLS School prioritizes the safety and well-being of students, staff, and visitors.
                    Emergency procedures, including lockdown drills and evacuation plans, are practiced regularly.
                    Security measures are in place to protect against threats to physical safety, bullying, harassment, and cyberbullying.</p>

             <p><strong>6.Student Rights and Responsibilities</strong></p>
                    <p>  Students have the right to a safe, supportive, and inclusive learning environment that respects their individual differences and identities.
                     Students are responsible for adhering to school policies, participating actively in their education, and treating others with respect and dignity.</p>


             <p><strong>7. Parental Involvement:</strong></p>
                <p>  MLS School encourages parental involvement in their child's education through regular communication, parent-teacher conferences, and involvement in school activities and events.
                Parents are encouraged to support and reinforce the school's policies and educational goals at home.</p>


                 <p><strong>8. Technology Usage:</strong></p>
                    <p> The use of technology resources, including computers, tablets, and the internet, is governed by the school's acceptable use policy.
Students are expected to use technology responsibly, ethically, and in accordance with school guidelines.</p>



                 <p><strong>9. Bullying and Harassment:</strong></p>
                  <p> MLS School has a zero-tolerance policy for bullying, harassment, discrimination, and other forms of misconduct.
Procedures for reporting incidents, investigating complaints, and providing support to victims are outlined in the school's anti-bullying policy.</p>


                 <p><strong>10. Special Education and Inclusion:</strong></p>
                   <p>MLS School is committed to providing inclusive education and supporting students with diverse learning needs.
Individualized education plans (IEPs) and accommodations are developed for students with disabilities or special needs to ensure equal access to education and opportunities for success.</p>


                 <p><strong>11. Health and Wellness:</strong></p>
                   <p> MLS School promotes the physical, mental, and emotional well-being of students through health education, counseling services, and wellness programs.
Nutrition guidelines, physical activity initiatives, and mental health resources are available to support students' overall wellness.</p>
                 
                  <p><strong>12. Ethical Standards:</strong></p>
                  <p> Students, staff, and parents are expected to uphold ethical standards, integrity, and professionalism in all interactions within the school community.
Respect for diversity, inclusion, and cultural sensitivity are fundamental values of MLS School.
code the whole text to display on webpage</p>




            <!-- Add more policies as needed -->
        </div>



    </form>
</body>
</html>
