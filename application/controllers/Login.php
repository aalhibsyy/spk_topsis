<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //load model admin
        $this->load->model('admin');
    }

    public function index()
    {

        if ($this->admin->logged_id()) {
                //jika memang session sudah terdaftar, maka redirect ke halaman dahsboard
                redirect("welcome");
            } else {

            //jika session belum terdaftar

            //set form validation
            $this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            //set message form validation
            $this->form_validation->set_message('required', '<div class="alert alert-danger" style="margin-top: 3px">
                    <div class="header"><b><i class="fa fa-exclamation-circle"></i> {field}</b> harus diisi</div></div>');

            //cek validasi
            if ($this->form_validation->run() == true) {

                //get data dari FORM
                $username = $this->input->post("username", true);
                //$password = MD5($this->input->post('password', TRUE));
                $password = $this->input->post('password', true);

                //checking data via model
                $validate = $this->admin->check_login($username,$password);
                if($validate->num_rows() > 0){
                    $data  = $validate->row_array();
                    $name  = $data['username'];
                    $level = $data['level'];
                    $sesdata = array(
                        'username'  => $name,
                        'level'     => $level,
                        'logged_in' => TRUE
                    );
                    $this->session->set_userdata($sesdata);
                    // access login for admin
                    if($level === '1'){
                        redirect('halaman-utama');
             
                    // access login for staff
                    }elseif($level === '2'){
                        redirect('page/staff');
             
                    // access login for author
                    }else{
                        redirect('page/author');
                    }
                }else{
                    echo $this->session->set_flashdata('msg','Username or Password is Wrong');
                    $this->load->view('login');
                }

             }
             $this->load->view('login');
    }
    }
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
		//$this->load->view("login"); 
    }
}
 