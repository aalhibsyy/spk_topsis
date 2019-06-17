<?php
$idakses = $this->session->userdata('level');
?>
<body class="hold-transition skin-blue-light sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="<?= site_url('halaman-utama')?>" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b> P</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><marquee direction="right">Aplikasi SPK Untuk Menentukan Nilai Produktif</marquee></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
			<li class="dropdown user user-menu">
                            <a href="<?= site_url('Login/logout')?>" class="dropdown-toggle" onclick="return confirm('Anda akan keluar dari aplikasi ini?')">
                                <i class="fa fa-sign-out"></i> Keluar
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>