<?php
// No direct access
defined( '_JEXEC' ) or die;

/**
 * View for  current element
 * @author Arhet
 */
class AistresultViewGraph extends JViewLegacy
{
	/**
	 * @var $item stdClass
	 */
	public $item;
	/**
	 * @var object model state
	 */
	public $state;

	/**
	 * Execute and display a template script.
	 * @param   string $tpl The name of the template file to parse; automatically searches through the template paths.
	 * @return  mixed  A string if successful, otherwise a Error object.
	 */
	public function display( $tpl = null )
	{
		$this->item = $this->get( 'Item' );
		$this->state = $this->get( 'State' );
		aistresultSiteHelper::setDocument( $this->item->title,  $this->item->metadesc, $this->item->metakey );
		parent::display( $tpl );
	}

}