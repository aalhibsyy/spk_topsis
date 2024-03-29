<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <form role="form" method="POST" action="<?= site_url('rubah-data-siswa'); ?>">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">NIK Siswa</label>
                            <input type="text" class="form-control" value="<?= $edit->nik; ?>" placeholder="" disabled="">
                            <input type="hidden" name="nik" value="<?= $edit->nik; ?>"/>
                            <input type="hidden" name="id" value="<?= $edit->id_siswa; ?>"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Kelas</label>
                            <select name="select_kelas" class="form-control">
                                <?php
                                $sql = $this->db->query("select * from tb_kelas")->result();
                                 foreach($sql as $rowkelas){ ?>
                                <option <?php if($edit->kelas == $rowkelas->nama_kelas) {
                                    echo "selected";
                                } ?> value="<?=$rowkelas->nama_kelas?>"><?=$rowkelas->nama_kelas?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nama Siswa</label>
                            <input type="text" name="nama" class="form-control" value="<?= $edit->nm_siswa; ?>" placeholder="" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Alamat</label>
                            <textarea name="alamat" class="form-control" placeholder="" required=""> <?= $edit->alamat; ?></textarea>
                        </div>
                       
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-success">SIMPAN</button>
                        <a href="<?= site_url('data-siswa') ?>" class="btn btn-danger">BATAL</a>
                    </div>
                </form>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>   <!-- /.row -->
</section><!-- /.content -->
</div><!-- /.content-wrapper -->