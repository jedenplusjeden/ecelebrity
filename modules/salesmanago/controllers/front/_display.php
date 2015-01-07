<?php


class salesmanagoDisplayModuleFrontController extends ModuleFrontController
{
  public function initContent()
  {
    parent::initContent();
    $this->setTemplate('display.tpl');
  }
}