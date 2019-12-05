<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--This is a signup page which is used for registration of new users.

@author Minal Devanand Vaity

 -->
<!DOCTYPE html>
<html>
<head>
    <head>
    <meta charset="ISO-8859-1">
<title>Medical Students Study Application</title>
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
  
<h1>Register</h1>
<form action="add.jsp" method="post">
<h6>User name :</h6> <input type="text" name="username" /><br />
<h6>password :</h6> <input type="password" name="password" /><br />
<h6>First name :</h6> <input type="text" name="firstname" /><br />
<h6>Last name :</h6><input type="text" name="lastname" /><br />

<input type="submit" class="btn btn-primary" value="Add Details" /><br />
</form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>