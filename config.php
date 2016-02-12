<?php

$config = array(
	
	'pclib.compatibility' => array(
		'tpl_syntax' => false,
		'sql_syntax' => false,
		'controller_underscore_postfixes' => false,
	),
 
);

$develop = array(
	'test.db' => 'pdo_mysql://root@localhost/test/utf8',
	'pclib.errors' => array('display', 'develop'), 
);

$production = array(
	'test.db' => 'pdo_mysql://production',
	'pclib.errors' => array('display', 'log', /*'template'=>'error.tpl'*/), 
);

?>
