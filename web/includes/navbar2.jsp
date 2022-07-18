<!--
<%-- 
    Document   : navbar2
    Created on : Jul 9, 2022, 9:51:03 AM
    Author     : nural
--%>

 header section start 
    
<header>

    <a href="#" class="logo">MY CAFE</a>

    <nav class="nb">
        <a href="index.jsp">Home</a>
        <a href="menuUser.jsp">Menu</a>
        <a href="index.jsp">About</a>
        <a href="index.jsp">Contact</a>
    </nav>

    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <a href="cart.jsp" class="fas fa-shopping-cart"style="text-decoration: none"></a>
        <%
        if(auth != null){%>
            <a href="orders.jsp" class="far fa-calendar-check" style="text-decoration: none"></a>
            <a href="log-out" class="fas fa-sign-out-alt" style="text-decoration: none;" ></a>
        <%}else {%>
            <a href="login.jsp" class="fas fa-sign-in-alt" style="text-decoration: none" ></a>
        <%}
        
        %>
        
        
        
        
       
    </div>
    
    


</header>


 header section end 

-->
