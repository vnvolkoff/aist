<?php

defined( '_JEXEC' ) or die;

/**
 * Class AistresultHelper
 */
class AistresultHelper
{
	/**
	 * Добавление подменю
	 * @param String $vName
	 */
	static function addSubmenu( $vName )
	{
		JHtmlSidebar::addEntry(
			JText::_( 'GRAPHS_SUBMENU' ),
			'index.php?option=com_aistresult&view=graphss',
			$vName == 'graphss' );
	}

	/**
	 * Получаем доступные действия для текущего пользователя
	 * @return JObject
	 */
	public static function getActions()
	{
		$user = JFactory::getUser();
		$result = new JObject;
		$assetName = 'com_aistresult';
		$actions = JAccess::getActions( $assetName );
		foreach ( $actions as $action ) {
			$result->set( $action->name, $user->authorise( $action->name, $assetName ) );
		}
		return $result;
	}
	
	public static function getMonth($month){
		
		//$date = explode('-',$date);
		
		//$month = (int) $date[1];
		
		$str = '';
		
		switch($month){
			case 1:
				$str = 'Январь';
			break;
			case 2:
				$str = 'Февраль';
			break;
			case 3:
				$str = 'Март';
			break;
			case 4:
				$str = 'Апрель';
			break;
			case 5:
				$str = 'Май';
			break;
			case 6:
				$str = 'Июнь';
			break;
			case 7:
				$str = 'Июль';
			break;
			case 8:
				$str = 'Август';
			break;
			case 9:
				$str = 'Сентябрь';
			break;
			case 10:
				$str = 'Октябрь';
			break;
			case 11:
				$str = 'Ноябрь';
			break;
			case 12:
				$str = 'Декабрь';
			break;
		}
		
		$str = $str.' '.$date[0];
		
		return $str;
	}
	
}