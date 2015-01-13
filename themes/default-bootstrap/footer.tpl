
            
    </div>
</section>

<div id="allFooterWrapper">
    <section id="footer">
        <div class="container">
            {if isset($HOOK_FOOTER)}
                {$HOOK_FOOTER}
            {/if}
        </div>
    </section>
    <div id="copyFooter">
        <div class="container clearfix">
            <div class="f-column">
                <strong>SKLEP INTERNETOWY <a href="http://www.dev.ecelebrity.eu/">ECELEBRITY.EU</a></strong><br />Celebrity Spółka z ograniczoną odpowiedzialnością sp.k.<br/>/ Stanisław Dolny 488A / 34-130 Kalwaria Zebrzydowska
            </div>
            <div class="f-column">
                <strong>OFICJALNY SKLEP INTERNETOWY PRODUCENTA OBUWIA DAMSKIEGO</strong><br/>Conhpol Bis Sp. z o.o.<br/>/ Stanisław Dolny 488A / 34-130 Kalwaria Zebrzydowska<br /><a
                        href="http://www.celebritybycb.com/">www.celebritybycb.com</a>
            </div>
        </div>
    </div>
    <div id="regFooter">
        <div class="container clearfix">
            <ul class="nav clearfi">
                <li><a href="/content/3-regulamin">Regulamin</a></li>
                <li><a href="/content/2-polityka-prywatnosci">Polityka prywatności</a></li>
                <li><a href="http://www.dev.ecelebrity.eu/content/9-regulamin-przesylania-newslettera-sklepu-internetowego-celebrity">Regulamin newslettera</a></li>
            </ul>
            <div class="copy-text">&copy; 2014 Sklep internetowy ecelebrity.eu</div>
        </div>
    </div>
</div>
<div id="newsletter-ok-popup" class="mfp-hide"></div>
<script>
    var priceDisplayMethod = 1;
    var priceDisplayPrecision = 2;
</script>
<script src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script>window.jQuery || document.write('<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/jquery-1.9.0.min.js"><\/script>')</script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/jquery-ui-1.9.2.min.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/tools.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/jquery.bxslider.min.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/jquery.magnificient.min.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/jquery.browser.min.js"></script>
    {if ! isset($smarty.get.search_query)}
        <script type="text/javascript" src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/blocklayered.js"></script>
    {/if}
<script type="text/javascript" src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/ajax-cart.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/script.js"></script>
<script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/popups.js"></script>
</body>
</html>
