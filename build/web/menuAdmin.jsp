<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
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
    <title>Document</title>

    <!-- custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>
<body style="background: #f2f2f2;">
   
<%@include file="includes/navbar.jsp" %>

<!-- jumbotron start -->

<section class="jumbotron" id="jumbotron">
    <div class="main">
        <h1>MY CAFE</h1>
        <hr>
        <p>Silahkan Pesan Menu Sesuai Keinginan Anda <br>Enjoy Your Meal</p>
    </div>
</section>

<!-- jumbotron end -->

<!-- section menu start -->

<section class="menu" id="menu">

    <div class="container">
        <div class="row">
            <div class="col-md-3 ms-3">
                <button class="btn add">Tambah Menu</button>
            </div>
        </div>
        <div class="row mt-3">
            
            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/geprek.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Geprek</h3>
                        <label for="" class="card-text harga fs-5">Rp. 15.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>  
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/nasgor.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Nasi Goreng</h3>
                        <label for="" class="card-text harga fs-5">Rp. 10.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/spaghetti-bolognese.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Spaghetti</h3>
                        <label for="" class="card-text harga fs-5">Rp. 20.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/mieayam.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Mie Ayam</h3>
                        <label for="" class="card-text harga fs-5">Rp. 10.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div> 

        </div>

        <div class="row mt-3">

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/juspukat.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Jus Alpukat</h3>
                        <label for="" class="card-text harga fs-5">Rp. 15.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/jusmangga.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Jus Mangga</h3>
                        <label for="" class="card-text harga fs-5">Rp. 15.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/esjeruk.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Es Jeruk</h3>
                        <label for="" class="card-text harga fs-5">Rp. 10.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class=" card">
                    <img src="img/menu/tehobeng.jpg" alt="" class="card-img-top">
                    <div class="card-body ">
                        <h3 class="card-tittle fw-bold">Es Teh</h3>
                        <label for="" class="card-text harga fs-5">Rp. 5.000</label>
                        <br>
                        <button class="btn text-white">Pesan</button>
                    </div>
                </div>
            </div>

        </div>

    </div>
    
</section>
<br>
<br>
<br>
<!-- section menu end -->

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