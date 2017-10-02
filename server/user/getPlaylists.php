<?php

	include("../config.php");
  $ara = array();
  $result = mysqli_query($con,"SELECT * FROM playlist ") or die(mysqli_error($con));
	while($x = mysqli_fetch_assoc($result)){
		array_push($ara,$x);

	}
  echo json_encode($ara);
  ?>
