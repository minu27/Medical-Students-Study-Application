<!DOCTYPE html>
<!--This is a webpage which is loaded initially when the project is run

@author Minal Devanand Vaity
 -->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Student Medical Study Application</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
<style>

body {
  font-size: 16px;
  font-family:'Source Sans Pro';
  background-image : url("https://www.biopharmapress.com/wp-content/uploads/2019/06/commercial-communities-of-Netherlands-Germany.png");
  background-repeat: no-repeat;
}

.button-images {
max-width: 950px;
margin: 150px auto;
cursor: pointer;
 
}

.button-container {
position: relative;
text-align: center;
padding: 0;
border-radius:50%; 
overflow:hidden; 
}



.button-container A:before{  
  content: '';
  display: inline-block;
  height: 48%; 
  /* 
  vertical-align:middle; 
  height: 100%;*/
  
 
  }


.button-container a {
  transition: all 1s ease-out;
  background: rgba(88, 88, 88, 0.7);
  border-radius:50%; 
  vertical-align:middle;
  padding:5%; 
  color: #FFFFFF;
  position:absolute;
  font-size: 1.125em; 
  font-weight: 700; 
  top: 0;
  left:0;
  right:0;
  bottom:0;
  /* width:90%; */
  display:inline-block;
  text-decoration: none;
  text-transform:uppercase;
}

.button-container A:hover {
  background: none;
  border: none; 
  opacity:0;
}
.button-container img{width:100%; height:auto; display:block}


/*Columns*/
.one_half, .one_third, .two_third, .three_fourth, .one_fourth, .one_fifth, .two_fifth, .three_fifth, .four_fifth, .one_sixth, .five_sixth {
position: relative;
margin-right: 10%;
float: left;
min-height: 1px;
height: auto !important;
}

.one_fourth {
width: 25%;
}



.last {
margin-right: 0 !important;
clear: right;
}

.clearboth {
clear: both;
display: block;
font-size: 0;
height: 0;
line-height: 0;
width: 100%;
}

.spacer {
width: 150px;
}

</style>
      
</head>

<body>
  <nav>
    <div class="nav-wrapper blue">
          <a href="#" class="brand-logo center">Medical Students Study Application</a>
    
    </div>
  </nav>
    

  
		 <div class="button-images">
        <div class="one_fourth">
        	<div class="button-container">
						<a>	<div onclick='location.href="login.jsp"'>Login</div> </a>
           		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnu8bIzpnyL-L5Fs4ZygYXD-f8GBEepAUMvFNbOqfOm6h9Ddxglw&s"/>
            </div>
        </div>  
        <div class="spacer"></div>
   		
          <div class="one_fourth">
        	<div class="button-container">
				<a>	<div onclick='location.href="register.jsp"'>Register</div> </a>
           		<img src="https://www.hcpc-uk.org/globalassets/image-library/icons/icon-register-800x600.gif" />
            </div>
        </div>



	<div class="clearboth"></div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


</body>
</html>