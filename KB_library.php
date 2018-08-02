<?php
  function test_email($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

  function test_pwd($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

  function Connect2Database() {
    include('KB_config.php');
    extract($dbsettings);
  	$conn = mysqli_connect($server_name, $user, $pass, $database);
  	if(!$conn) {
  	  echo "Error: Unable to connect to MySQL." . "<br>";
  	  echo "Debugging Errorno: " . mysqli_connect_errno() . "<br>";
  	  echo "Debugging Error: " . mysqli_connect_error();
  	  exit;
  	}
    return $conn;
  }

  function LogIn($email, $pwd) {
    $sql = "SELECT * FROM `PassAccount` WHERE `email` = \"" . $email . "\"";
    $results = mysqli_query(Connect2Database(), $sql);
    if (mysqli_num_rows($results) > 0) {
      while($row = mysqli_fetch_assoc($results)) {
        if ($row["status"] = true) {
          if (strcmp($row["pass"], md5($pwd))==0){
            $_SESSION["userName"] = $email;
            $_SESSION["userRights"] = $row["rights"];
            return True;
          }
          else {
            return False;
          }
        }
      }
    }
  }

?>
