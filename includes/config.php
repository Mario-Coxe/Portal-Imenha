<!-- Conexao com BD -->
<?php
$con = mysqli_connect("localhost","root","","portal-imenha");

if (mysqli_connect_errno()) // Check conexao
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>