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
<a class="active" href="index.php"><i class="fa fa-home"></i>&nbsp;Home</a>
  <a href="technology.php"><i class="fa fa-cloud"></i>&nbsp;Technology</a>
  <a href="growth.php"><i class="fa fa-leaf"></i>&nbsp;Growth</a>
  <a href="diseases.php"><img src="images/health.png" width="20px"></img>&nbsp;Diseases</a>
  <a href="yields.php"><i class="fa fa-busket"></i>&nbsp;Yields</a>
  <a href="loans.php"><i class="fa fa-money"></i>&nbsp;Loans</a>

    <?php session_start(); if(!isset($_SESSION['ID']))
      {
        
        echo "<a href='admin/login.php'>&nbsp;<img src='images/user.png' width='20px'>&nbsp;Account</a>";
      }
        else {
        
        echo "<a href='admin/logout.php'><img src='images/user.png' width='20px'>&nbsp;Logout</a><a href='admin/index.php'><img src='images/settings-gears.png' width='20px'>&nbsp;Dashboard</a>";
      }
        ?>
  

  </div>
  
  	</div>