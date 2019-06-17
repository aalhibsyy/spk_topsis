<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <form role="form" method="POST" action="<?= site_url('tambah-data-siswa'); ?>">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Kelas</label>
                            <select name="select_kelas" class="form-control">
                                <option value="">--- Pilih Kelas ---</option>
                                <?php foreach($kelas as $rowkelas){ ?>
                                <option value="<?=$rowkelas->nama_kelas?>"><?=$rowkelas->nama_kelas?></option>
                                <?php } ?>
                            </select>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">NIK Siswa</label>
                            <input type="text" name="nik" class="form-control" id="nik" onkeyup="cek_nik()" onkeypress="return isNumberKey(event)" placeholder="Input Nik Siswa" required="">
                            <span id="pesan_nik"></span>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nama Siswa</label>
                            <input type="text" name="nama" class="form-control" placeholder="Input Nama Siswa" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Alamat</label>
                            <textarea name="alamat" class="form-control" placeholder="Input Alamat" required=""></textarea>
                        </div>
                      
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <span id="bsubmit"></span>
                        <a href="<?= site_url('data-siswa') ?>" class="btn btn-danger">BATAL</a>
                    </div>
                </form>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>   <!-- /.row -->
</section><!-- /.content -->
</div><!-- /.content-wrapper -->