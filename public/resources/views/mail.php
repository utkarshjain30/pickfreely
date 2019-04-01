<?php
if( $_POST['email'] )
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $userQ = $_POST['subject'];
    $userMSG = $_POST['message'];
    date_default_timezone_set("Asia/Kolkata");
    $date = date("h:i:sa");

    $headers = "From: " . strip_tags($email) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    $message = '<html><body>';
    $message .= '<h1>Contact Us Form</h1></br>';
    $message .="<p>Name = ". $name."</p>";
    $message .="<p>Mobile =".$mobile."</p>";
    $message .="<p>Mobile =".$email."</p>";
    $message .="<p>Message = ".$userMSG."</p>";
    $message .= '</body></html>';
    

    //Change this email for changing the reciepient.
    $to = "admin@pickfreely.com";
    $testmail = "sayed182@gmail.com";
    $subject = "You Have Recieved This Emain From ".$name." and Subject".$userQ ;

    mail($testmail,$subject,$message,$headers);
    //echo "$msg";
}
else{
   
    echo "Values not recieved";
}
echo "running";
?>


<!-- MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=785c205abf1b92
MAIL_PASSWORD=fafa6b6783dd3e
MAIL_ENCRYPTION=null -->