<?php require_once 'actions/db_connect.php';

?>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Big events</title>

    <style type="text/css">
    #logos{
        width: 50px;

    }
        .manageUser {
            width: 50%;
            margin: auto;
        }
        .jumbotron1{
            background: url("http://trendsformer.net/wp-content/uploads/2015/05/11159898_841104455967365_2200232877150825434_o.jpg") no-repeat center center;
            background-size: cover;
            height: 350px;
            margin-bottom: 50px;
        }

    </style>

</head>
<body>

     <style type="text/css">
        .manageUser {

            width: 100%;
            margin: auto;
    }

    h1 {
            text-align: center;
            color:#337AB7;
            font-size: 50px;
            margin-bottom: 30px;
            margin-top:30px;
        }
        img {
            width: 100%;
        }

    </style>

 

</head>

<body>

 <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <ul>
            <a class="navbar-brand" href="#">Event list</a>
        </ul>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Miscelinious <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Sight Seeing</a></li>
            <li><a href="#">Shopping</a></li>
            <li><a href="#">Wine & Dining</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Lifestyle</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Vienna View</a></li>
          </ul>
        </li>
        <li><a href="login.php" class="btn btn-lg btn-default" style="color:rgb(144,0,0)">Sign in</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<h1 class="text-primary text-center">VIENNA</h1>
<div class="jumbotron1"></div>
<div class="container">
        <?php

            $sql = "SELECT image,description,dateandtime,id FROM bige";

            $result = $connect->query($sql);

 
            echo "<div class='row'>";    
            if($result->num_rows > 0) {

                while($row = $result->fetch_assoc()) {

                    echo "

                        <div class='col-md-4'>
                          <div class='thumbnail'>
                            <a href='view.php?id=".$row['id']."'>
                              <img src='".$row['image']."' style='width:100%;height:250px;'>
                              <div class='caption'>
                                <p>".$row['description']."</p>
                                <p>".$row['dateandtime']."</p>
                              </div>
                            </a>
                          </div>
                        </div>
";

                }

            }
            echo "</div>";

            ?>
</div>
        <footer class="blog-footer text-center jumbotron">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <h3 class="text-center">Facebook</h3>
                <img src="http://webiconspng.com/wp-content/uploads/2017/09/Facebook-PNG-Image-63654.png" id="logos">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <h3 class="text-center">Instagram</h3>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Instagram.pn.png/240px-Instagram.pn.png" id="logos">
            </div>
            
        </div>
        <br>
        <h4> &copy; Hadasa Pinling Geiger - CodeFactory 2018</h4>
        <h4>
            <a href="#">Back to top</a>
        </h4>
   </footer>

</body>
</html>
