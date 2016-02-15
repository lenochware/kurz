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
		$t = new Tpl('tpl/people.tpl');
		$t->values = $this->db->select('PEOPLE', pri($id));
		return $t;
	}

	function editAction($id)
	{
		$form = new Form('tpl/people_form.tpl');
		$form->values = $this->db->select('PEOPLE', pri($id));
		return $form;
	}

	function updateAction($id)
	{
		$form = new Form('tpl/people_form.tpl');
		dump($form->values);
	}

	function defaultAction() {
		die('Neznama akce '.$this->app->router->action);
	}

}
 ?>