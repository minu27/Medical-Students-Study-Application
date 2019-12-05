<!DOCTYPE html>
<!--This is a main page which is loaded after admin logs in which shows 
the different categories to select from along with the student data  .

@author Minal Devanand Vaity

 -->
 
 <html>
<head>
<meta charset="ISO-8859-1">
<title>Medical Student Study Application</title>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style>
	
body {
  font-size: 16px;
  font-family:'Source Sans Pro';
  background-image : url("https://www.biopharmapress.com/wp-content/uploads/2019/06/commercial-communities-of-Netherlands-Germany.png");
  background-repeat: no-repeat;
}

/*Columns*/
.one_half, .one_third, .two_third, .three_fourth, .one_fourth, .one_fifth, .two_fifth, .three_fifth, .four_fifth, .one_sixth, .five_sixth {
position: relative;
margin-right: 4%;
float: left;
height: 300px;
}

.one_fourth {
width: 34%;
}

.mCategory {
    font-size: 40px;
    color : white;
    padding: 90px;
    cursor: pointer;
    background-color: #389af5;
}

</style>

<style>
form {
    margin: 100px;
    width : 80%;
}
/* entire container, keeps perspective */
.flip-container {
	perspective: 1000px;
}
	/* flip the pane when hovered */
	.flip-container:hover .flipper, .flip-container.hover .flipper {
		transform: rotateY(180deg);
	}

.flip-container, .front, .back {
	width: 320px;
	height: 480px;
}

/* flip speed goes here */
.flipper {
	transition: 0.6s;
	transform-style: preserve-3d;

	position: relative;
}

/* hide back of pane during swap */
.front, .back {
	backface-visibility: hidden;

	position: absolute;
	top: 0;
	left: 0;
}

/* front pane, placed above back */
.front {
	z-index: 2;
	/* for firefox 31 */
	transform: rotateY(0deg);
}

/* back, initially hidden pane */
.back {
	transform: rotateY(180deg);
}

img
{
width: 300px;
height: 250px;
border-style: solid;
border-color : black;
}
</style>

</head>
<body>

  <nav>
    <div class="nav-wrapper blue">
          <a href="#" class="brand-logo center">Medical Students Study Application</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
        	<li><a href="index.jsp">Logout</a></li>
      	  </ul>
     </div>
  </nav>
    
    
    
<h2 class="z-depth-2 center">Select Category</h2>

	<form id="mForm" action="AdminSearch.jsp" method="post">

		<input id="currentSelect" name="currentSelect" type="hidden">
    
			<div class="one_fourth">
				<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
					<div class="flipper">
						<div class="front">
				           	<img src="https://fsa.zobj.net/crop.php?r=zZFgyGpatU4OboKS6BT7Z8qv_WlQj14pKceU8rIxG29mTRNZ819WgV-FWz-N5lHdy7T2nVwphoKz9y_w7LVO_APw_qwHF_FZSGGpVTsm24fz8pGzXwnNN9Fg1hJqQ_2Iih4pwnVNHHHxyf3j"/>				
						</div>
						<div class="back">
							<a>	<div class="mCategory" id="drugs">Drugs</div> </a>
						</div>
					</div>
				</div>
			</div>
				    
				    
			<div class="one_fourth">
				<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
					<div class="flipper">
						<div class="front">
				           	<img src="https://cdn.images.express.co.uk/img/dynamic/11/590x/Disease-X-UK-outbreak-pandemic-disease-hunters-WHO-PHE-1184538.jpg?r=1569852614592"/>
						</div>
						<div class="back">
							<a><div class="mCategory" id="diseases">Diseases</div> </a>
						</div>
					</div>
				</div>
			</div>
						
						
			<div class="one_fourth">
				<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
					<div class="flipper">
						<div class="front">
				           		<img src="https://dnlzsmybcpo0z.cloudfront.net/games/images/map_img_855147_1512756395.jpg" />
				
						</div>
						<div class="back">
								<a><div class="mCategory" id="diseases">Muscle Anatomy</div> </a>
						</div>
					</div>
				</div>
			</div>
						
			<div class="one_fourth">
				<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
					<div class="flipper">
						<div class="front">
				           	<img src="https://www.pngkit.com/png/detail/126-1268278_faqs-for-students-college-student-students-icon.png" />
						</div>
						<div class="back">
							<a>	<div class="mCategory" id="users">Students</div> </a>
						</div>
					</div>
				</div>
			</div>
	</form>


<script>

let els=document.querySelectorAll(".mCategory");
for (let el of els) {
    el.addEventListener("click", function() {
    	console.log(el.getAttribute("class"))
    	document.querySelector("#currentSelect").value=el.id;	
    	document.querySelector("#mForm").submit();

    });}
</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>