<?php 
session_start();
include('includes/config.php');

?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portal - IMENHA| Home</title>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/modern-business.css" rel="stylesheet">

  <link href="fonts/css/fontawesome.css" rel="stylesheet">
  <link href="fonts/css/brands.css" rel="stylesheet">
  <link href="fonts/css/solid.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
   <?php include('includes/header.php');?>
   <?php include('includes/slider.php'); ?>
    <!-- Page Content -->
    <div class="container-fluide m-3">
     

     
      <div class="row" style="margin-top: 4%">
       <div class="col-md-3">
        <?php include"includes/leftsidebar.php"; ?>
       </div>
        <!-- Blog Entries Column -->
        <div class="col-md-6">

          <!-- Blog Post -->
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while (@$row=mysqli_fetch_array($query)) {
?>

          <div class="card mb-4">
          <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"> <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>"></a>
            <div class="card-body">
              <h2 class="card-title"><?php echo htmlentities($row['posttitle']);?></h2>
                 <p><b>Categoria : </b> <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a> </p>
       
              <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="btn btn-primary">Ler &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              Postado em: <?php echo htmlentities($row['postingdate']);?>
           
            </div>
          </div>
<?php } ?>
       

      

          <!-- Pagination -->


    <ul class="pagination justify-content-center mb-4">
        <li class="page-item"><a href="?pageno=1"  class="page-link">Primeiro</a></li>
        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?> page-item">
            <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>" class="page-link">Prev</a>
        </li>
        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?> page-item">
            <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?> " class="page-link">Seguinte</a>
        </li>
        <li class="page-item"><a href="?pageno=<?php echo $total_pages; ?>" class="page-link">Último</a></li>
    </ul>

        </div>

        <!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar.php');?>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
      <?php include('includes/footer.php');?>

