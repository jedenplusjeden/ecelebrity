<!-- salesmanago admin page -->
	{$message}
<fieldset>
  <legend>Ustawienia</legend>
  <form method="post">
    <p>
      <label for="SM_CLIENT_ID">ID klienta:</label>
      <input id="SM_CLIENT_ID" name="SM_CLIENT_ID" type="text" value="{$SM_CLIENT_ID}" />
    </p>
    <p>
      <label for="SM_API">API Secret:</label>
      <input id="SM_API" name="SM_API" type="text" value="{$SM_API}" />
    </p>
	<p>
      <label for="SM_EMAIL">E-mail:</label>
      <input id="SM_EMAIL" name="SM_EMAIL" type="text" value="{$SM_EMAIL}" />
    </p>
	<p>
      <label for="SM_ENDPOINT">Endpoint:</label>
      <input id="SM_ENDPOINT" name="SM_ENDPOINT" type="text" value="{$SM_ENDPOINT}" />
    </p>
    <p>
      <label>&nbsp;</label>
      <input id="submit_{$module_name}" name="submit_{$module_name}" type="submit" value="Zapisz" class="button" />
    </p>
  </form>
</fieldset>
<br>

<fieldset>
Poniższe linki należy wkleić w aplikacji Salesmanago w Ustawienia -> Inne -> Aplikacja. <br>
Opt-in callback URL: http://{$smarty.server.HTTP_HOST}/modules/salesmanago/optincallbackurl.php?email=$email$&key=sha1($email${$SM_PRESTA}) <br>
Opt-out callback URL: http://{$smarty.server.HTTP_HOST}/modules/salesmanago/optoutcallbackurl.php?email=$email$&key=sha1($email${$SM_PRESTA}) <br>
</fieldset>
<!-- end salesmanago admin page -->