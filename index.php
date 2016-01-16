<?php 

require 'libs/pclib/pclib.php';

$app = new App('demo-app');
$app->addConfig('config.php');

$app->db = new Db($app->config['test.db']);
$app->setLayout('tpl/website.tpl');

$app->run();
$app->out();

?>