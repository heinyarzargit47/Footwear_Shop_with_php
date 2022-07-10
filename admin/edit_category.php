<!doctype html>
<html lang="en">
  

  <?php
  
   require 'head.php';
  ?>
  <body>
     <?php
   require 'nav.php';
    ?>
    
<div class="container-fluid">
  <div class="row">
    <?php
   require 'sidebar.php';

   $id = $_REQUEST['id'];
   require 'connection.php';
   $data = ['id'=>$id];
   $sql = "SELECT * from categories where id=:id";
   $stmt = $pdo->prepare($sql);
   $stmt->execute($data);
   $result = $stmt->fetchAll();
   // var_dump($result[]['brand_name']);
   if(sizeof($result)){
    $category_name = $result[0]['category_name'];
    $category_code = $result[0]['category_code'];
    

   }




    ?>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit Categories Information</h1>
        
      </div>
      <form action="update_category.php" method="post">
        <input type="hidden" name="id" value="<?php echo $id ?>">



        <div class="row">
          <div class="col-lg-4">
            <label>Category Name</label>
            <input type="text" class="form-control" name="category_name" required="required" value="<?php echo $category_name ?>">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-">
            <label>Category Code</label>
            <input type="text" class="form-control" name="category_code" required="required" value="<?php echo $category_code ?>">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4">
            <input type="submit" value="Update Category" class="btn btn-info">
          </div>
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
