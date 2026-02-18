<?php
require 'db.php';
require 'sendMail.php';

$name = $_POST['name'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$life_stage = $_POST['life_stage'];

$q1 = $_POST['q1'];
$q2 = $_POST['q2'];
$q3 = $_POST['q3'];
$q4 = $_POST['q4'];
$q5 = $_POST['q5'];
$q6 = $_POST['q6'];

$stress_sources = isset($_POST['stress_sources']) ? implode(",", $_POST['stress_sources']) : "";
$coping = isset($_POST['coping']) ? implode(",", $_POST['coping']) : "";
$feedback = $_POST['feedback'];

/* JS also calculates, but PHP recalculates for safety */
$score = $q1 + $q2 + $q3 + $q4 + $q5 + $q6;

if ($score <= 6) {
    $stress_level = "Low";
} elseif ($score <= 12) {
    $stress_level = "Medium";
} else {
    $stress_level = "High";
}

$sql = "INSERT INTO stress_results
(name, age, gender, email, life_stage,
 q1, q2, q3, q4, q5, q6,
 stress_sources, coping, feedback,
 score, stress_level)
VALUES
('$name','$age','$gender','$email','$life_stage',
 '$q1','$q2','$q3','$q4','$q5','$q6',
 '$stress_sources','$coping','$feedback',
 '$score','$stress_level')";

$conn->query($sql);

/* send email */
sendStressMail($email, $name, $score, $stress_level);

/* redirect to result page with data */
header("Location: ../result.html?score=$score&level=$stress_level");
exit;

?>
