<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Model
{
    //fungsi cek session
    function logged_id()
    {
        return $this->session->userdata('username');
    }


    function check_login($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('tb_user',1);
        return $result;
    }

    function cekLogin()
    {
        if ($this->session->userdata('username') == false) {
            redirect('login');
        }
    }
}
 