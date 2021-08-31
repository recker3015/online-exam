<?php

include "../../BackEnd/config.php";
if ($con) {
    $flag = 0;
    if (count($_POST) > 0) {
      $name = $_POST['t_name'];
      $uid = $_POST['u_id'];
      $email =$_POST['t_email']; 
      $pass = $_POST['t_pass'];
      $dept=$_POST['dept'];
      $runo = "SELECT * FROM `t_registered` WHERE `t_email` = '$email' ";
      $ss = mysqli_query($con, $runo);
      $d = mysqli_num_rows($ss);
      if ($d > 0) {
        $flag = 1;
      } else {
        $sql = "INSERT INTO `t_registered` (`unique_id`, `t_pass`, `t_name`, `t_email`, `t_dept`) 
        VALUES ('$uid', '$pass', '$name', '$email', '$dept')";

        if (mysqli_query($con, $sql)) {
        header("location: login.php");
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
    <title>Register</title>
</head>
<body>
<H1>Teacher registration</H1>
    <div>
        <form action="register.php" method="POST">
            <input type="name" name="t_name" placeholder="Full Name">
            <input type="id" name="u_id" placeholder="Unique Id">
            <input type="password" name="t_pass" placeholder="Create password">
            <label for="department">Choose your department</label>
            <select name="dept" id="department">
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
      
            <input type="email" name="t_email" placeholder="Enter email id">
            <button type="submit">submit</button>       
        </form>
    </div>
</body>
</html>