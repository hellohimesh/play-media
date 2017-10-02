<?php
include("config.php");
//header('Content-Type: application/json');

$data = file_get_contents("php://input");
$data = json_decode($data,true);

$name = $data['name'];
$artist = $data['artist'];

if(isset($name)&&isset($artist)){
	mysqli_query($con,"INSERT INTO playlist(
		`name`,
		`artist`) VALUES
		('".$name."',
		'".$artist."')")
	or die(mysqli_error($con));

	$last_id = mysqli_insert_id($con);
	$ara = array();
	$ara['name'] = $name;
	$ara['artist'] = $artist;
	$ara['id']=$last_id;
	$a=array();
	echo json_encode($ara);
}
else{
	echo "some error.try again";
}
