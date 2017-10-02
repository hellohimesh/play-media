<?php
include 'config.php';
  if(!file_exists('../playlist/'.$_GET['id'])){
    mkdir('../playlist/'.$_GET['id'],0777);
  }

  $upath="../playlist/".$_GET['id']."/";
  $path = "playlist/".$_GET['id']."/";

  $fname = string_sanitize($_FILES['file']['name']);
  function string_sanitize($s) {
      $result = preg_replace("/[^a-zA-Z0-9]+/", "_", html_entity_decode($s, ENT_QUOTES));
      return $result;
  }

  $fname = substr_replace($fname,".",sizeof($fname)-5,1);
  $target = $upath.$fname;
  $path = $path.$fname;

  echo "<Final-target>".$target."</Final-target>";
  // error_reporting(1);
  if(move_uploaded_file($_FILES['file']['tmp_name'],$target)){
   echo $fname." Uploaded.";
   mysqli_query($con,"INSERT INTO `playlist_songs`(playlist_id,path) VALUES('".$_GET['id']."','".$path."')")or die(mysqli_error($con));
  }
  else{
   echo "<error>Failed to upload.</error>";
  }

?>
