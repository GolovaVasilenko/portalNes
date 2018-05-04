<?php

session_start();
error_reporting(E_ALL);
ini_set("display_errors", 1);

$query = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');


define("PUBLIC", __DIR__ . "/public");
define("CORE", __DIR__ . "/core");
//define("LIBS", dirname(__DIR__) . "/vendor/libs");
define("ROOT", __DIR__);
define("APP", __DIR__ . "/app");


require_once ROOT . "/conf/db.php";

require_once ROOT . "/conf/autoload.php";

require_once ROOT . "/conf/bootstrap.php";

try{
    \core\AppController::start($query);
}
catch(\core\Errors $error){
    $error->index();
}
