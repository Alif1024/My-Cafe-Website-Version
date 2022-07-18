<%@page import="java.text.DecimalFormat"%>
<%@page import="DAO.ProductDao"%>
<%@page import="java.util.*"%>
<%@page import="Connection.DbCon"%>
<%@page import="Model.*"%>
    <%
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf", dcf);
    
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
        request.setAttribute("auth", auth);
    }
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if(cart_list != null) {
        ProductDao pDao = new ProductDao(DbCon.getConnection());
        cartProduct = pDao.getCartProducts(cart_list);
        double total = pDao.getTotalCartPrice(cart_list);
        request.setAttribute("cart_list", cart_list);
        request.setAttribute("total", total);
    }
    %>
<%-- 
    Document   : cart.jsp
    Created on : Jul 5, 2022, 6:20:34 PM
    Author     : nural
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cart Page</title>
        <%@include file="includes/head.jsp" %>
        <style type="text/css">
            .table tbody td{
                vertical-align: middle;
            }
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 25px;
            }
        </style>
    </head>
    <body>
        <%@include file="includes/navbar.jsp"%>
        
        <div class="container" style="margin-top: 10rem">
            <div class="d-flex py-3"><h1>Total Price : Rp. ${ (total>0)?dcf.format(total):0 }</h1><a class="mx-3 btn btn-warning fs-3 text-white fw-bold" href="cart-check-out">Check Out</a></div>
            <table class="table table-loght fs-3">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Cancel</th>
                    </tr> 
                </thead>
                <tbody>
                <% if(cart_list != null) {
                        for(Cart c:cartProduct){%>
                            <tr>
                                <td> <%= c.getNama() %> </td>
                                <td> <%= c.getKategori() %> </td>
                                <td> Rp. <%= dcf.format(c.getHarga())  %> </td>
                                <td>
                                    <form action="" method="post" class="form-inline">
                                    <input type="hidden" name="id" value=" <%= c.getId() %> " class="form-input">
                                    <div class="form-group d-flex justify-content-between">
                                        <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%= c.getId() %>"><i class="fas fa-minus-square"></i></a>
                                        <input type="text" name="quantity" class="form-control fs-3" value="<%= c.getQuantity() %>" readonly>
                                        <a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%= c.getId() %>"><i class="fas fa-plus-square"></i></a>
                                    
                                    </div>
                                    </form>
                                </td>
                                <td><a class="btn btn-sm btn-danger fs-3" href="remove-from-cart?id=<%= c.getId() %>">Remove</a></td>>
                            </tr>
                        <%}
                   } 
                %>
                    
                </tbody>
            </table>
            
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
        
        
        
        <%@include file="includes/footer.jsp" %>
    </body>
</html>

