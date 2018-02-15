<head>
<link rel="shortcut icon" href="../images/BookSearch.png" />
</head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial;
}
.navbar a {
	float: right;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
}

.navbar a:hover,.dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>


<div class="navbar">

	<div class="dropdown">
		<button class="dropbtn">
			HOME 
		</button>
	</div>

	<div class="dropdown">
		<button class="dropbtn">
			ADD BOOK<i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
			<a href="getPage">Add One Book</a>
		</div>
	</div>

	<div class="dropdown">
		<button class="dropbtn">
			BOOKS <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
			<a href="getAllBooks">View
				All</a>
		</div>
	</div>
	
	<div class="dropdown">
		<button class="dropbtn">
			SEARCH <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
			<a href="getSearchPage">Search By Name</a>
		</div>
	</div>

	<div align="right">
		<a href="logout">LogOut</a>
	</div>
	<div>
		<a href="#">Profile</a>
	</div>
</div>
<div align="right"><span style="color:red">Current Logged in User: ${username}</span></div>