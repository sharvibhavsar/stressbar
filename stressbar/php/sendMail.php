<?php

function sendStressMail($toEmail, $name, $score, $level) {

    $subject = "Your Stress Bar Assessment Result";

    $message = "
    Hello $name,

    Thank you for taking the Stress Bar assessment.

    Your Stress Score: $score
    Stress Level: $level

    ";

    if ($level == "Low") {
        $message .= "You are managing stress well. Maintain your healthy habits.";
    } elseif ($level == "Medium") {
        $message .= "You show moderate stress. Consider relaxation and balance.";
    } else {
        $message .= "You have high stress. Prioritize rest and support.";
    }

    $headers = "From: stressbar@localhost";

    mail($toEmail, $subject, $message, $headers);
}

?>
