<!-- MySQLi Procedural -->
<?php
session_start();

$hostname = "localhost";
$username = "root";
$password = "";
$database = "vacc_db";

// For Connection
$conn = mysqli_connect($hostname, $username, $password, $database);

if ($conn) {
    echo ("$database connected successfully");
}

//Functions

function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

function pr($input)
{
    echo "<pre>";
    print_r($input);
    echo "</pre>";
}
function prx($input)
{
    echo "<pre>";
    print_r($input);
    echo "</pre>";
    die();
}