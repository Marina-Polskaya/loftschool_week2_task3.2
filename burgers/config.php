<?php

const HOST = 'localhost';
const DB_NAME = 'burgersDB';
const USER = 'loftschool';
const PASSWORD = 'loftschool';
const OPTIONS = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ];
