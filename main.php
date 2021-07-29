<?php 
session_start();
// echo "<pre>";
// print_r($_SESSION['Admin']);
// echo "</pre>";


?>
<?php
if (isset($_SESSION['Admin']))
{?>


<!DOCTYPE html>
<html>

<head>
    <title>Task</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
        integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css">
    <link rel="stylesheet" href="index.css">
</head>
<!-- Navigaion bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="#">ADMIN PAGE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      
      <button class="btn btn-outline-danger my-2 my-sm-0" type="submit"><a href="logout.php" class="button button1" >LOGOUT</button></a>
    </form>
  </div>
</nav>
<body>
<div class="container">
<h1 class="text-center mt-4 text-danger"> WELCOME GET THE  DETAILS OF EMPLOYEE </h1>
<h3 class='mt-4 ml-5'>Links to access the employee details</h3>
<div class="list-group px-5 mt-5">
  <a href="user5.php" class="list-group-item  mt-3 mb-3  list-group-item-action list-group-item-success">Get the Employee Details
  <span class="badge badge-primary badge-pill">05</span>
  </a>
  <a href="user10.php" class="list-group-item mt-3 mb-3 list-group-item-action list-group-item-info">Get the Employee Details
  <span class="badge badge-dark badge-pill">10</span>
  </a>
  <a href="user25.php" class="list-group-item  mt-3 mb-3  list-group-item-action list-group-item-danger">Get the Employee Details
  <span class="badge badge-success badge-pill">25</span>
  </a>
  <a href="user100.php" class="list-group-item  mt-3 mb-3  list-group-item-action list-group-item-dark">Get the Employee Details
  <span class="badge badge-danger badge-pill">100</span>
  </a>

</div>

</div>
</body>
</html>

<?php } else {
                                    ?>   <script>
                                    location.href = "../index.php";
                                    </script>
                                <?php } ?>