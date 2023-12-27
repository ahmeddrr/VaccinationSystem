<?php
include('admin_includes/header.inc.php');
// define variables and set to empty values
$hospital_name = $hospital_address = $hospital_contact = $hospital_username = $hospital_password = "";
$hospital_nameErr = $hospital_addressErr = $hospital_contactErr = $hospital_usernameErr = $hospital_passwordErr = "";

if (isset($_POST['submit'])) {
  if (empty($_POST["hospital_name"])) {
    $hospital_nameErr = "Hospital Name is required";
  } else {
    $hospital_name = test_input($_POST["hospital_name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/", $hospital_name)) {
      $hospital_nameErr = "Only letter (name) and white space allowed";
    }
  }
  if (empty($_POST["hospital_address"])) {
    $hospital_addressErr = "Hospital address is required";
  } else {
    $hospital_address = test_input($_POST["hospital_address"]);

  }
  if (empty($_POST["hospital_contact"])) {
    $hospital_contactErr = "Hospital contact is required";
  } else {
    $hospital_contact = test_input($_POST["hospital_contact"]);

  }
  if (empty($_POST["hospital_username"])) {
    $hospital_usernameErr = "Hospital username is required";
  } else {
    $random_number = rand(100, 999);
    $hospital_username = test_input($_POST["hospital_username"] . "-" . $random_number);
    // echo $hospital_username;
  }

  $hospital_password = $hospital_username . "-" . rand(1000, 9999);

  // pr($_POST);
  // echo $random_number;
  // echo $hospital_nameErr;
  // echo $hospital_addressErr;
  // echo $hospital_username;
  // echo $hospital_password;
  // echo $hospital_passwordErr;
  // echo $hospital_contactErr;

  if (empty($hospital_nameErr) && empty($hospital_addressErr) && empty($hospital_usernameErr)) {
    $insertQuery = "INSERT INTO `hospital_info`(`hospital_name`, `hospital_address`, `hospital_contact`,`hospital_username`,`hospital_password`) 
                        VALUES ('$hospital_name', '$hospital_address','$hospital_contact', '$hospital_username','$hospital_password')";
    $runQuery = mysqli_query($conn, $insertQuery);
    if ($runQuery) {
      header('Location: hospitals.php');
      exit();
    }
  }
}













?>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Register Hospital</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a href="hospitals.php">Hospital</a></li>
        <li class="breadcrumb-item active">Register New Hospital</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">

          <div class="card-body">
            <h5 class="card-title">Register New Hospital</h5>
            <!-- <p><span class="text-danger">* required field</span></p> -->
            <!-- Add new City -->
            <form method="POST" action="#" enctype="multipart/form-data">
              <div class="row mb-3">
                <!-- <label for="Hospital_name" class="col-sm-2 col-form-label">Hospital Name</label> -->
                <div class="col-sm-5">
                  <input type="text" name="hospital_name" placeholder="Hospital" id="hospital_name"
                    class="form-control">
                </div>
                <p class="text-danger col-sm-5">* </p>
              </div>
              <div class="row mb-3">
                <div class="col-sm-5">
                  <input type="text" name="hospital_address" placeholder="Address" id="hospital_address"
                    class="form-control">
                </div>
                <p class="text-danger col-sm-5">* </p>
              </div>
              <div class="row mb-3">
                <div class="col-sm-5">
                  <input type="text" name="hospital_contact" placeholder="Contact" id="hospital_contact"
                    class="form-control">
                </div>
                <p class="text-danger col-sm-5">* </p>
              </div>
              <div class="row mb-3 ">
                <div class="col-sm-5">
                  <input type="text" name="hospital_username" placeholder="Username" id="hospital_username"
                    class="form-control">
                </div>
                <p class="text-danger col-sm-5">* </p>
                <br>
                <p style="font-size:0.9vw;" class="text-danger text-bold col-sm-5"> &nbsp; Password will be generated
                  automaticaly</a>
                </p>
              </div>
              <div class="row mb-3 ">
                <div class="col-sm-5">
                  <input type="text" readonly name="hospital_password" value="<?php echo $hospital_username; ?>"
                    placeholder="Password" id="hospital_password" class="form-control visually-hidden">
                </div>
                <!-- <p class="text-danger col-sm-5">* </p> -->
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