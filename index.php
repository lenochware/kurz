<?php 

require 'libs/pclib/pclib.php';

$app = new App('demo-app');
$app->addConfig('config.php');

$app->db = new Db($app->config['test.db']);
$app->language = 'cs';

if ($app->enviroment == 'develop') {
	$app->debugMode = true;
}


$app->setLayout('tpl/website.tpl');

if (!$app->controller) {
	$app->controller = 'people';
}

$app->run();
$app->out();

?>