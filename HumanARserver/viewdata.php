<?php
require "Chart.php";
use Antoineaugusti\EasyPHPCharts\Chart;
//connect to mysql
		$servername = "localhost";//ip address
		$username = "root";// user name of database
		$password = "root";// password
		$dbname = "android";//database name

		//connect to the database
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
		    die("error: " . $conn->connect_error);
		}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Charts</title>
	<link rel="stylesheet" href="chart.css">
	<style>
		*{margin: 0; padding: 0;}
		@import url(http://fonts.googleapis.com/css?family=Roboto);
		body{background: #FFF; font-family: 'Roboto', sans-serif;font-weight: 400}
		#content{background: #FFF; width: 1000px; padding: 20px; margin: 0 auto}
		h2{color: #4081BD; margin-bottom: 20px; font-weight: 400}
		.clearBoth:after{width: 300px; border: 1px solid #EEE; margin: 50px 0; display: block;}
		.containerChartLegend{width: 480px;padding-left: 20px}
	</style>
	<script src="ChartJS.min.js"></script>
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
	<div id= "dateselect">
		<form action="viewdata.php" method="get"> 
			<p>select a user:
			<select name="userid">
			<option value=0>--select--</option>
			 <?php
			$sql_user = "SELECT user_id, COUNT(*) FROM activity GROUP BY user_id";
			$res_user = $conn->query($sql_user);
			while($r = $res_user->fetch_array())
			  {
			    echo "<option value='".$r['user_id']."'>".$r['user_id']."</option>";
			  } 
			?> 
			</select>
		  
    Date: <input type="text" name="datepicker" id="datepicker" value=""><input type="submit"></p>
    
  </form>
	</div>
	<div id="content">
		<?php 

		//get the selected date 
		if($_GET){
			$date = $_GET["datepicker"];
		//get selected user
			$userid = $_GET["userid"];	
		}else{
			$date = "";
			$userid = "";
		}
		
		//
		if ($date and $userid) {
			//
			$sql="SELECT * FROM activity WHERE activity_name ='Standing' and activity_date = '".$date."' and user_id = '".$userid."'";
			$sql_w="SELECT * FROM activity WHERE activity_name ='Walking' and activity_date = '".$date."' and user_id = '".$userid."'";
			$sql_j="SELECT * FROM activity WHERE activity_name ='Jogging' and activity_date = '".$date."'and user_id = '".$userid."'";
		}else{
			echo "<script language=\"JavaScript\">alert(\"please select both user and date\");</script>";
			$sql="SELECT * FROM activity WHERE activity_name ='Standing'";
			$sql_w="SELECT * FROM activity WHERE activity_name ='Walking'";
			$sql_j="SELECT * FROM activity WHERE activity_name ='Jogging'";
		}
		//get count of standing
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {		    
		    $row=$result->num_rows;
		}else{
			$row = 0;
		}		
		//get count of walking
		$result_w = $conn->query($sql_w);
		if ($result_w->num_rows > 0) {
		    $row_w=$result_w->num_rows;
		}else{
			$row_w=0;
		}
		//get count of jogging
		$result_j = $conn->query($sql_j);
		if ($result_j->num_rows > 0) {		    
		    $row_j=$result_j->num_rows;
		}else {
			$row_j=0;
		}

		/*
		//To show a pie chart
		*/
		echo "<p>user: ".$userid." <br>date: ".$date."</p>";
		$pieChart = new Chart('pie', 'examplePie');
		$pieChart->set('data', array($row, $row_w, $row_j));
		$pieChart->set('legend', array('Standing','Walking', 'Jogging'));
		$pieChart->set('displayLegend', true);
		echo $pieChart->returnFullHTML();


		/*
		//	To show a radar chart
		*/
		$radarChart = new Chart('radar', 'exampleradar');
		$radarChart->set('data', array($row, $row_w, $row_j));
		$radarChart->set('legend', array('Standing','Walking', 'Jogging'));
		echo $radarChart->returnFullHTML();

		
		?>
	</div>
</body>
</html>