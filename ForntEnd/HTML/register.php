<?php
require_once "config.php";

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
                <option value="comscience">Computer Science</option>
                <option value="phy">Phy</option>
                <option value="chem">Chem</option>
            </select>
            <input type="email" name="t_email" placeholder="Enter email id">
            <button type="submit">submit</button>       
        </form>
    </div>
</body>
</html>