<%-- 
    Document   : register
    Created on : Jul 13, 2022, 3:53:19 AM
    Author     : nural
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cafe Register</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">User Register</div>
                <div class="card-body">
                    <form action="RegisterServlet" method="post">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="register-name" placeholder="Enter Your Name" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Email Address</label>
                            <input type="email" class="form-control" name="register-email" placeholder="Enter Your Email" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="register-password" placeholder="*******" required>
                        </div>
                        
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary" value="Register">Register</button>
                        </div>
                        
                        <div>
                            <a href="login.jsp">Already Have Account?</a><br>   
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
        
        
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    </body>
</html>
