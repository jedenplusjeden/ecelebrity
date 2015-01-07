<?php /* Smarty version Smarty-3.1.19, created on 2014-10-30 13:50:50
         compiled from "/var/www/vhosts/ecelebrity.eu/httpdocs/modules/socialsharing/views/templates/hook/socialsharing_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:660832815452342ae2fe53-15188291%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e4763d61462f9361e0b8c22931dc10f52d7e5303' => 
    array (
      0 => '/var/www/vhosts/ecelebrity.eu/httpdocs/modules/socialsharing/views/templates/hook/socialsharing_header.tpl',
      1 => 1410533588,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '660832815452342ae2fe53-15188291',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link_rewrite' => 0,
    'cover' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5452342ae5f986_07971150',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5452342ae5f986_07971150')) {function content_5452342ae5f986_07971150($_smarty_tpl) {?>
<meta property="og:title" content="" />
<meta property="og:type" content="product" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta property="og:email" content="" />
<meta property="og:phone_number" content="" />
<meta property="og:street-address" content="" />
<meta property="og:locality" content="" />
<meta property="og:country-name" content="" />
<meta property="og:postal-code" content="" />
<?php if (isset($_smarty_tpl->tpl_vars['link_rewrite']->value)&&isset($_smarty_tpl->tpl_vars['cover']->value)&&isset($_smarty_tpl->tpl_vars['cover']->value['id_image'])) {?>
<meta property="og:image" content="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['link_rewrite']->value,$_smarty_tpl->tpl_vars['cover']->value['id_image'],'large_default');?>
" />
<?php }?><?php }} ?>
