<?php

class User
{    
    public function getDataFromForm($name)
    {
        $data = $_POST[$name];
        if (!$data) {
            return false;
        }
        return $data;
    }
    
    public function getUserByEmail(string $email) : bool|array
    {
        $db = Db::getInstance();
        $query = "SELECT * FROM users WHERE email = :email";
        $result = $db->fetchOne($query, [':email' => $email]);
        if (!$result) {
            return false;
        }
        return $result;
    }
    
    public function createUser($name, $email) : int
    {
        $db = Db::getInstance();
        $query = "INSERT INTO users(name, email, count_all_orders) VALUES (:name, :email, :count_all_orders)";
        $result = $db->exec(
                $query, 
                [
                    ':name' => $name, 
                    ':email' => $email,
                    ':count_all_orders' => 0
                    ], 
                __METHOD__
                );
        if (!$result) {
            trigger_error('Не удалось зарегистрировать пользователя');
            die();
        }
        return $db->lastInsertId();
    }
    
    public function getUserAddress() : array
    {
        $street = $this->getDataFromForm('street');
        $home = $this->getDataFromForm('home');
        
        if (!$street || !$home) {
            trigger_error('Введён неполный адрес');
            die();
        } else {
            $street = 'Ул. ' . $street;
            $home = 'д. ' . $home;
        }
        
        $part = $this->getDataFromForm('part');
        
        if ($part) { 
            $part = 'корпус ' . $part;
        } else {
            $part = '';
        }
                
        $appt = $this->getDataFromForm('appt');
        
        if ($appt) { 
            $appt = 'кв. ' . $appt;
        } else {
            $appt = '';
        }
        
        $floor = $this->getDataFromForm('floor');
        
        if ($floor) { 
            $floor = 'этаж ' . $floor;
        } else {
            $floor = '';
        }        
        return array_diff([$street, $home, $part, $appt, $floor], array(''));   
    }
}
