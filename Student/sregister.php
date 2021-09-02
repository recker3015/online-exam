<?php
include "../BackEnd/config.php";

if ($con) {
    $flag = 0;
    if (count($_POST) > 0) {

      $sname = $_POST['s_name'];
      $sroll = $_POST['s_rollno'];
      $semail =$_POST['s_email']; 
      $spass = $_POST['s_pass'];
      $sdept=$_POST['s_dept'];
      $ssem=$_POST['s_sem'];
      
      $runo = "SELECT * FROM `s_registered` WHERE `s_email` = '$semail' ";
      $ss = mysqli_query($con, $runo);
      $d = mysqli_num_rows($ss);

      if ($d > 0) {
        $flag = 1;
      } else {

        $sql = "INSERT INTO `s_registered` (`s_name`, `s_rollno`, `s_email`, `s_pass`, `s_dept`, `s_sem`) VALUES 
        ('$sname', '$sroll', '$semail', '$spass', '$sdept', '$ssem');";

        if (mysqli_query($con, $sql)) {
            header("location: slogin.php");
        } else {
          echo "fail";
        }
      }
    }
    $con->close();
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<form method="post" action="">
                <h1>Register</h1>
                  <input type="text" placeholder="&#xf507; Full Name" name="s_name">

                  <input type="number" placeholder="&#xf0e0; College Roll no." name="s_rollno">

                  <input type="email" placeholder="&#xf1fa; E-mail Id" name="s_email">

                  <select name="s_dept" id="course" >
                      <option hidden disabled selected value>Select Course</option>
                      <option value="alteng" >Alternative English</option>
                          <option value="arab" >Arabic</option>
                          <option value="bngc" >Bengali</option>
                          <option value="bng" >Bengali Communication</option>
                          <option value="bio" >Biology</option>
                          <option value="botbio" >Botany &amp; Biotechnology</option>
                          <option value="chem" >Chemistry</option>
                          <option value="cmrc" >Commerce</option>
                          <option value="compsca" >Computer Science &amp; Application</option>
                          <option value="ecoenv" >Ecology &amp; Environmental Science</option>
                          <option value="eco" >Economics</option>
                          <option value="engc" >English</option>
                          <option value="eng" >English Communication</option>
                          <option value="geneng" >General English</option>
                          <option value="geo" >Geology</option>
                          <option value="hist" >History</option>
                          <option value="math" >Mathematics</option>
                          <option value="mil" >MIL</option>
                          <option value="phil" >Philosophy</option>
                          <option value="phy" >Physics</option>
                          <option value="polsc" >Political Science</option>
                          <option value="snsk" >Sanskrit</option>
                          <option value="stat" >Statistics</option>
                          <option value="zoo" >Zoology</option>
                  </select>
                  <select name="s_sem" id="semester">
                      <option hidden disabled selected value>Select Semester/Year</option>
                      <option value="1st">1st</option>
                      <option value="2nd">2nd</option>
                      <option value="3rd">3rd</option>
                      <option value="4th">4th</option>
                      <option value="5th">5th</option>
                      <option value="6th">6th</option>
                  </select>
                  <input type="password" placeholder="&#xf30d; Password" name="s_pass">
                  <input type="submit" class="submit-btn" name="register" value="Register">
              </form>
              <a href="slogin.php"><h4>login here</h4></a>
          </div>
     </div>
     </body>
</html>