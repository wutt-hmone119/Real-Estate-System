<?php  

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

if(isset($_POST['send'])){

   $msg_id = create_unique_id();
   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $number = $_POST['number'];
   $number = filter_var($number, FILTER_SANITIZE_STRING);
   $message = $_POST['message'];
   $message = filter_var($message, FILTER_SANITIZE_STRING);

   $verify_contact = $conn->prepare("SELECT * FROM `messages` WHERE name = ? AND email = ? AND number = ? AND message = ?");
   $verify_contact->execute([$name, $email, $number, $message]);

   if($verify_contact->rowCount() > 0){
      $warning_msg[] = 'message sent already!';
   }else{
      $send_message = $conn->prepare("INSERT INTO `messages`(id, name, email, number, message) VALUES(?,?,?,?,?)");
      $send_message->execute([$msg_id, $name, $email, $number, $message]);
      $success_msg[] = 'message send successfully!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Contact Us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">
      <div class="image">
         <img src="images/photo_2024-08-26_08-15-24.jpg" alt="">
      </div>
      <div class="content">
         <h3>why choose us?</h3>
         <p> 
         Choosing us for your real estate needs means partnering with a team that truly understands the market and is dedicated to your success. Our website offers a seamless, user-friendly experience with cutting-edge technology that provides real-time updates, detailed property listings, and advanced search filters to help you find exactly what you’re looking for. Our expert agents bring extensive local knowledge and personalized service, ensuring that every aspect of your real estate journey is smooth and efficient. With a track record of satisfied clients and a commitment to transparency, we make navigating the complex world of real estate simple and rewarding. Choose us to turn your property dreams into reality with confidence and ease.</p>
         <a href="contact.php#contact" class="inline-btn">contact us</a>
      </div>
   </div>

</section>

<!-- about section ends -->

<!-- steps section starts  -->

<section class="steps">

   <h1 class="heading">3 simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>search property</h3>
         <p>  Find your ideal home quickly with high-resolution photos and instant alerts on new opportunities for your dream.</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>contact agents</h3>
         <p>Connect with expert agents who offer personalized guidance and swift responses to your real estate needs.</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>enjoy property</h3>
         <p>Enjoy exploring properties with immersive photos and interactive features that bring each listing to life.</p>
      </div>

   </div>

</section>


<!-- contact section starts  -->

<section class="contact" id="contact">

   <div class="row">
      <div class="image">
         <img src="images/photo_2024-08-26_08-15-31.jpg" alt="">
      </div>
      <form action="" method="post">
         <h3>get in touch</h3>
         <input type="text" name="name" required maxlength="50" placeholder="enter your name" class="box">
         <input type="email" name="email" required maxlength="50" placeholder="enter your email" class="box">
         <input type="number" name="number" required maxlength="11" max="99999999999" min="0" placeholder="enter your number" class="box">
         <textarea name="message" placeholder="enter your message" required maxlength="1000" cols="30" rows="10" class="box"></textarea>
         <input type="submit" value="send message" name="send" class="btn">
      </form>
   </div>

</section>

<!-- contact section ends -->

<!-- faq section starts  -->

<section class="faq" id="faq">

   <h1 class="heading">User Help</h1>

   <div class="box-container">

      <div class="box active">
         <h3><span>how to cancel booking?</span><i class="fas fa-angle-down"></i></h3>
         <p>You just need to go your own user dashboard and enter request sent and delete your booking.</p>
      </div>


      <div class="box">
         <h3><span>where can I pay the rent?</span><i class="fas fa-angle-down"></i></h3>
         <p>If you rent a  house, flat or shop when you send a message to ower he will contant you and make the negotiate for rent.</p>
      </div>

      <div class="box">
         <h3><span>how to contact with the buyers?</span><i class="fas fa-angle-down"></i></h3>
         <p>After you sent the request to the owner you just need to wait the owner will connect you with a call or email.</p>
      </div>

    

      <div class="box">
         <h3><span>Other</span><i class="fas fa-angle-down"></i></h3>
         <p>Just send a message to us our agent will contact you and solve the problem.<a href="contact.php#contact"> >>Click here to contact<< </a></p>
      </div>

   </div>

</section>

<!-- faq section ends -->










<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<?php include 'components/message.php'; ?>

</body>
</html>