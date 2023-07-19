<?php

include 'config.php';

/*class PdoConnection 
{    
    private $pdo = null;
    private $log = [];
    private static $instance;

    private function __construct() 
    {
        
    }

    private function __clone() 
    {
        
    }

    public static function getInstance() : self
    {    
        if(!self::$instance) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    protected function getConnection() : ?object
    {
        try {
            if (!$this->pdo) {
                $host = HOST;
                $dbName = DB_NAME;
                $user = USER;
                $password = PASSWORD;
                $options = [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                ];
                $this->pdo = new \PDO("mysql:host=$host;dbname=$dbName", $user, $password, $options);
                return $this->pdo;
            }
        } catch (PDOException $e) {
            echo 'Невозможно установить соединение с базой данных <br />' . $e . '<br />';
            return $this->pdo = null;
        }
    } 
}
*/