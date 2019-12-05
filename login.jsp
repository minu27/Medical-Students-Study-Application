<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--This is a login page which is loaded when user clicks on login icon

@author Minal Devanand Vaity

 -->
<!DOCTYPE html>
<html>
    <head>
    <meta charset="ISO-8859-1">
<title>Medical Student Study Application</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
      
    </head>
<body>
  <nav>
    <div class="nav-wrapper blue">
          <a href="#" class="brand-logo center">Medical Students Study Application</a>
    
    </div>
  </nav>
    
    
<h1>Login</h1>
<form action="auth.jsp" method="post">
<div class="form-group w-50">
<h6>User name :</h6> <input type="text" class="form-control" name="username" /><br />
</div>
<div class="form-group w-50">
<h6>Password :</h6> <input type="password" class="form-control" name="password" /><br />
</div>
<input type="submit" value="Login" class="btn btn-primary"/> <br/>
</form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>