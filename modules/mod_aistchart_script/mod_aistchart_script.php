<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_custom
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

define('DS', DIRECTORY_SEPARATOR);

require_once(JPATH_BASE.DS.'administrator'.DS.'components'.DS.'com_aistresult'.DS.'helpers'.DS.'aistresult.php');

$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

$key = $params->get('key');
$secret_key = $params->get('secret_key');

jimport('joomla.database.database');
jimport('joomla.filter.filterinput');
jimport('joomla.environment.request');
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

$config	= JFactory::getConfig();

$user = new JUser;

$dbo = JFactory::getDbo();

$query = $dbo->getQuery( true );
$query->select( '*' )->from( '#__aist_graph' )->where( 'published=1' )->order( 'gyear asc,gmonth asc' );

$dbo->setQuery( $query );
$dbo->query();
$items = $dbo->loadObjectList();

$data = Array();

foreach ( $items as $item ){
	
	$percent[] = $item->gpercent;
	$percent30[] = $item->gpercent30;
	$usd[] = $item->gusd;
	
	$data[] = '"'.AistresultHelper::getMonth($item->gmonth).' '.$item->gyear.'"';
	/*
	$data[$item->gyear]['percent'][$item->gmonth] = $item->gpercent;
	$data[$item->gyear]['percent30'][$item->gmonth] = $item->gpercent30;
	$data[$item->gyear]['usd'][$item->gmonth] = $item->gusd;
	*/
}

$data = implode(', ',$data);

$percent = implode(', ',$percent);
$percent30 = implode(', ',$percent30);
$usd = implode(', ',$usd);

$componentParams = &JComponentHelper::getParams('com_aistresult');
$start = $componentParams->get('start', '2014'); 
$end = date('Y') + 1;
/*
$fillColorA = $componentParams->get('fillColorA');
$strokeColorA = $componentParams->get('strokeColorA'); 
$pointColorA = $componentParams->get('pointColorA'); 
$pointStrokeColorA = $componentParams->get('pointStrokeColorA'); 
$pointHighlightFillA = $componentParams->get('pointHighlightFillA'); 
$pointHighlightStrokeA = $componentParams->get('pointHighlightStrokeA'); 

$fillColorB = $componentParams->get('fillColorB');
$strokeColorB = $componentParams->get('strokeColorB'); 
$pointColorB = $componentParams->get('pointColorB'); 
$pointStrokeColorB = $componentParams->get('pointStrokeColorB'); 
$pointHighlightFillB = $componentParams->get('pointHighlightFillB'); 
$pointHighlightStrokeB = $componentParams->get('pointHighlightStrokeB');

$fillColorC = $componentParams->get('fillColorC');
$strokeColorC = $componentParams->get('strokeColorC'); 
$pointColorC = $componentParams->get('pointColorC'); 
$pointStrokeColorC = $componentParams->get('pointStrokeColorC'); 
$pointHighlightFillC = $componentParams->get('pointHighlightFillC'); 
$pointHighlightStrokeC = $componentParams->get('pointHighlightStrokeC');
*/
$triggerA = $componentParams->get('triggerA');
$triggerB = $componentParams->get('triggerB'); 
$triggerC = $componentParams->get('triggerC'); 

require JModuleHelper::getLayoutPath('mod_aistchart_script', $params->get('layout', 'default'));

