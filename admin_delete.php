<?php
require_once 'template/header_admin.php';
require_once 'template/check_login.php';
//!!!! check isset id in GET!!!!!
if (isset($_GET)) {
  $id = $_GET['id'];
  $data = deleteArticle($conn, $id);
}
?>
<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <?php
      if ($data === true) {
        echo '<h3>Article was deleted</h3>';
      }
      else {
        echo 'Error!'.$data;
      }
      ?>
      <div class="">
        <a href="/admin.php"><input class="btn btn-success mt-4" type='submit' value='back to admin'></a>
      </div>
    </div>
  </div>
</div>
<?php
close($conn);
?>
<?php
require_once('template/footer.php');
?>
