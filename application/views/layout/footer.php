<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Versi</b> 1.0
    </div>
    Dibuat Oleh <strong>SMK BAKTI IDHATA</strong> <script type="text/javascript">document.write(new Date().getFullYear());</script>. Seluruh Hak Cipta.
    <a href="" class="go-top" title="Back To Top"><i class="fa fa-arrow-up"></i></a>
</footer>

<div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->
<!-- New -->
<script src="http://code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<!-- jQuery 2.1.4 
<script src="<?= base_url() ?>___/plugins/jQuery/jQuery-2.1.4.min.js"></script>
-->
<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url() ?>___/bootstrap/js/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="<?= base_url() ?>___/bootstrap/js/bootstrap.min.js"></script>

<!-- Datatables 
<script src="<?= base_url() ?>___/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>___/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="<?= base_url() ?>___/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
-->
<!-- AdminLTE App -->
<script src="<?= base_url() ?>___/dist/js/app.min.js"></script>


<script src="<?= base_url()?>assets/js/filterDropDown.js"></script>
<script>
		// initialising dt table
		$(document).ready(function () {

			$('#example').DataTable({
				// Definition of filter to display					
				filterDropDown: {
					columns: [
						{
                            idx: 1,
                            autoSize: false,
						}
					],
                    bootstrap: true,
                    label: "Urutkan berdasarkan : "
				}
			});
		});
    </script>
    <script>
		// initialising dt table
		$(document).ready(function () {

			$('#filterkelas').DataTable({
				// Definition of filter to display					
				filterDropDown: {
					columns: [
						{
							idx: 2
						}
					],
                    bootstrap: true,
                    label: "Urutkan berdasarkan : "
				}
			});
		});
	</script>

<script>
        //function go to top
        $(document).ready(function () {
            // Show or hide the sticky footer button
            $(window).scroll(function () {
                if ($(this).scrollTop() > 200) {
                    $('.go-top').fadeIn(200);
                } else {
                    $('.go-top').fadeOut(200);
                }
            });

            // Animate the scroll to top
            $('.go-top').click(function (event) {
                event.preventDefault();

                $('html, body').animate({scrollTop: 0}, 300);
            })
        });
        //function datatables
        $(function () {
            $('#example,#bobot').DataTable();
        });
         $(document).ready(function () {
            $('#pref').DataTable({
                "searching": false,
                "ordering": true,
                "responsive": true,
                "info": false,
            });
        });
        //function datepicker
        $(function () {
            $("#datepicker,#tgl").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'yy-mm-dd'

            });
            $("#format").change(function () {
                $("#datepicker").datepicker("option", "dateFormat", $(this).val());
            });
        });
        function isNumberKey(evt){
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57)){
                return false;
            }else{
                return true;
            }
        }
        function cek_nik(){
                $("#pesan_nik").hide();
                $("#bsubmit").hide();
                
                var nik = $("#nik").val();

                if(nik != ""){
                    $.ajax({
                        url: "<?php echo site_url() . 'cek-nik'; ?>", 
                        data: 'nik='+nik,
                        type: "POST",
                        success: function(msg){
                            if(msg == 1){
                                $("#pesan_nik").css("color","#fc5d32");
                                $("#nik").css("border-color","#fc5d32");
                                $("#pesan_nik").html('<i class="fa fa-hand-stop-o"></i>&nbsp;Maaf Nik '+ nik +' sudah digunakan.');
                                $("#bsubmit").html('');
                                error = 1;
                            }else{
                                $("#pesan_nik").css("color","#59c113");
                                $("#nik").css("border-color","#59c113");
                                $("#pesan_nik").html('<i class="fa fa-thumbs-up"></i>&nbsp;Nik bisa digunakan');
                                $("#bsubmit").html('<button type="submit" name="submit" class="btn btn-primary">SIMPAN</button>');
                                error = 0;
                            }
                            $("#pesan_nik").fadeIn(1000);
                            $("#bsubmit").fadeIn(1000);
                        }
                    });
                }       
            }
        function toggle(pilih) {
            checkboxes = document.getElementsByName('nik[]');
                for(var i=0, n=checkboxes.length;i<n;i++) {
                checkboxes[i].checked = pilih.checked;
            }
        }
</script>
</body>
</html>

