<?php

//Get JSON posted by Android Application
header("Content-Type: application/json");
//var_dump($_POST);
$json = $_POST["usersJSON"];
//error_log(var_dump($json));
//Remove Slashes
if (get_magic_quotes_gpc()){
$json = stripslashes($json);
}
//Decode JSON into an Array
$data = json_decode($json,TRUE);

//Util arrays to create response JSON
$a=array();
$b=array();

// // connect to the database

//Loop through an Array and insert data read from JSON into MySQL DB
$conn = new mysqli("localhost", "root", "root", "android");//ip address, database user, password, database name
foreach ($data as $item) {

	$query1 = "INSERT INTO activity (activity_name, activity_date, user_id, activity_id) VALUES ('". $item['activity']."','". $item['datevalue']."','". $item['userId']."','". $item['activityId']."')";

    $q = mysqli_query($conn, $query1) or die (mysqli_error($conn));

    if($q){
		$b["id"] = $item['activityId'];
		$b["status"] = 'yes';
		array_push($a,$b);
	}else{
		$b["id"] = $item['activityId'];
		$b["status"] = 'no';
		array_push($a,$b);
	}

}

//Post JSON response back to Android Application
echo (json_encode($a));

?>