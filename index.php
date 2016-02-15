<?php 

session_start();
require 'libs/pclib/pclib.php';

$app = new App('demo-app');

$app->addConfig('config.php');

$app->db = new Db($app->config['test.db']);
$app->language = 'cs';

/*
$app->db->onAfterQuery[] = function($event) {
	print_r($event->data);
};
*/

$app->errorHandler->onException[] = function($event) {
	print "posli email";
};

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