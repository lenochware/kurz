<?php 

require 'libs/pclib/pclib.php';

$app = new App('demo-app');
$app->addConfig('config.php');

$app->db = new Db($app->config['test.db']);
$app->setLayout('tpl/website.tpl');

$grid = new Grid('tpl/people.tpl');
$grid->setQuery('select * from PEOPLE');

$app->layout->values['CONTENT'] = $grid->html();
$app->out();

?>