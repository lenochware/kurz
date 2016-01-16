<?php 

require 'libs/pclib/pclib.php';

$app = new App('demo-app');

$app->db = new Db('pdo_mysql://root@localhost/test/utf8');

$grid = new Grid();
$grid->setQuery('select * from PEOPLE');

print $grid->html();

?>