<%@page import="DAO.OrderDao"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.*"%>
<%@page import="Connection.DbCon"%>
<%@page import="Model.*"%>
    <%
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf", dcf);
    User auth = (User) request.getSession().getAttribute("auth");
    List<Order> orders = null;
    if(auth != null){
        request.setAttribute("auth", auth);
        orders = new OrderDao(DbCon.getConnection()).userOrders(auth.getId());
    }else {
        response.sendRedirect("login.jsp");
    }
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if(cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }

    %>
<%-- 
    Document   : orders
    Created on : Jul 9, 2022, 9:22:18 AM
    Author     : nural
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="includes/head.jsp"%>
    </head>
    <body>
        
        <%@include file="includes/navbar.jsp" %>
        
        <div class="container" style="margin-top: 10rem">
            <div class="card-header text-center py-3 fs-2 "><h1>All Orders</h1></div>
            <table class="table table-loght fs-3">
                <thead>
                    <tr>
                        <th scope="col">Date</th>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if(orders != null) {
                        for(Order o:orders) {%>
                        <tr>
                            <td><%= o.getDate() %></td>
                            <td><%= o.getNama() %></td>
                            <td><%= o.getKategori() %></td>
                            <td><%= o.getQuantity() %></td>
                            <td>Rp. <%= dcf.format(o.getHarga()) %></td>
                        </tr>
                        <%}
                    }
                    %>
                </tbody>
            </table>>
        </div>
                
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
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
        
        <%@include file="includes/footer.jsp"%>
    </body>
</html>
