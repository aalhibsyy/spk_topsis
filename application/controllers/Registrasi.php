<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registrasi extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('User_m');
    }    
	public function index()
	{
        if(isset($_POST['done'])){
            $this->User_m->tambah();
            $this->session->set_flashdata('done',   '<div class="alert alert-success alert-dismissable">
                                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                    <h4><i class="icon fa fa-check"></i> Tambah user berhasil</h4>
                                                    </div>');
            redirect('Login');
        }else{

        $this->load->view('registrasi');
        }
	}
}
