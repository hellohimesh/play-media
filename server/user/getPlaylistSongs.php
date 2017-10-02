<?php

	include("../config.php");
	$id = $_GET['id'];
  $ara = array();
	$result = mysqli_query($con,"SELECT * FROM playlist_songs where playlist_id like '".$id."'") or die(mysqli_error($con));
	while($x = mysqli_fetch_assoc($result)){
		array_push($ara,$x);

	}
  echo json_encode($ara);
  ?>
