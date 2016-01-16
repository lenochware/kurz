<?php 

require 'libs/pclib/pclib.php';

$app = new App('demo-app');

$app->db = new Db('pdo_mysql://root@localhost/test/utf8');
$app->setLayout('tpl/website.tpl');

$grid = new Grid();
$grid->setQuery('select * from PEOPLE');

$app->layout->values['CONTENT'] = $grid->html();
$app->out();

?>