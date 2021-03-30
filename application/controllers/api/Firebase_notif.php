<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Firebase_notif extends REST_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Mnotifications');
	}

	function register_post(){
        $response = array();
        $token = $this->post('token');
        $data = array('TOKEN' => $token);
        if ($this->Mnotifications->checkTokenExists($data) == 0){
            $register = $this->Mnotifications->insertToken($data);
            if ($register){
                $response['value'] = 1;
                $response['message'] = 'Token successfully registered';
            } else {
                $response['value'] = 0;
                $response['message'] = 'Cannot register token';
            }
        } else {
            $response['value'] = 0;
            $response['message'] = 'Token already exists';
        }
        echo json_encode($response);
    }
}