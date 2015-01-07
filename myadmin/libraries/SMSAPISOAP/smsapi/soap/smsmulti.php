<?php
/**
 * smsAPI_SOAP_SMSMulti
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
 * Struktura danych dla send_sms_multi
 *
 * @see smsAPI_SOAPClient
 */
class smsAPI_SOAP_SMSMulti {

	/**
	 * Numer odbiorcy wiadomości w formacie 48xxxxxxxxx lub xxxxxxxxx.
	 *
	 * Np. 48505602702 lub 505602702.
	 *
	 * @var array(string)
	 */
	public $recipient		= null;
	/**
	 * Numer lub nazwa nadawcy wiadomości.
	 *
	 * Pozostawienie pola pustego powoduje wysłanie wiadomości od „smsAPI.pl”.
	 * Przyjmowane są tylko numery i nazwy zweryfikowane. Pole nadawcy należy dodać
	 * po zalogowaniu na stronie smsAPI.pl, w zakładce Ustawienia → Pola nadawcy.
	 *
	 * @var string
	 */
	public $sender		= null;
	/**
	 * Treść wiadomości.
	 *
	 * Standardowo do 160 znaków lub 70 znaków w przypadku wystąpienia chociaż
	 * jednego znaku specjalnego (polskie znaki uważane są za specjalne).
	 * Maksymalna długość wiadomości wynosi 457 znaków (lub 201 ze znakami
	 * specjalnymi) i jest wysłana jako 3 połączone SMSy, obciążając konto
	 * zgodnie z aktualnym cennikiem. Więcej szczegółów odnośnie znaków specjalnych
	 * znajduje się w dokumentacji.
	 *
	 * @see http://www.smsapi.pl/spec/smsAPI.pdf
	 * @var string
	 */
	public $message		= null;
	/**
	 * Parametr określa kodowanie polskich znaków w SMSie.
	 *
	 * Domyślne kodowanie jest windows-1250. Jeżeli występuje konieczność zmiany
	 * kodowania, należy użyć parametru encoding z danymi:
	 * - dla iso-8859-2 (latin2) – należy podać wartość „iso-8859-2”,
	 * - dla utf-8 – należy podać wartość „utf-8”.
	 *
	 * @var string
	 */
	public $encoding	= null;
	/**
	 * Wysyłanie wiadomości trybem „flash”,
	 *
	 * odbywa się poprzez podanie parametru flash o wartości „1”. SMSy flash są
	 * automatycznie wyświetlane na ekranie głównym telefonu komórkowego i nie
	 * są przechowywane w skrzynce odbiorczej (jeśli nie zostaną zapisane).
	 *
	 * @var bool
	 */
	public $flash		= null;
	/**
	 * W odpowiedzi zawarte jest więcej szczegółów.
	 *
	 * (Treść wiadomości, długość wiadomość, ilość części z jakich składa się wiadomość).
	 *
	 * @var bool
	 */
	public $details		= null;
	/**
	 * Data w formacie timestamp.
	 *
	 * Określa kiedy wiadomość ma być wysłana.
	 * W przypadku wstawienia daty przeszłej wiadomość zostanie wysłana natychmiast.
	 *
	 * @var int
	 */
	public $date_send	= null;
	/**
	 * Parametr pozwalający na wysyłanie wiadomości WAP PUSH.
	 *
	 * @var string
	 */
	public $datacoding	= null;
	/**
	 * Opcjonalny parametr użytkownika wysyłany z wiadomością a następnie zwracany przy wywołaniu zwrotnym CALLBACK.
	 *
	 * @var array(string)
	 */
	public $idx			= null;
	/**
	 * @var array(array)
	 */
	public $params		= null;
	/**
	 * Ustawienie 1 zabezpiecza przed wysłaniem wiadomości składających się z kilku części. (ERROR:12)
	 *
	 * @var bool
	 */
	public $single_message	= null;
	/**
	 * Ustawienie parametru spowoduje wysłanie wiadomości przy wykorzystaniu wiadomości Eco
	 *
	 * (brak możliwości wyboru pola nadawcy, wiadomość wysyłana z losowego
	 * numeru dziewięciocyfrowego) szczegóły dotyczące wiadomości Eco znajdują się na naszej
	 * stronie: http://www.smsapi.pl/
	 *
	 * @var bool
	 */
	public $eco			= null;
	/**
	 * Ustawienie zabezpiecza przed wysłaniem wiadomości ze znakami specjalnymi (w tym polskimi)
	 *
	 * @var bool
	 */
	public $no_unicode	= null;
	/**
	 * Ustawienie spowoduje wysłanie wiadomości przy wykorzystaniu osobnego kanału zapewniającego szybkie doręczenie wiadomości (fastSMS).
	 *
	 * Z parametru korzystać można wyłącznie podczas wysyłania wiadomości proSMS,
	 * Ilość punktów za wysyłkę pomnożona będzie przez 1.5 Uwaga! Dla tego parametru
	 * zabronione jest prowadzenie wysyłek masowych i marketingowych.
	 *
	 * @var bool
	 */
	public $priority	= null;
	/**
	 * @var string
	 */
	public $udh			= null;
	/**
	 * Wiadomość nie jest wysyłana, wyświetlana jest jedynie odpowiedź (w celach testowych).
	 *
	 * @var bool
	 */
	public $test		= null;
	/**
	 * Parametr wskazujacy partnera
	 *
	 * @var int
	 */
	public $partner_id	= null;


	/**
	 * @ignore
	 * @var smsAPI_SOAPClient
	 */
	protected $soapclient = null;

	/**
	 * Inicjalizacja
	 *
	 * @param array $params Tablica z parametrami
	 */
	public function  __construct( $params = null, $soapclient  = null )
	{
		$this->soapclient = $soapclient;
		if( is_array($params) )
		{
			$params = array_intersect_key($params, $this->fields );
			foreach ( $params as $k => $v )
				$this->$k = $v;
		}
	}

	/**
	 * Wyslij wiadomosc
	 *
	 * @param smsAPI_SOAPClient $httpclient
	 * @return stdClass
	 */
	public function send($soapclient = null)
	{
		if( !($soapclient instanceof smsAPI_SOAPClient) )
			$soapclient = $this->soapclient;

		if( !($soapclient instanceof smsAPI_SOAPClient) )
			throw new smsAPI_Exception ('Undefined HTTPClient', 0);

		return $soapclient->send_sms_multi( $this );
	}

	/**
	 *
	 * @ignore
	 * @var array
	 */
	protected $fields =	array(
		'datacoding'	=> 0,
		'date_send'		=> 0,
		'eco'			=> 0,
		'encoding'		=> 0,
		'flash'			=> 0,
		'sender'		=> 0,
		'idx'			=> 0,
		'message'		=> 0,
		'no_unicode'	=> 0,
		'params'		=> 0,
		'priority'		=> 0,
		'single'		=> 0,
		'template'		=> 0,
		'test'			=> 0,
		'recipient'		=> 0,
		'partner_id'	=> 0,
		'udh'			=> 0
	);

	/**
	 * @ignore
	 * @return array
	 */
	public function _get_params()
	{
		$ar = array_intersect_key((array)$this, $this->fields );

		return $ar;
	}
}
