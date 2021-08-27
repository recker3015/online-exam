<?php //viewing a single exams all questions dynamically AND ans portion not needed
session_start();
require_once "config.php";
$eid = $_GET['examid'];

$q = "SELECT * FROM `qs` WHERE `e_id` = '$eid' ";
$p = mysqli_query($con, $q);

if ($p) {
    $num = mysqli_num_rows($p);
    if ($num) {
?>

        <!DOCTYPE html>
        <html lang="en">

        <head>

            <title>Set question</title>
        </head>

        <body>
            <h1 style="text-align: center;">question set of </h1>
            <h1 style="text-align: center;">Hello,<?php echo $_SESSION['username']; ?></h1>

            <div class="product">
                <?php
                $i=1;
                 while ($f = mysqli_fetch_assoc($p)) {
                ?>
                    <h3> Q.<?php echo $i;?>- <?php echo $f['question'];?> </h3>
                    <h3> Ans: <?php echo $f['ans']; ?></h3>
                    <br>
        <?php
           $i++;    
            }
            } else {
                echo "Nothing found";
            }
        }
        ?>
        </body>

        </html>