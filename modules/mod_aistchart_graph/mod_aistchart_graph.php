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

$method = $params->get('method');

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
	
	$data[$item->gyear][$item->gmonth]['percent'] = $item->gpercent;
	$data[$item->gyear][$item->gmonth]['percent30'] = $item->gpercent30;
	$data[$item->gyear][$item->gmonth]['usd'] = $item->gusd;
}

$componentParams = &JComponentHelper::getParams('com_aistresult');
$start = $componentParams->get('start', '2014'); 
$end = date('Y') + 1;

$otchet1 = $componentParams->get('otchet1');
$otchet2 = $componentParams->get('otchet2');

$triggerA = $componentParams->get('triggerA');
$triggerB = $componentParams->get('triggerB'); 
$triggerC = $componentParams->get('triggerC'); 

require JModuleHelper::getLayoutPath('mod_aistchart_graph', $params->get('layout', 'default'));

