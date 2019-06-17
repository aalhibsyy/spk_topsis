<!doctype html>
<html class="no-js" lang="">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Topsis</title>
      <link rel="icon" href="assets/images/favicon.png">
      <link rel="stylesheet" href="assets/css/lib/lib.min.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
         
          <!-- Bootstrap Core CSS -->
      <link href="<?= base_url()?>!!/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

      <!-- MetisMenu CSS -->
      <link href="<?= base_url()?>!!/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

      <!-- Custom CSS -->
      <link href="<?= base_url()?>!!/dist/css/sb-admin-2.css" rel="stylesheet">

      <!-- Custom Fonts -->
      <link href="<?= base_url()?>!!/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   </head>
   <body class="bg-dark">
   <div class="container-fluid">
      <div class="sufee-login d-flex align-content-center flex-wrap">
         <div class="container">
            <div class="login-content">
               <div class="login-form">
                  <div class="login-logo">
                     <a href="<?php echo base_url(); ?>">
                     <h3>Aplikasi SPK Untuk Menentukan Nilai Produktif</h3>
                     <img class="align-content" src="<?= base_url()?>assets/images/bakdat.png" alt="" style="max-width: 60%;">
                     </a>
                  </div>
                  <form method="POST" action="<?php echo base_url() ?>login">
                     <div class="form-group">
                        <label>Username</label>
                        <input type="text"  name="username" class="form-control" placeholder="Username">
						<?php echo form_error('username'); ?>
                     </div>
                     <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Password">
						<?php echo form_error('password'); ?>
                     </div>
					 <?php if (isset($error)) { echo $error; }; ?>
                     <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Login</button>
                  </form>				  
               </div>
            </div>
         </div>
      </div>
      </div>
        <!-- jQuery -->
        <script src="<?= base_url()?>!!/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?= base_url()?>!!/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?= base_url()?>!!/bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<?= base_url()?>!!/dist/js/sb-admin-2.js"></script>

   </body>
</html>