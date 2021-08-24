<?php
session_start();

require_once "dept_config.php"

?>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Set question</title>
</head>
<body>
    <h1 style="text-align: center;">Set Question paper bitch</h1>
    <br>
    <div>
        <form action="set.php" method="POST">
        <input type="text" name="e_name" placeholder="Enter Exam Name">
    <label for="semister">Which Semister</label>
            <select name="sem" id="semister">   
                <option value="1">1st Sem</option>    
                <option value="2">2nd Sem</option>    
                <option value="3">3rd Sem</option>    
                <option value="4">4th Sem</option>    
                <option value="5">5th Sem</option>    
                <option value="6">6ht Sem</option>    
            </select> 
    <label for="crs">Which course</label>
            <select name="course" id="crs">   
                <option value="BCA">BCA Honours</option>    
                <option value="BCS">BCS Honours</option>    
                <option value="PASS">Computer Scinece Pass</option>   
            </select> 
            <input type="number" name="f_mark" placeholder="Enter Full Marks">
            <input type="number" name="p_mark" placeholder="Enter Pass Marks">
            <input type="number" name="e_duration" placeholder="Total Exam Duration in minutes">            
        </form>

    </div>
</body>
</html>