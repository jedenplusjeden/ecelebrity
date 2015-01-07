{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author megamo.pl <biuro@megamo.pl>
*  @copyright  myadmin
*  @version  Release: $Revision: 0.9 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}


{if $installed == 0 }

    <div style="margin: 50px; text-align: center;">
      <form action="{$form_action}" method="post">
      <input type="hidden" name="install_now" value="1"/>
      <input type="submit" style="font-size: 30px;" class="button" name="submitMegamoInstall" value="{l s='Install MyAdmin'}" />
      </form>
    </div>
{else}

<form action="{$form_action}" method="post">
         <fieldset>
            <legend>{l s='MyAdmin - konfiguracja'}</legend>
            <label>{l s='Adres aktywnej instancji MyAdmin: ' }</label>
            <div class="margin-form">
                <input type="text" name="myadmin_base_url" id="myadmin_base_url" value="{$myadmin_base_url}" style="width:310px;"  />
                {l s="(pozostaw puste aby przywrócić domyślną wartość)"}
                <p class="clear">{l s="np. 'www.mojsklep.pl/myadmin/' lub 'www.mojadomena.pl/sklep/myadmin/'"}</p>
                <p></p>
            </div>
        </fieldset>  
        
        <p></p>
         <fieldset>
            <legend> <a href="http://www.megamo.pl" target="_blanc">{l s='www.megamo.pl'}</a></legend>
            <label style="line-height: 10px;">{l s='Zamów rozszerzenia dla Prestashop:' }</label>
            <div class="margin-form">
                <a style="font-weight: bold; font-size: 12px; color: blue;" class="button" href="http://sklep.megamo.pl/kategoria/prestashop" target="_blanc">Zamawiam</a>
            </div>
        </fieldset> 
   <p></p>
        <fieldset>
            <legend>{l s='M-Aukcje - przygotowywanie i wystawianie aukcji Allegro'}</legend>
            <label>{l s='Aktywuj'}</label>
            <div class="margin-form">
		 <input type="radio" name="maukcje_on" id="maukcje_on" value="1"  {if $maukcje_on == 1 }checked="checked"{/if} />
		 <label class="t" for="maukcje_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="maukcje_on" id="maukcje_off" value="0"  {if $maukcje_on == 0 }checked="checked"{/if} />
		 <label class="t" for="maukcje_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla M-Aukcje'}</p>
                <p></p>
            </div>
        </fieldset>    
            
            <p></p>
        
         <fieldset>
            <legend>{l s='M-Kurierzy - integracja z Pocztą Polską (e-Nadawca) i firmami kurierskimi'}</legend>
            <label>{l s='Aktywuj'}</label>
            <div class="margin-form">
		 <input type="radio" name="mkurierzy_on" id="mkurierzy_on" value="1"  {if $mkurierzy_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mkurierzy_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mkurierzy_on" id="mkurierzy_off" value="0"  {if $mkurierzy_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mkurierzy_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla M-Kurierzy'}</p>
                <p></p>
            </div>
        </fieldset>    
        
        <p></p>        
        
        <fieldset>
            <legend>{l s='M-Import - Szybkie zamówienia (telefoniczne)'}</legend>
            <label>{l s='Szybkie zamówienia'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_qorder_on" id="mimport_qorder_on" value="1"  {if $mimport_qorder_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_qorder_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_qorder_on" id="mimport_qorder_off" value="0"  {if $mimport_qorder_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_qorder_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenie pozwalające na obsługę szybkich zamówień (np. telefonicznych)'}</p>
                <p></p>
            </div>
         </fieldset>  
         <p></p>
         <fieldset>  
	    <legend>{l s='M-Import - import zamówień z innych platform sprzedaży'}</legend>
            <label>{l s='Z Allegro'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_allegro_on" id="mimport_allegro_on" value="1"  {if $mimport_allegro_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_allegro_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_allegro_on" id="mimport_allegro_off" value="0"  {if $mimport_allegro_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_allegro_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla importu transakcji z Allegro'}</p>
                <p></p>
            </div> 
            
            <label>{l s='Z eBay'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_ebay_on" id="mimport_ebay_on" value="1"  {if $mimport_ebay_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_ebay_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_ebay_on" id="mimport_ebay_off" value="0"  {if $mimport_ebay_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_ebay_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla importu transakcji z eBay'}</p>
                <p></p>
            </div>
            
            <label>{l s='Ze sklepów Click-Shop/Shoper'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_shoper_on" id="mimport_shoper_on" value="1"  {if $mimport_shoper_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_shoper_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_shoper_on" id="mimport_shoper_off" value="0"  {if $mimport_shoper_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_shoper_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla importu zamówień ze sklepów ClickShop lub Shoper'}</p>
                <p></p>
            </div>
            
            <label>{l s='Ze sklepów iStore'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_istore_on" id="mimport_istore_on" value="1"  {if $mimport_istore_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_istore_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_istore_on" id="mimport_istore_off" value="0"  {if $mimport_istore_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_istore_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla importu zamówień ze sklepów iStore'}</p>
                <p></p>
            </div>
            
            <label>{l s='Ze sklepów KQS.store'}</label>
            <div class="margin-form">
		 <input type="radio" name="mimport_kqs_on" id="mimport_kqs_on" value="1"  {if $mimport_kqs_on == 1 }checked="checked"{/if} />
		 <label class="t" for="mimport_kqs_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
		 
		 <input type="radio" name="mimport_kqs_on" id="mimport_kqs_off" value="0"  {if $mimport_kqs_on == 0 }checked="checked"{/if} />
		 <label class="t" for="mimport_kqs_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>
		  <p class="clear">{l s='Aktywuj rozszerzenia dla importu zamówień ze sklepów KQS.store'}</p>
                <p></p>
            </div>
        </fieldset>    
        
            
            
        <div class="clear">&nbsp;</div>
        <input type="submit" class="button" name="submitMegamoData" value="{l s='Update'}" />
    </fieldset>
    </form>
   {/if}