<?php
/**
 * smsAPI_SOAPClient
 *
 * Copyright (c) 2010, ComVision
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 *  - Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation and/or
 *    other materials provided with the distribution.
 *  - Neither the name of the smsAPI.pl nor the names of its contributors may be used to
 *    endorse or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * @author ComVision <info@smsapi.pl>
 * @copyright 2010 ComVision
 * @license BSD-3
 * @package smsapi
 * @subpackage client\soap
 * @version 1.0 14.10.2010
 */

/**
 * Client smsAPI przez SOAP
 *
 * Przyklad:
 * <code>
 * require_once 'smsapi.php';
 * spl_autoload_register(array('smsAPI','__autoload'));
 *
 * try {
 *
 * 	$smsapi = new smsAPI_SOAPClient('login', md5('password') );
 *
 * 	$msg = $smsapi->new_sms_multi();
 * 	$msg->recipient	= array('xxxxxxxxx','yyyyyyyyy');
 * 	$msg->message	= 'test';
 * 	$msg->eco		= TRUE;
 * 	$msg->flash		= FALSE;
 * 	$result = $msg->send();
 *
 * 	var_dump($result);
 * }
 * catch ( Exception $e )
 * {
 * 	echo $e->getMessage();
 * }
 * </code>
 *
 * @see https://www.smsapi.pl/webservices/v2/?wsdl
 */
class smsAPI_SOAPClient
{
	/**
	 * @var SoapClient
	 */
	protected $h_sopa = null;

	/**
	 * Dane klienta
	 *
	 * @var array
	 */
	protected $client;

	/**
	 * Inicializacjia
	 *
	 * @param bool $ssl SOAP przez http lub https
	 */
	public function  __construct($username, $password, $ssl = true)
	{
		$this->h_sopa = new SoapClient(
			( $ssl == true ? 'https' : 'http' ) .'://www.smsapi.pl/soap/v2/webservice?wsdl',
			array(
				'features'		=> SOAP_SINGLE_ELEMENT_ARRAYS,
				'cache_wsdl'	=> WSDL_CACHE_NONE
			)
		);

		$this->client = array(

			'username'	=> $username,
			'password'	=> $password
		);
	}

	/**
	 * Wysylanie pojedynczej wiadomosci
	 *
	 * @throws SoapFault
	 * @param smsAPI_SOAP_SMS $sms
	 * @return smsAPI_SOAP_Response_SMS
	 */
	public function send_sms($sms)
	{
		if( !($sms instanceof smsAPI_SOAP_SMS) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'sms'		=> $sms->_get_params()
		);
		$response = $this->___soapCall('send_sms', $request );

		if( !isset($response->response) ) $response->response = array();

		return $response;
	}

	/**
	 * @param array $params
	 * @return smsAPI_SOAP_SMS
	 */
	public function new_sms($params = null)
	{
		return new smsAPI_SOAP_SMS($params, $this);
	}

	/**
	 * Wysylanie wiadomosci masowych
	 *
	 * @throws SoapFault
	 * @param smsAPI_SOAP_SMSMulti $sms
	 * @return smsAPI_SOAP_Response_SMS
	 */
	public function send_sms_multi($sms)
	{
		if( !($sms instanceof smsAPI_SOAP_SMSMulti) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'sms'		=> $sms->_get_params()
		);
		$response = $this->___soapCall('send_sms_multi', $request);

		if( !isset($response->response) ) $response->response = array();

		return $response;
	}

	/**
	 * @param array $params
	 * @return smsAPI_SOAP_SMSMulti 
	 */
	public function new_sms_multi($params = null)
	{
		return new smsAPI_SOAP_SMSMulti($params, $this);
	}

	/**
	 * Sprawdzanie raportow doreczenia wiadomosci po wskazaniu ich ID
	 *
	 * @throws SoapFault
	 * @param array $ids
	 * @return smsAPI_SOAP_Response_SMSStatus
	 */
	public function get_sms_by_ids($ids)
	{
		if( !is_array($ids) )
			$ids = func_get_args();

		if( !is_array($ids) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'ids'		=> (array)$ids
		);
		$response = $this->___soapCall('get_sms_by_ids', $request);

		return $response;
	}

	/**
	 * Sprawdzanie raportow doreczenia wiadomosci wyslanych w okreslonym przedziale czasowym
	 *
	 * @throws SoapFault
	 * @param int $from
	 * @param int $until
	 * @return smsAPI_SOAP_Response_SMSStatus
	 */
	public function get_sms_by_date($from, $until)
	{
		$request = array(
			'client'	=> $this->client,
			'from'		=> (int)$from,
			'until'		=> (int)$until
		);
		$response = $this->___soapCall('get_sms_by_date', $request);

		if( !isset($response->status) ) $response->status = array();

		return $response;
	}

	/**
	 * Usuwanie wiadomosci zaplanowanych
	 *
	 * @throws SoapFault
	 * @param string $id
	 * @return smsAPI_SOAP_Response
	 */
	public function delete_sms_by_id($id)
	{
		if( !isset($id) OR empty($id) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'id'		=> (string)$id
		);
		$response = $this->___soapCall('delete_sms_by_id', $request);

		if( !isset($response->status) ) $response->status = array();

		return $response;
	}

	/**
	 * Dodawanie grupy do ksiazki telefonicznej
	 *
	 * @throws SoapFault
	 * @param string $name Nazwa grupy
	 * @param string $info Opis grupy
	 * @return smsAPI_SOAP_Response_AddGroup
	 */
	public function add_group($name, $info = '')
	{
		if( !isset($name) OR empty($name) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'name'		=> (string)$name,
			'info'		=> (string)$info
		);
		$response = $this->___soapCall('add_group', $request);

		return $response;
	}

	/**
	 * Pobiera grupy z ksiazki telefonicznej uzytkownika
	 *
	 * @throws SoapFault
	 * @return smsAPI_SOAP_Response_GetGroups
	 */
	public function get_groups()
	{
		$response = $this->___soapCall('get_groups', $this->client);

		return $response;
	}

	/**
	 * Usuwa grupe z ksiazki telefonicznej
	 *
	 * @throws SoapFault
	 * @param int $group_id	ID grupy w ksiazce telefonicznej
	 * @return smsAPI_SOAP_Response
	 */
	public function delete_group($group_id)
	{
		if( !($group_id > 0) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'group_id'	=> (int)$group_id
		);
		$response = $this->___soapCall('delete_group', $request);

		return $response;
	}

	/**
	 * Dodaje numer do ksiazki telefonicznej
	 *
	 * @throws SoapFault
	 * @param string $number	Nazwa grupy
	 * @param string $name		Nazwa w ksiazce telefonicznej
	 * @param int $group_id		Numer grupy uzytkownik'ow w ksiazce telefonicznej
	 * @return smsAPI_SOAP_Response
	 */
	public function add_number($number, $name, $group_id)
	{
		if( !preg_match('/^[0-9]{9,11}$/', $number) )
			throw new smsAPI_Exception('Invalid function argument', -18);
		if( !isset($name) OR empty($name) )
			throw new smsAPI_Exception('Invalid function argument', -18);
/*		if( !($group_id > 0) )
			throw new smsAPI_Exception('Invalid function argument', -18);*/
			
		$request = array(
			'client'	=> $this->client,
			'number'	=> array(
				'number'	=> (string)$number,
				'name'		=> (string)$name,
				'group_id'	=> (int)$group_id
			)
		);
		$response = $this->___soapCall('add_number', $request);

		return $response;
	}

	/**
	 * Pobieranie numer'ow z ksiazki telefonicznej uzytkownika
	 *
	 * @throws SoapFault
	 * @param int $group_id	ID grupy w ksiazce telefonicznej
	 * @return smsAPI_SOAP_Response_GetNumbers
	 */
	public function get_numbers($group_id)
	{
		if( !($group_id > 0) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'group_id'	=> (int)$group_id
		);
		$response = $this->___soapCall('get_numbers', $request);
		
		if( !isset($response->numbers) ) $response->numbers = array();

		return $response;
	}

	/**
	 * Usuwanie numeru z ksiazki telefonicznej
	 *
	 * @throws SoapFault
	 * @param string $number	Numer telefonu
	 * @param int $group_id		ID grupy w ksiazce telefonicznej
	 * @return smsAPI_SOAP_Response
	 */
	public function delete_number($number, $group_id)
	{
		if( !preg_match('/^[0-9]{9,11}$/', $number) )
			throw new smsAPI_Exception('Invalid function argument', -18);
		if( !($group_id > 0) )
			throw new smsAPI_Exception('Invalid function argument', -18);

		$request = array(
			'client'	=> $this->client,
			'number'	=> (string)$number,
			'group_id'	=> (int)$group_id
		);
		$response = $this->___soapCall('delete_number', $request);

		return $response;
	}

	/**
	 * Sprawdzanie ilosci punktow na koncie.
	 *
	 * @throws SoapFault
	 * @return smsAPI_SOAP_Response_GetPoints
	 */
	public function get_points()
	{
		$response = $this->___soapCall('get_points', $this->client );

		return $response;
	}

	/**
	 * Pobieranie dostepnych pol nadawcy
	 *
	 * @throws SoapFault
	 * @return smsAPI_SOAP_Response_GetSenders
	 */
	public function get_senders()
	{
		$response = $this->___soapCall('get_senders', $this->client);

		return $response;
	}

	/**
	 * Wywolanie funkcji SOAP
	 *
	 * @throws SoapFault
	 * @param string $function
	 * @param array $request
	 * @return mixed
	 */
	protected function ___soapCall($function, $request = array())
	{
		smsAPI::call_listners(__CLASS__.' '.$function.' request', $request);

		$response = $this->h_sopa->$function( $request );

		smsAPI::call_listners(__CLASS__.' '.$function.' response', $response);

		return $response;
	}

	/**
	 * Pobierz uchwyt do SoapClient
	 *
	 * @return SoapClient
	 */
	public function __getSoapClient()
	{
		return $this->h_sopa;
	}
}

