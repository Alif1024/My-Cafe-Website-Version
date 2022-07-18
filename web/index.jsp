<%@page import="java.util.*"%>
<%@page import="Connection.DbCon"%>
<%@page import="Model.*"%>
    <%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
        request.setAttribute("auth", auth);
    }
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if(cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }

    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cafe</title>

    <!-- custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    

</head>
<body style="background: #f2f2f2;">
    
<%@include file="includes/navbar.jsp" %>

<!-- section start -->

<section class="home" id="home" style="margin-right: 2rem; margin-left: 2rem;">

    <div class="row no-gutters">
        <div class="col-md-2 sidebar">
            <ul class="list-group list-group-flush">
                <li class="list-group-item ctgry"> <i class="fas fa-list"></i> <a href="#"></a> Category</li>
                <li class="list-group-item"><a href="#"></a><i class="fas fa-angle-right"></i> Food Menu</li>
                <li class="list-group-item"><a href="#"></a><i class="fas fa-angle-right"></i> Drink Menu</li>
              </ul>
        </div>

        <div class="col-md-10 promo">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="img/slide/iklan1.jpeg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="img/slide/iklan2.jpeg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="img/slide/iklan3.jpeg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
                
              <h4 class="text-center fw-bold" id="judul">BEST PRODUCT</h4>
              
              <div class="row" id="best-product">
                
                <div class=" card col-md-3">
                  <img src="img/menu/geprek.jpg" alt="" class="card-img-top">
                  <div class="card-body ">
                      <h1 class="card-tittle fw-bold">Geprek</h1>
                      <h4 class="category">Catogory : Food </h4>
                      <h4 class="price">Price : Rp. 15.000 </h4> 
                      <a href="menuUser.jsp" class="btn text-white fs-3">Order Now</a>
                  </div>  
                </div>
                
                <div class="col-md-1"></div>

                <div class=" card col-md-3">
                  <img src="img/menu/spaghetti-bolognese.jpg" alt="" class="card-img-top">
                  <div class="card-body ">
                      <h1 class="card-tittle fw-bold">Spaghetti</h1>
                      <h4 class="category">Catogory : Food </h4>
                      <h4 class="price">Price : Rp. 25.000 </h4> 
                      <a href="menuUser.jsp" class="btn text-white fs-3">Order Now</a>
                  </div>  
                </div>
                
                <div class="col-md-1"></div>

                <div class=" card col-md-3">
                  <img src="img/menu/juspukat.jpg" alt="" class="card-img-top">
                  <div class="card-body ">
                      <h1 class="card-tittle fw-bold">Jus Alpukat</h1>
                      <h4 class="category">Catogory : Drink </h4>
                      <h4 class="price">Price : Rp. 15.000 </h4> 
                      <a href="menuUser.jsp" class="btn text-white fs-3">Order Now</a>
                  </div>  
                </div>

                

              </div>
        </div>
    </div>

</section>

<!-- section end -->

<!-- section about start -->

<section class="about" id="about">

  <div class="about-heading">
    <h3> About Us </h3>
    <h1> why choose us? </h1>
  </div>

  <div class="row">

      <div class="image">
          <img src="img/about-img.png" alt="">
      </div>

      <div class="content">
          <h3>My Cafe</h3>
          <p>My Cafe is a modern aplication for cafe ordering that can be used by everyone.
            The existence of my cafe really helps buyers or visitors to order food 
            without queuing so that it is more effecient, time saving, space saving,
            and cost effective. This aplication also reduces crowds during the pandemic
            because shooppers do not cross paths when ordering and paying for their
            orders.
            </p>
      </div>

  </div>

</section>

<!-- section about end -->

<!-- section review start -->

<section class="review" id="review">

  <div class="review-heading">
    <h3> Comment </h3>
    <h1> leave your review! </h1>
  </div>
  
  <form action="SendReviewServlet" method="post">

    <div class="input form-group">
      <span>Your Name</span>
      <input type="text" name="review-name" id="" placeholder="enter your name" class="" > 
      <span>Your Message</span>
      <textarea name="review-message" id="" placeholder="enter your message" cols="30" rows="10" class=""></textarea>
    </div>
    <button type="submit" class="btn btn-warning text-white fw-bold">Send</button>

  </form>
   

</section>

<!-- section review end -->

<!-- footer start -->

<footer class="p-5 text-white contact" id="contact">

    <div class="row">
        <div class="col-md-3">
          <h3 class="fw-bold">LAYANAN PELANGGAN</h3>
          <ul>
            <li>Pusat Bantuan</li>
            <li>Cara Pemesanan</li>
            <li>Cara Pembayaran</li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="fw-bold">OPEN & CLOSE</h3>
          <ul>
            <li>Everyday</li>
            <li>07:00 - 23:00 WIB</li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="fw-bold">HUBUNGI KAMI</h3>
          <ul>
            <li>0812-9305-4296</li>
            <li>mycafe@gmail.com</li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="fw-bold">FOLLOW US</h3>
          <ul>
            <li><a href="" class="text-white ">Facebook</a></li>
            <li><a href="">Twitter</a></li>
            <li><a href="">Instagram</a></li>
          </ul>
        </div>
        
    </div>

</footer>

<!-- footer end -->

<!-- copyright start -->

    <div class="copyright text-center text-white fw-bold p-2">

        <p>Developed by Group 8 2SE3 Copyright <i class="far-fa-copyright"></i> 2022</p>

    </div>

<!-- copyright end -->
























    <script src="js/script.js"></script>
    <script src="js/bootstrap.js"></script>
    
</body>
</html>