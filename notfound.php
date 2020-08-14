
<!DOCTYPE html>
<html>
<head>
	<title>Tea Farm</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		.left{
			margin-left: 1%;
		}
	</style>
</head>
<body>
	<div class="nav">
  <div class="nav-header">
    <div class="nav-title">
      <font color="yellow" size="5"><b>Tea</b></font> <font color="#cf8cea">Farm</font>
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
    <input type="checkbox" id="nav-check">
  <div class="nav-links" >
  <a class="active" href="index.php"><img src="images/home.png" width="20px"></img>&nbsp;Home</a>
  <a href="technology.php"><img src="images/technology.png" width="20px"></img>&nbsp;Technology</a>
  <a href="growth.php"><img src="images/sports.png" width="20px"></img>&nbsp;Growth</a>
  <a href="diseases.php"><img src="images/health.png" width="20px"></img>&nbsp;Diseases</a>
  <a href="yields.php"><img src="images/travel.png" width="20px"></img>&nbsp;Yields</a>
  <a href="loans.php"><img src="images/entertainment.png" width="20px"></img>&nbsp;Loans</a>

    <?php session_start(); if(!isset($_SESSION['ID']))
      {
        
        echo "<a href='admin/login.php'>&nbsp;<img src='images/user.png' width='20px'>&nbsp;Login/Register</a>";
      }
        else {
        
        echo "<a href='admin/logout.php'><img src='images/user.png' width='20px'>&nbsp;Logout</a><a href='admin/index.php'><img src='images/settings-gears.png' width='20px'>&nbsp;Dashboard</a>";
      }
        ?>
  

  </div>

	<div class="container" align="center">
		<div class="left">
      <h1>Page Not Found</h1>

			
					
		</div>
		
	</div>

<footer class="fut" align="center"><p>Tea Farm 2020</p></footer>
</body>
</html>