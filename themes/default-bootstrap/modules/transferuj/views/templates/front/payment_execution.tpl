<ul class="step clearfix" id="order_step">
    <li class="step_done first">
        <a href="http://www.dev.ecelebrity.eu/zamowienie">
            <em>1.</em> Koszyk
        </a>
    </li>
    <li class="step_done step_done_last second">
        <a href="http://www.dev.ecelebrity.eu/zamowienie?step=1&amp;multi-shipping=">
            <em>2.</em> Zaloguj się
        </a>
    </li>
    <li class="step_done third">
        <span><em>3.</em> Adres</span>
    </li>
    <li class="step_done four">
        <span><em>4.</em> Wysyłka</span>
    </li>
    <li id="step_end" class="step_current last">
        <span><em>5.</em> Płatność</span>
    </li>
</ul>
{assign var='current_step' value='payment'}

<div style="width: 50%;">
    <img src="/themes/default-bootstrap/img/transferuj.png" alt="{l s='Płać z Transferuj.pl' mod='transferuj'}" style="margin-bottom: 5px" />

    <p style="margin-top:20px; border-bottom: 1px solid #000; padding-bottom: 10px;margin-bottom: 10px;">
        Kwota do zapłaty: <b><span class="price">{convertPriceWithCurrency price=$kwota currency=$currency}</span></b>
    </p>
    <p>
    <form action="{$link->getModuleLink('transferuj', 'validation', [], true)}" method="post" id="transferujForm" name="transferujForm">
        <input type="hidden" name="confirm" value={$seckey} />
        <input type="hidden" name="id" value="{$sid}" />
        <input type="hidden" name="kwota" value="{$kwota}" />
        <input type="hidden" name="email" value="{$mail}" />
        <input type="hidden" name="nazwisko" value="{$nazwisko}" />
        <input type="hidden" name="imie" value="{$imie}" />
        <input type="hidden" name="adres" value="{$adres}" />
        <input type="hidden" name="miasto" value="{$miasto}" />
        <input type="hidden" name="kraj" value="{$kraj}" />
        <input type="hidden" name="kod" value="{$kod}" />
        <input type="hidden" name="jezyk" value="{$jezyk}" />
        <input type="hidden" name="cart" value="{$crc}" />
        <input type="hidden" name="telefon" value="{$telefon}" />
        <input type="hidden" name="pow_url" value="{$goBackUrl}" />
        <input type="hidden" name="pow_url_blad" value="{$goBackUrlError}" />
        <input type="hidden" name="wyn_url" value="{$notify}" />
        {$chan}
        {$reg}
    </p>
    <div class="transferuj-pay clearfix">
        <p class="cart_navigation">
            <a href="#" class="exclusive_large" onclick="$('#transferujForm').submit();return false;">Potwierdź zakup</a>
        </p>
        <p> lub </p>
        <p><a href="{$link->getPageLink('order.php', true)}?step=3">Zmień metodę płatności</a></p>
    </div>
    </form>
</div>
