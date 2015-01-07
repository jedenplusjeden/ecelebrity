<?php
/**
 * Zend Framework
 *
 * LICENSE
 *
 * This source file is subject to the new BSD license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://framework.zend.com/license/new-bsd
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@zend.com so we can send you a copy immediately.
 *
 * @category   Zend
 * @package    Zend_Log
 * @subpackage Filter
 * @copyright  Copyright (c) 2005-2012 Zend Technologies USA Inc. (http://www.zend.com)
 * @license    http://framework.zend.com/license/new-bsd     New BSD License
 * @version    
 */

/** Zend_Log_Filter_Abstract */
require_once 'Zend/Log/Filter/Abstract.php';

/**
 * @category   Zend
 * @package    Zend_Log
 * @subpackage Filter
 * @copyright  Copyright (c) 2005-2012 Zend Technologies USA Inc. (http://www.zend.com)
 * @license    http://framework.zend.com/license/new-bsd     New BSD License
 * @version    
 */
class Zend_Log_Filter_Range extends Zend_Log_Filter_Abstract
{
    /**
     * @var string
     */
    protected $_range;

    /**
     * Filter out any log destination not matching $range.
     *
     * @param  string  $range     Range
     * @return void
     * @throws Zend_Log_Exception
     */
    public function __construct($range)
    {
        if (strlen($range) == 0) {
	  $range = 'app';
        }
        $this->_range = strtolower($range);
    }

    /**
     * Create a new instance of Zend_Log_Filter_Range
     *
     * @param  array|Zend_Config $config
     * @return Zend_Log_Filter_Range
     */
    static public function factory($config)
    {
        $config = self::_parseConfig($config);
        $config = array_merge(array(
            'range' => null
        ), $config);

        return new self(
            $config['range']
        );
    }

    /**
     * Returns TRUE to accept the message, FALSE to block it.
     *
     * @param  array    $event    event data
     * @return boolean            accepted?
     */
    public function accept($event)
    {
        return isset($event['range']) && $event['range'] == $this->_range;
    }
}
