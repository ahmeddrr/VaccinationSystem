<?php

echo rand(1000, 9999);

// echo $_FILES["file"]["name"];
// echo $imageFileType;
if (isset($_POST['submit'])) {
    $target_dir = "admin/";
    $target_file = $target_dir . basename($_FILES["file"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    echo "<pre>";
    print_r($_FILES);
    echo "</pre>";
}

// print_r($_FILES["file"]);
// if (array_key_exists('file', $_FILES)) {
// }

// // // Check if image file is a actual image or fake image
// // if(isset($_POST["submit"])) {
// //   $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
// //   if($check !== false) {
// //     echo "File is an image - " . $check["mime"] . ".";
// //     $uploadOk = 1;
// //   } else {
// //     echo "File is not an image.";
// //     $uploadOk = 0;
// //   }
// // }

// // // Check if file already exists
// // if (file_exists($target_file)) {
// //   echo "Sorry, file already exists.";
// //   $uploadOk = 0;
// // }

// // // Check file size
// // if ($_FILES["fileToUpload"]["size"] > 500000) {
// //   echo "Sorry, your file is too large.";
// //   $uploadOk = 0;
// // }

// // // Allow certain file formats
// // if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
// // && $imageFileType != "gif" ) {
// //   echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
// //   $uploadOk = 0;
// // }

// // // Check if $uploadOk is set to 0 by an error
// // if ($uploadOk == 0) {
// //   echo "Sorry, your file was not uploaded.";
// // // if everything is ok, try to upload file
// // } else {
// //   if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
// //     echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
// //   } else {
// //     echo "Sorry, there was an error uploading your file.";
// //   }
// }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <form action="#" method="POST" enctype="multipart/form-data">
        <input type="file" name="file" id="file">
        <button name="submit" type="submit">upload</button>

    </form>

</body>

</html>