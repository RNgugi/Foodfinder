<?php




include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); // Redirecting To Home Page
}




$cheks = implode("','", $_POST['checkbox']);
//$sql1 = "DELETE from offer where F_ID in ('$cheks')";
//$result1 = mysqli_query($conn,$sql1) or die(mysqli_error($conn));
$sql = "DELETE FROM FOOD WHERE F_ID in ('$cheks')";

$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));

header('Location: delete_food_items.php');
$conn->close();


?>