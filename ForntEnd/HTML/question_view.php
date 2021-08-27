<?php // this a list view of all the question paper or set made by the teacher,, click the link to view that papers all questions
session_start();
require_once "config.php";
$uid = $_SESSION['u_id'];

$q = "SELECT * FROM `q_set` WHERE `unique_id` = '$uid' ";
$que = mysqli_query($con, $q);
if ($que) {
    $num = mysqli_num_rows($que);
    if ($num) {
?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>view  </title>
        </head>
        <body>
            <h1 style="text-align: center;">total questions</h1>
            <?php while ($f = mysqli_fetch_assoc($que)) {
                $eid = $f['e_id']; ?>

                <a href="set_view.php?examid=<?php echo $eid; ?> "> Exam id is: <?php echo $eid; ?> </a>

                <br>
            <?php
            }
        } else {
            echo "Nothing found";
        }
    }
    ?>
        </body>

        </html>