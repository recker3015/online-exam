<?php
session_start();

require_once "config.php";
$uid = $_SESSION['u_id'];

$eid = $_GET['exmid'];
/*-----------PREPAREING THE QUERY FOR FAST INSERTION---------------*/

$q = "INSERT INTO `qs` (`unique_id`, `question`, `e_id`, `oa`, `ob`, `oc`, `od`, `ca`) VALUES 
        (?,?,?,?,?,?,?,?)";

$stmt = $con->prepare($q);

$stmt->bind_param("ssssssss", $uid, $qs, $eid, $oa, $ob, $oc, $od, $ca);

if (isset($_POST['submit'])) {

    // $n = $_POST['n'];
    $qs = $_POST['eques'];
    $oa = $_POST['oa'];
    $ob = $_POST['ob'];
    $oc = $_POST['oc'];
    $od = $_POST['od'];
    $ca = $_POST['ca'];
    $stmt->execute();

    // for ($i = 0; $i < $n; $i++) {

    //  $qs = $_POST[$i . "qs1"];
    // $q = "INSERT INTO `qs` (`unique_id`, `question`, `e_id`) VALUES 
    //('$uid', '$qs', '$eid')";

    //$que = mysqli_query($con, $q);
    //}
    if ($stmt) {
        echo "question enterd succesfull";
    } else {
        echo "Not entered";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="MCQ.css">
    <title>MCQ</title>
</head>

<body>
    <div class="mcq">
        <form action="" method="post">
            <label for="qs">Enter Question</label>
            <input type="text" name="eques" id="qs" placeholder="Input question">
            <legend>Input word for choice's</legend>
            <label for="oa">Option A</label>
            <input type="text" name="oa" id="oa" placeholder="enter here">
            <label for="ob">Option B</label>
            <input type="text" name="ob" id="ob" placeholder="enter here">
            <label for="oc">Option C</label>
            <input type="text" name="oc" id="oc" placeholder="enter here">
            <label for="od">Option D</label>
            <input type="text" name="od" id="od" placeholder="enter here">
            <label for="ca">Correct Answer</label>
            <select name="ca" id="ca">
                <option value="A">Option A</option>
                <option value="B">Option B</option>
                <option value="C">Option C</option>
                <option value="D">Option D</option>
            </select>
            <button Type="submit" name="submit">Submit</button>
        </form>
    </div>

</body>

</html>