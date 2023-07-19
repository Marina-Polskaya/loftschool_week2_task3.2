<?php

class Order
{
    public function addOrder(int $user_id, string $phone_number, string $address, string $comment) //сделать, чтобы возвращало order_id
    {
        $db = Db::getInstance();
        $query = "INSERT INTO orders(user_id, phone_number, address, comment, created_at) VALUES(:user_id, :phone_number, :address, :comment, :created_at)";
        $result = $db->exec(
                $query,
                [
                    ':user_id' => $user_id,
                    ':phone_number' => $phone_number,
                    ':address' => $address,
                    ':comment' => $comment,
                    ':created_at' => date('Y-m-d H:i:s')
                ],
                __METHOD__
        );
        if (!$result) {
            trigger_error('Не удалось зарегистрировать заказ');
            die();
        }
        $id = $db->lastInsertId();
        $this->increaseUserOrders($user_id);
        
        return $id;
        
    }
    
    public function increaseUserOrders(int $id) : void
    {
        $db = Db::getInstance();
        $query = "UPDATE users SET count_all_orders = count_all_orders +1 WHERE id = :id";
        $result = $db->exec($query, [':id' => $id], __METHOD__);
        
        if(!$result) {
            trigger_error('Не удалось увеличить количество заказов пользователя');
            die();
        }
    }
    
    public function howManyOrders(int $id) : int
    {
        $db = Db::getInstance();
        $query = "SELECT count_all_orders FROM users WHERE id=:id";
        $result = $db->fetchOne($query, [':id' => $id], __METHOD__);
        if(!$result) {
            trigger_error('Не удалось посчитать количество заказов пользователя');
            die();
        }
        return $result['count_all_orders'];
    }
    
    public function printOrder($address, $order_id, $howManyOrders) : void
    {
        $db = Db::getInstance();
        echo 'Спасибо, ваш заказ будет доставлен по адресу: ' . $address . '<br />';
        echo 'Номер вашего заказа: #' . $order_id . '<br />';
        echo 'Это ваш ' . $howManyOrders . '-й заказ.<br />';
    }
    
    public function getOrderId()
    {
        
    }
}