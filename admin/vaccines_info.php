<?php
include('admin_includes/header.inc.php');
$showvaccines_sql = "SELECT * FROM `vaccine_info`";
$rows = mysqli_query($conn, $showvaccines_sql);

$countVaccines = "SELECT COUNT(`vacc_ID`) from `vaccine_info`";
$runQuery = mysqli_query($conn, $countVaccines);
foreach ($runQuery as $res) {
  $result = $res['COUNT(`vacc_ID`)'];
}

?>
<style>
  .table {
    font-size: 0.9rem !important;
  }
</style>

<main id="main" class="main">

  <div class="pagetitle">
    <h1>List of Vaccines</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item active">Vaccines</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">All Vaccines | <span> Registered Vaccines :
                <?php echo $result; ?>
              </span></h5>

            <!-- Table with stripped rows -->
            <table class="table datatable">
              <!-- <p>Total Vaccines: </p> -->
              <thead>
                <tr>
                  <!-- <th scope="col">#</th> -->
                  <th scope="col">Code</th>
                  <th scope="col">Image</th>
                  <th scope="col">Vaccine</th>
                  <th scope="col">Vaccine Info</th>
                  <th scope="col">Date Created</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $srno = 1;
                foreach ($rows as $vaccine) {
                  ?>
                  <tr>

                    <td>
                      <?php echo $vaccine['vacc_ID']; ?>
                    </td>
                    <td>
                      <img style="width:70px ; height: 70px; border-radius :40px;"
                        src="<?php echo $vaccine['vaccine_image']; ?>" alt="">

                    </td>
                    <td>
                      <?php echo $vaccine['vaccine_name']; ?>
                    </td>
                    <td style="width: 20%;">
                      <div>
                        <?php echo $vaccine['vaccine_info']; ?>
                      </div>
                    </td>
                    <td>
                      <?php echo $vaccine['vaccine_datecreated']; ?>
                    </td>
                  </tr>
                  <?php
                  $srno++;
                }
                ?>
              </tbody>
            </table>
            <!-- End Table with stripped rows -->

          </div>
        </div>

      </div>
    </div>
  </section>

</main><!-- End #main -->
<?php
include('admin_includes/footer.inc.php');
?>