<?php //viewing a single exams all questions dynamically AND ans portion not needed
session_start();
require_once "config.php";
//udpate here
$num= $_GET['num'];


$q="SELECT * FROM `qs` WHERE `nos` = '$num' ORDER BY `nos` ASC";// to show what currnt question is...
    $v=mysqli_query($con,$q);
    if($v)
    {
        $a=mysqli_fetch_assoc($v);
    }

if(isset($_POST['sub']))
{
$update=$_POST['uptxt'];
$up="UPDATE `qs` SET `question` = '$update' WHERE `qs`.`nos` = '$num';";
$qq=mysqli_query($con,$up);
}



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

                <form action="" method="POST">
                    <input type="text" name="uptxt" value="<?php echo $a['question'];?>" >
                    <button type="submit" name="sub">SAVE</button>
                </form>

                <?php
                if(isset($_POST['sub']))
                {
                    $q="SELECT * FROM `qs` WHERE `nos` = '$num' ORDER BY `nos` ASC";
                    $vquery=mysqli_query($con,$q);
                
                if ($vquery) {
                $i=1;
                 while ($f = mysqli_fetch_assoc($vquery)) {
                ?>

                <h3> Q.<?php echo $i;?>- <?php echo $f['question'];?></h3>
                   <p>question updated</p>
                   <button id="delete">Delete</button>
                    <h3> Ans: <?php echo $f['ans']; ?></h3>
                    <br>
        <?php   
        }
    }
                }
        ?>
       
        </script>
        </body>

        </html>