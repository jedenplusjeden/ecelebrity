<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 13:45:57
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/ganalyticscom/views/templates/hook/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:162850706254523305276471-85990565%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '423617541e1d3a5207508430458a71704529ec82' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/ganalyticscom/views/templates/hook/header.tpl',
      1 => 1414589441,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '162850706254523305276471-85990565',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'codeGA' => 0,
    'pageTrack' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_54523305280b54_71120122',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54523305280b54_71120122')) {function content_54523305280b54_71120122($_smarty_tpl) {?><script type="text/javascript">

(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', '<?php echo $_smarty_tpl->tpl_vars['codeGA']->value;?>
', 'auto');
  ga('send', 'pageview'<?php if (isset($_smarty_tpl->tpl_vars['pageTrack']->value)) {?>, '<?php echo $_smarty_tpl->tpl_vars['pageTrack']->value;?>
'<?php }?>);

</script><?php }} ?>
