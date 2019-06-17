<!DOCTYPE html>
<html lang="en">
<head>
	<title>REGISTRASI - SMK BAKTI IDHATA</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<?= base_url()?>assets/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url()?>assets/login/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
			<div class="box box-primary">
                    <!-- form start -->
                    <form role="form" method="POST" action="<?= site_url('Registrasi'); ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nama</label>
                                <input type="text" name="nama" class="form-control" placeholder="Input nama pengguna">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username</label>
                                <input type="text" name="user" class="form-control" placeholder="Input username">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Passwords</label>
                                <input type="password" name="pass" class="form-control" placeholder="Input password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Input email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Level akses</label>
                                <select name="level" class="form-control" required="" > 
                                    <option value="">-- PILIH --</option>
                                    <option value="1">Administrator</option>
                                    <option value="0">Staff</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Status akses</label>
                                <select name="status" class="form-control" required="" > 
                                    <option value="">-- PILIH --</option>
                                    <option value="1">Aktif</option>
                                    <option value="2">Nonaktif</option>
                                </select>
                            </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" name="done" class="btn btn-primary">SUBMIT</button>
                            <a href="<?= base_url()?>" class="btn btn-danger">KEMBALI</a>
                        </div>
                    </form>
                </div><!-- /.box-body -->
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="<?= base_url()?>assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="<?= base_url()?>assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url()?>assets/login/js/main.js"></script>

</body>
</html>