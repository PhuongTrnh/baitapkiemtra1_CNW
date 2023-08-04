<?php
require_once dirname(__FILE__,2)."/config/config.php";
class DBConnection{
    private $host;
    private $user;
    private $pass;
    private $dbname;
    private $conn;
    public function __construct(){
        $this->host = DB_HOST;
        $this->user = DB_USER;
        $this->pass = DB_PASS;
        $this->dbname = DB_NAME;
        try {
            //code...
            $this->conn = new PDO("mysql:host=$this->host;dbname=$this->dbname" , $this->user , $this->pass);
        } catch (PDOException) {
            //throw $th;
            $this->host = null;
        }
    }
    public function getConnection(){
        return $this->conn;
    }
} 
?>