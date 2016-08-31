<?php
defined( '_JEXEC' ) or die; // No direct access
/**
 * Component aistresult
 * @author Arhet
 */
require_once JPATH_COMPONENT.'/helpers/aistresult.php';
$controller = JControllerLegacy::getInstance( 'aistresult' );
$controller->execute( JFactory::getApplication()->input->get( 'task' ) );
$controller->redirect();