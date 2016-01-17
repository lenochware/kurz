<?php 

class PeopleController extends App_Controller 
{
	function indexAction() {
		$grid = new Grid('tpl/people.tpl');
		$grid->setQuery('select * from PEOPLE');
		return $grid->html();
	}

	function showAction($id)
	{
		return 'Detail: '.$id;
	}
}
 ?>