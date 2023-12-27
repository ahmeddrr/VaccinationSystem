<?php
include('admin_includes/header.inc.php');
$showvaccines_sql = "SELECT * FROM `stock_info` JOIN `hospital_info` on `hospital_id` = `hosp_ID`
JOIN `vaccine_info` on `vaccine_id` = `vacc_ID`";
$rows = mysqli_query($conn, $showvaccines_sql);

$countReport = "SELECT COUNT(`stock_ID`) from `stock_info`";
$runQuery = mysqli_query($conn, $countReport);
foreach ($runQuery as $res) {
    $result = $res['COUNT(`stock_ID`)'];
}

?>
<style>
    .table {
        font-size: 0.9rem !important;
    }
</style>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>List of Stock</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Stock Report</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">All Vaccines | <span> Stock Report :
                                <?php echo $result; ?>
                            </span></h5>

                        <!-- Table with stripped rows -->
                        <table class="table datatable">
                            <!-- <p>Total Vaccines: </p> -->
                            <thead>
                                <tr>
                                    <!-- <th scope="col">#</th> -->
                                    <th scope="col">Code</th>
                                    <th scope="col">Hospital </th>
                                    <th scope="col">Vaccine</th>
                                    <th scope="col">Availabilty</th>
                                    <!-- <th scope="col">Date Created</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $srno = 1;
                                foreach ($rows as $stock) {
                                    ?>
                                    <tr>

                                        <td>
                                            <?php echo $stock['stock_ID']; ?>
                                        </td>
                                        <td>
                                            <?php echo $stock['hospital_name']; ?>

                                        </td>
                                        <td>
                                            <?php echo $stock['vaccine_name']; ?>
                                        </td>
                                        <td style="width: 20%;">
                                            <span class="badge bg-danger">
                                                <?php echo $stock['avail_status']; ?>
                                            </span>
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