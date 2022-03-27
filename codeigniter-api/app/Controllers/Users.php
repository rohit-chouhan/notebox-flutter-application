<?php

namespace App\Controllers;

class Users extends BaseController
{
    public $conn;
    public function __construct(){
            helper(['url']);
            helper(['text']);
            $this->conn = \Config\Database::connect();
    }

    //creating new user
    public function addUser(){
      $q = $this->conn->table('users');
      $cemail = $q->where('email',$this->request->getVar('email'))->countAllResults(); //email checking
      $data = [
        'name' => $this->request->getVar('name'),
        'email' => $this->request->getVar('email'),
        'password' => $this->request->getVar('password')
      ];
      if($cemail>=1){
        echo json_encode(array(
          "status"=>false,
          "msg"=>"Email is already in used!"
        ));
      } else {
        if($q->insert($data)){
          echo json_encode(array(
            "status"=>true,
            "msg"=>"Register Successfully!"
          ));
        } else {
          echo json_encode(array(
            "status"=>false,
            "msg"=>"Internal Server Problem!"
          ));
        }
      }
    }

    //login user
    public function login(){
        $count = $this->conn->table('users')
        ->where('email',$this->request->getVar('email'))
        ->where('password',$this->request->getVar('password'))
        ->countAllResults();
        if($count==1){
        
          $u = $this->conn->table('users')->select(['id','name','email'])
        ->where('email',$this->request->getVar('email'))
        ->where('password',$this->request->getVar('password'))
        ->get()->getRow();
        $u->status = true;
        echo json_encode($u);
          // echo json_encode(array(
          //   "status"=>true,
          //   "msg"=>"Login Successfully!"
          // ));
        } else {
          echo json_encode(array(
            "status"=>false,
            "msg"=>"Invalid Username or Password"
          ));
        }
    }

    //forget password
    public function reset(){
      $useremail = $this->request->getVar('email');
      $newpass= random_string('alnum',12);
      $email = \Config\Services::email();
  
      $query = $this->conn->query("SELECT * FROM users WHERE email='$useremail'")->getRow();
      
      try {
        if($useremail==$query->email){
          $email->setTo($useremail);
          $email->setFrom($email->SMTPUser, $email->userAgent);
          
          $email->setSubject("Your New Password");
          $email->setMessage("Your New Generated Password is: ".$newpass);
      
          if ($email->send()) 
          {
            $q= $this->conn->table("users");
            $data = [
              'password' => $newpass
            ];
            $q->where('email',$useremail);
            $q->update($data);
            echo '{
              "status":true,
              "msg":"New password has been sent"
            }';
          } 
          else 
          {
            echo '{
              "status":false,
              "msg":"Internal Problem"
            }';
          }
        } else {
          echo '{
            "status":false,
            "msg":"Invalid Email Address"
          }';
        }
      } catch (\Throwable $th) {
        echo '{
          "status":false,
          "msg":"Invalid Email Address"
        }';
      }
          
    }

    //geting all notes by user
    public function getNotes(){
      $u = $this->conn->table('notes')->select(['id','heading','date','note'])
      ->where('user_id',$this->request->getVar('id'))
      ->get()->getResult();
      echo json_encode($u);
    }

    public function createNote(){
      $q = $this->conn->table('notes');
      $data = [
        'user_id' => $this->request->getVar('user_id'),
        'heading' => $this->request->getVar('heading'),
        'note' => $this->request->getVar('note'),
      ];
      if($q->insert($data)){
        echo json_encode(array(
          "status"=>true,
          "msg"=>"Note created successfully"
        ));
      } else {
        echo json_encode(array(
          "status"=>false,
          "msg"=>"Something is wrong"
        ));
      }
    }

    //get user info by id
    public function getUser(){      
        $u = $this->conn->table('users')->select(['id','name','email'])
      ->where('id',$this->request->getVar('id'))
      ->get()->getRow();
      echo json_encode($u);
  }

  public function updatePass(){

    $u = $this->conn->table('users')->select(['id','name','email','password'])
    ->where('id',$this->request->getVar('id'))
    ->get()->getRow();

    if($u->password == $this->request->getVar('cpassword'))
    {
      $q = $this->conn->table('users');
      $data = [
        'password' => $this->request->getVar('password')
      ];
      $q->where('id',$this->request->getVar('id'));
      if($q->update($data)){
        echo json_encode(array("status"=>true, "msg"=>"Password Changed"));
      } else {
         echo json_encode(array("status"=>false,"msg"=>"Something is wrong"));
      }
    } else{
      echo json_encode(array("status"=>false,"msg"=>"Incorrect current password"));
    }
  }

  //user update
  public function updateUser(){
    $q = $this->conn->table('users');
    $data = [
      'name' => $this->request->getVar('name'),
      'email' => $this->request->getVar('email')
    ];
    $q->where('id',$this->request->getVar('id'));
    if($q->update($data)){
      echo json_encode(array(
        "status"=>true,
        "msg"=>"Updated Successfully"
      ));
    } else {
      echo json_encode(array(
        "status"=>false,
        "msg"=>"Something is wrong"
      ));
    }
  }
}
