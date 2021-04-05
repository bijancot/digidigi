<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Notification {

    public function push($param){
        $curl = curl_init();
<<<<<<< HEAD
        $authkey = 'key=AAAAad5eVAA:APA91bGKtgza8kNwhMe0yNfWs196eaO2xqOiMKGVRQBpOhvCJN2ExaBgeTWr0JuazQv7IdHsNJ-fJmFAF87PlmrB2As6o92R7OOYcKt9284BLI-QwwDHx5vYUYb5v4u4NmcVJxreCzv2';
=======
        $authkey = 'key=AAAAMQulW_g:APA91bHqbbdXCX47ZxyOn32F_HIXIiYr2m694M8eHG4ciITOySIuISkFoxG0JztGJRIGcpTf9HzvUpjdvOA2lj0LPgb-pYnQRSF4cQw2wrGtBDg0Jws1r8LvP3qvySlgbcN-zsDY-SGo';
>>>>>>> dcf70e6e8537994f7fa0fd4e12f95bea1ef0551d
        $regisIds = array();
        foreach($param['regisIds'] as $item){
          if($item['TOKEN'] != null){
            array_push($regisIds, '"'.$item['TOKEN'].'"');
          }
        }
        $regisIds = implode(',', $regisIds);

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://fcm.googleapis.com/fcm/send',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>'{
          "registration_ids":['.$regisIds.'],
          "notification": {
              "title":"'.$param['title'].'",
              "body":"'.$param['message'].'",
              "icon":"myicon",
              "sound":"default"
            },
           "data": { '.(!empty($param['data'])? $param['data'] : '').' }
        }',
          CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json',
            'Authorization: '.$authkey
          ),
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        return $response;
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> dcf70e6e8537994f7fa0fd4e12f95bea1ef0551d
