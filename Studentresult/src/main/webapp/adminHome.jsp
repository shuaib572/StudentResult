<!DOCTYPE html>
<html>
<head>
<style>

body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

h1 {
	color: #333;
	margin: 50px 0 30px;
	text-align: center;
	text-transform: uppercase;
}

nav {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: center;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

nav li {
	display: inline-block;
	margin: 10px;
}

nav a {
	color: #fff;
	font-size: 18px;
	text-decoration: none;
	text-transform: uppercase;
	transition: color 0.2s;
}

nav a:hover {
	color: #ff7f50;
}


</style>
	<meta charset="UTF-8">
	<title>Admin Home Page</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>This is Admin home page</h1>
	<nav>
		<ul>
			<li><a href="addstd.html">Add new Student</a></li>
			<li><a href="addresult.html">Add Student Result</a></li>
			<li><a href="reg.jsp">Registered Student</a></li>
			<li><a href="stdres.jsp">All Student Result</a></li>
			<li><a href="index.html">Home Page</a></li>
		</ul>
	</nav>
</body>
</html>
