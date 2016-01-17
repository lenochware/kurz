<?php 

class PeopleController extends App_Controller 
{
	protected $db;

	function init()
	{
		$this->db = $this->app->db;
	}

	function indexAction() {
		$grid = new Grid('tpl/people.tpl');
		$grid->setQuery('select * from PEOPLE');
		return $grid->html();
	}

	function showAction($id)
	{
		$t = new Tpl;
		$t->create('PEOPLE');
		$t->values = $this->db->select('PEOPLE', pri($id));
		return $t;
	}
}
 ?>