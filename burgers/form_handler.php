<?php

ini_set('display_errors', 'on');
error_reporting(E_ALL | E_NOTICE);

require_once 'config.php';
require_once 'User.php';
require_once 'Order.php';
require_once 'Db.php';

$user = new User();

$name = $user->getDataFromForm('name');
$email = $user->getDataFromForm('email');
if (!$email) {
    trigger_error('Не введён email');
    die();
}
$phoneNumber = $user->getDataFromForm('phone');
if (!$phoneNumber) {
    trigger_error('Не введён номер телефона');
    die();
}
$address = implode (', ', $user->getUserAddress());
$comment = $user->getDataFromForm('comment');
$selectUser =$user->getUserByEmail($email);

$order = new Order();

if (!$selectUser) { //если не существует пользователя в базе
    $id = $user->createUser($name, $email); 
    $orderId = $order->addOrder($id, $phoneNumber, $address, $comment);
} else {
    $id = $selectUser['id'];
    $orderId = $order->addOrder($id, $phoneNumber, $address, $comment);
}

$howManyOrders = $order->howManyOrders($id);

$order->printOrder($address, $orderId, $howManyOrders);




