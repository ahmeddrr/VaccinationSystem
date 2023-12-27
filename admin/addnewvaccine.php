<?php
include('admin_includes/header.inc.php');
// define variables and set to empty values
$vaccine_name = $vaccine_info = $target_file = "";
$vaccine_nameErr = $vaccine_infoErr = "";
$uploadErr = [];
if (isset($_POST['submit'])) {
  $target_dir = "assets/img/vaccines/";
  include("admin_includes/imageuploadcode.php");


  if (empty($_POST["vaccine_name"])) {
    $vaccine_nameErr = "Vaccine Name is required";
  } else {
    $vaccine_name = test_input($_POST["vaccine_name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/", $vaccine_name)) {
      $vaccine_nameErr = "Only letters and white space allowed";
    }
  }

  if (empty($_POST["vaccine_info"])) {
    $vaccine_infoErr = "Give some information about this vaccine.";
  } else {
    $vaccine_info = test_input($_POST["vaccine_info"]);

  }

  if (empty($vaccine_nameErr) && empty($vaccine_infoErr)) {
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      echo "Sorry, your file was not uploaded.";
      // if everything is ok, try to upload file
    } else {
      if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
        echo "The file " . htmlspecialchars(basename($_FILES["file"]["name"])) . " has been uploaded.";
      } else {
        echo "Sorry, there was an error uploading your file.";
      }
    }
    $insertQuery = "INSERT INTO `vaccine_info`(`vaccine_name`, `vaccine_info`, `vaccine_image`) 
                      VALUES ('$vaccine_name', '$vacc_info', '$target_file')";
    $runQuery = mysqli_query($conn, $insertQuery);
    if ($runQuery) {
      header('Location: vaccines_info.php');
      exit();
    }
  }

}











?>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Add City</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a href="vaccines_info.php">Vaccines</a></li>
        <li class="breadcrumb-item active">Register New Vaccine</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Register New Vaccine</h5>
            <!-- <p><span class="text-danger">* required field</span></p> -->
            <!-- Add new City -->
            <form method="POST" action="#" enctype="multipart/form-data">
              <div class="row mb-3">
                <label for="file" class="col-sm-2 col-form-label">Select image</label>
                <div class="col-sm-5">
                  <input type="file" name="file" id="file" class="form-control" required>
                  <div class="text-danger col-sm-5">
                    <ul>
                      <?php foreach ($uploadErr as $Err) {
                        echo "<li>$Err</li>";
                      } ?>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="row mb-3">
                <!-- <label for="vaccine_name" class="col-sm-2 col-form-label">Vaccine Name</label> -->
                <div class="col-sm-5">
                  <input type="text" name="vaccine_name" placeholder="Vaccine Name" id="vaccine_name"
                    class="form-control">
                </div>
                <p class="text-danger col-sm-5">* </p>
              </div>
              <div class="row mb-3">
                <!-- <label for="vaccine_info" class="col-sm-2 col-form-label">Vaccine Info</label> -->
                <div class="col-sm-5">
                  <textarea class="form-control" placeholder="Vaccine Information" name="vaccine_info"
                    id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <p class="text-danger col-sm-5">* </p>
              </div>
              <div class="row mb-3">
                <!-- <label class="col-sm-2 col-form-label">Register</label> -->
                <div class="col-sm-5">
                  <button type="submit" name="submit" class="btn btn-primary">Register</button>
                  <button type="reset" class="btn btn-danger">Clear</button>
                </div>
              </div>
            </form><!-- End Add New City -->
          </div>
        </div>

      </div>
    </div>
  </section>
</main><!-- End #main -->


<?php
include('admin_includes/footer.inc.php');
?>