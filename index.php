<?php 

session_start();
require 'libs/pclib/pclib.php';

$app = new PCApp('demo-app');

$app->addConfig('config.php');

$app->db = new PCDb($app->config['test.db']);
$app->language = 'cs';

if ($app->environment == 'develop') {
	$app->debugMode = true;
}

$app->setLayout('tpl/website.tpl');

if (!$app->controller) {
	$app->controller = 'people';
}

$app->run();
$app->out();

?>