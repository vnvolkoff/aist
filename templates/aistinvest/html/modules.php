<?php
/**
 * @package     SEOTEAM.PRO
 * @subpackage  Templates.ecveco
 *
 * @copyright   Copyright (C) 2003 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/*
 * none (output raw module content)
 */
function modChrome_default($module, &$params, &$attribs)
{
?>    
    <?php if ($module->showtitle) : ?>
        <h2><?php echo $module->title?></h2>
    <?php endif; ?>
    <?php echo $module->content; ?>
<?php
}