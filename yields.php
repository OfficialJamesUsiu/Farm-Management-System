
<!DOCTYPE html>
<html>
<head>
	<title>Yields - Tea Farm</title>
	<link rel="stylesheet" type="text/css" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
	<style type="text/css">
		.left{
			margin-left: 1%;
		}
	</style>
</head>
<body>
<?php include "header.php"; ?>
	<div class="container">
		<div class="left">

			<?php
include("config.php");
$sql = "SELECT Post_ID,title,description,author,featured from posts where status='publish' and category='Travel'order by date desc limit 10;";
$result = $db->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    	
    	$sql2 = "SELECT Name from users where email='".$row['author']."';";
    	
$result2 = $db->query($sql2);
$row2 = $result2->fetch_assoc();
        echo "<div class='articlelink'>
               <img src='admin/uploads/".$row['featured']."' width='100%' height='70%' class='articimage'><br>
               <div class='contentcontainer'>
               <label class='titlehai' style='margin-top:5px;'>".$row['title']."</label><br>
               <label><img src='images/man-user.png' width='20px' style='margin-top:5px;'></img>&nbsp; ".$row2['Name']."</label><br>
               
               <a href='view-post.php?pid=".$row['Post_ID']."'><input type='button' style='cursor:pointer; margin-top:5px;' class='read' value='Read More' ></a>
               </div>
			</div>	";
    }
} else {
    echo "No Posts Yet";
}
$db->close();
?>

					
		</div>
		
	</div>

<!-- <footer class="fut" align="center"><p>Tea Farm 2020</p></footer> -->
</body>
</html>