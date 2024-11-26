<?php
  $server = 'localhost' ;
  $user = 'root';
  $pass = '';
  $database= 'giaysneaker';
  $conn=new mysqLi($server, $user, $pass ,$database);
  if($conn){
    mysqli_query($conn,"SET NAMES 'utf8' ");
    echo 'da ket noi thanh cong';
  }
  else{
    echo 'ket noi that bai';
  }
  
  ?>