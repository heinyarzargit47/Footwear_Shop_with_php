<!doctype html>
<html lang="en">
  

  <?php
   require 'head.php';
  ?>
  <body>
     <?php
   // require 'nav.php';
    ?>
    
<div class="container-fluid">
  <div class="row">
    <?php
   // require 'sidebar.php';
    ?>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Admin Login</h1>
        
      </div>

      <form action="check_admin.php" method="POST">
        <div class="row">
          <div class="col-md-4">
            <label>
              Email
            </label>
            <input type="email" name="admin_email" required="required" class="form-control"> 
        </div>
      </div>
        <div class="row">
          <div class="col-md-4">
            <label>
              Password
            </label>
            <input type="password" name="admin_password" required="required" class="form-control"> 
        </div>
      </div>
        <div class="row">
          <div class="col-md-4">
            
            <input type="submit" class="btn btn-info"
            value="Login"> 
        </div>
      </form>

    
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
        <script src="dashboard.js"></script></body>
</html>