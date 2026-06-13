<?php  

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About Us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<!-- about section starts  -->

<section class="about">

   <div class="row">
      <div class="image">
         <img src="images/photo_2024-08-26_08-15-24.jpg" alt="">
      </div>
      <div class="content">
         <h3>why choose us?</h3>
         <p> 
         Choosing us for your real estate needs means partnering with a team that truly understands the market and is dedicated to your success. Our website offers a seamless, user-friendly experience with cutting-edge technology that provides real-time updates, detailed property listings, and advanced search filters to help you find exactly what you’re looking for. Our expert agents bring extensive local knowledge and personalized service, ensuring that every aspect of your real estate journey is smooth and efficient. With a track record of satisfied clients and a commitment to transparency, we make navigating the complex world of real estate simple and rewarding. Choose us to turn your property dreams into reality with confidence and ease.</p>
         <a href="contact.html" class="inline-btn">contact us</a>
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
         <p>Find your ideal home quickly with high-resolution photos and instant alerts on new opportunities.</p>
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

<!-- steps section ends -->

<!-- review section starts  -->

<

<!-- review section ends -->










<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>