<?php
include('admin_includes/header.inc.php');
// define variables and set to empty values
$nameErr = $emailErr = $ageErr = $city_idErr = "";
$name = $email = $age = $city_id = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  }  

  if (empty($_POST["age"])) {
    $ageErr = "Age is required";
  } else if($_POST["age"] < 1) {
    $ageErr = "Age must be Positive Number";
  } else{
      $age = test_input($_POST["age"]);      
  }    
  

  if (empty($_POST["city_id"]) || $_POST["city_id"] < 1) {
    $city_idErr = "Select a City";
  } else {    
    $city_id = test_input($_POST["city_id"]);
  }  
}
if(isset($_POST['submit'])) {
  if(empty($nameErr) && empty($emailErr) && empty($ageErr) && empty($city_idErr)) {
      $addstudent_sql = "INSERT INTO `users` (name, email, age, city_id,type) VALUES ('$name', '$email', '$age', '$city_id','student')";
      if (mysqli_query($conn, $addstudent_sql)) {
        //   echo "New record created successfully";
          header('Location: students.php');
          exit;            
        } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
  }
}
?>
<main id="main" class="main">

<div class="pagetitle">
  <h1>Add Student</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index.php">Home</a></li>
      <li class="breadcrumb-item"><a href="students.php">Students</a></li>
      <li class="breadcrumb-item active">Add Student</li>
    </ol>
  </nav>
</div><!-- End Page Title -->

<section class="section">
  <div class="row">
    <div class="col-lg-12">

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Add New Student</h5>
          <p><span class="text-danger">* required field</span></p>
          <!-- Add new City -->
          <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="row mb-3">
              <label for="name" class="col-sm-2 col-form-label">Name</label>
              <div class="col-sm-5">
                <input type="text" name="name" id="name" class="form-control" value="<?php echo $name?>">
              </div>
              <p class="text-danger col-sm-5">* <?php echo $nameErr;?></p>
            </div>
            <div class="row mb-3">
              <label for="email" class="col-sm-2 col-form-label">Email</label>
              <div class="col-sm-5">
                <input type="email" name="email" id="email" class="form-control" value="<?php echo $email?>">
              </div>
              <p class="text-danger col-sm-5">* <?php echo $emailErr;?></p>
            </div>            
            <div class="row mb-3">
              <label for="age" class="col-sm-2 col-form-label">Age</label>
              <div class="col-sm-5">
                <input type="number" name="age" id="age" min="1" class="form-control" value="<?php echo $age; ?>">
              </div>
              <p class="text-danger col-sm-5">* <?php echo $ageErr;?></p>
            </div>
            <div class="row mb-3">
              <label class="col-sm-2 col-form-label">City</label>
              <div class="col-sm-5">
                <select class="form-select" name="city_id" id="city_id" aria-label="Default select example">
                  <option value="0" selected>Select a City</option>
                  <?php
                  $showcities_sql = "SELECT * FROM `cities`";
                  $cities = mysqli_query($conn,$showcities_sql);
                  foreach($cities as $city)
                  { 
                  ?>
                  <option value="<?php echo $city['id']?>"><?php echo $city['city_name']?></option>
                  <?php
                  }
                  ?>                  
                </select>
              </div>
              <p class="text-danger col-sm-5">* <?php echo $city_idErr;?></p>
            </div>            
            <div class="row mb-3">
              <label class="col-sm-2 col-form-label">Submit Button</label>
              <div class="col-sm-5">
                <button type="reset" class="btn btn-danger">Clear</button>
                <button type="submit" name="submit" id="submit" class="btn btn-primary">Submit</button>
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