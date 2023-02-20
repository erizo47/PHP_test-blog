<?php

$config = array(
    "title" => "Kuda podal`she",
    "TG_URL" => "https://t.me/ilinovalu",
    "db" => array(
        'server' => 'localhost',
        'username' => 'root',
        'password' => 'root',
        'name' => 'test_db'
    )
);
$mysqli = new mysqli(
    $config['db']['server'],
    $config['db']['username'],
    $config['db']['password'],
    $config['db']['name']
);

require "db.php";