<?php
/**
 * @author www.MyPresta.eu | Milos "VEKIA" Myszczuk <support@mypresta.eu>
 * @version 1.0.8
 * All rights reserved! Copying, duplication strictly prohibited
 * http://www.mypresta.eu - prestashop modules
 */
 
class vouchersVoucherEngine extends vouchers {
    public $languages;
    public $id_lang_default;
    public $settings;
    public $prefix;
            
    function __construct($prefix=null,$datetype=null){
        $this->languages=Language::getLanguages(false);
        $this->id_lang_default=(int)Configuration::get('PS_LANG_DEFAULT');
        $this->prefix=$prefix;
        $this->datetype=$datetype;
        parent::__construct();
    }
    
    public function generateInput($name){
        $input="";
            $input.='<input type="text" value="'.Configuration::get($this->prefix.$name).'" name="'.$this->prefix.$name.'">';
        return $input;    
    }
    
    public function generateLangInput($name){
        $input="";
        foreach ($this->languages AS $language){
            $input.='
            <div id="'.$this->prefix.$name.'_'.$language['id_lang'].'" style="display: '.($language['id_lang'] == $this->id_lang_default ? 'block' : 'none').'; float: left;">
            <input type="text" value="'.Configuration::get($this->prefix.$name,$language['id_lang']).'" name="'.$this->prefix.$name.'['.$language['id_lang'].']"> 
            </div>';
        }
        $input.=$this->displayFlags($this->languages, $this->id_lang_default, $this->prefix.$name, $this->prefix.$name, true);
        return $input;    
    }
    
    public function generateLangTextarea($name){
        $input="";
        foreach ($this->languages AS $language){
            $input.='
            <div id="'.$this->prefix.$name.'_'.$language['id_lang'].'" style="display: '.($language['id_lang'] == $this->id_lang_default ? 'block' : 'none').'; float: left;">
                <textarea style="width:250px;height:100px" name="'.$this->prefix.$name.'['.$language['id_lang'].']">'.Configuration::get($this->prefix.$name,$language['id_lang']).'</textarea>
            </div>';
        }
        $input.=$this->displayFlags($this->languages, $this->id_lang_default, $this->prefix.$name, $this->prefix.$name, true);
        return $input;    
    }  
    
    public function generateTextarea($name){
        $input="";
            $input.='<textarea style="width:250px;height:100px"  name="'.$this->prefix.$name.'">'.Configuration::get($this->prefix.$name).'</textarea>';
        return $input;    
    }
    
    public function generateCurrencySelect($name){
        $input='<select name="'.$this->prefix.$name.'">';
        foreach (Currency::getCurrencies() AS $currency){
            $input.="<option ".(Configuration::get($this->prefix.$name)==$currency['id_currency'] ? 'selected="yes"':'')." value=\"".$currency['id_currency']."\">".$currency['name']." ".$currency['sign']."</option>";
        }
        $input.='</select>';
        return $input;
    } 
    
    public function generateTaxIncExc($name){
        $input='<select name="'.$this->prefix.$name.'">
        <option '.(Configuration::get($this->prefix.$name)==0 ? 'selected="yes"':'').' value="0">'.$this->l('Tax excluded').'</option>
        <option '.(Configuration::get($this->prefix.$name)==1 ? 'selected="yes"':'').' value="1">'.$this->l('Tax included').'</option>
        </select>';
        return $input;
    }
    
    public function generateShippingIncExc($name){
        $input='<select name="'.$this->prefix.$name.'">
        <option '.(Configuration::get($this->prefix.$name)==0 ? 'selected="yes"':'').' value="0">'.$this->l('Shipping excluded').'</option>
        <option '.(Configuration::get($this->prefix.$name)==1 ? 'selected="yes"':'').' value="1">'.$this->l('Shipping included').'</option>
        </select>';
        return $input;
    }
    
    public function generateYesOrNo($name,$category_restriction=null,$products_restriction=null,$manufacturers_restriction=null,$attributes_restriction=null){
        $input="";
        if ($category_restriction==1){
            $input.='
            <input onclick="category_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input onclick="category_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
        } else if ($products_restriction==1){
            $input.='
            <input onclick="products_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input onclick="products_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
        } else if ($manufacturers_restriction==1){
            $input.='
            <input onclick="manufacturers_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input onclick="manufacturers_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
        } else if ($attributes_restriction==1){
            $input.='
            <input onclick="attributes_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input onclick="attributes_restriction(\''.$this->prefix.$name.'\');" type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
        }           
         else if ($name=="free_shipping"){
            $input.='
            <input type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').' onclick="ps14freeshipping(\''.$this->prefix.$name.'\','.(parent::psversion()==4 ? '1':'').');"/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').' onclick="ps14freeshipping(\''.$this->prefix.$name.'\','.(parent::psversion()==4 ? '1':'').');"/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
            //onclick="ps14freeshipping(,'.(parent::psversion()==4 ? '1':'').');"
        } else {
            $input.='
            <input type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_on" value="1" '.(Configuration::get($this->prefix.$name)==1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_on"> <img src="../img/admin/enabled.gif" alt="'.$this->l('Enabled').'" title="'.$this->l('Enabled').'" /></label>
            <input type="radio" name="'.$this->prefix.$name.'" id="'.$this->prefix.$name.'_off" value="0" '.(Configuration::get($this->prefix.$name)!=1 ? 'checked="checked" ' : '').'/>
            <label class="t" for="'.$this->prefix.$name.'_off"> <img src="../img/admin/disabled.gif" alt="'.$this->l('Disabled').'" title="'.$this->l('Disabled').'" /></label>              
            ';
        }
        return $input;
    }
    public function generateReductionType($name){
        $array=array();
        $array['1']['img']="enabled";
        $array['1']['name']=$this->l('Percent(%)');
        $array['2']['img']="enabled";
        $array['2']['name']=$this->l('Amount');
        if (parent::psversion()==5 || parent::psversion()==6){
            $array['3']['img']="disabled";
            $array['3']['name']=$this->l('None');
        }
        $input="";
        foreach ($array as $key=>$value){
            $input.="<input ".(Configuration::get($this->prefix.$name)==$key ? 'checked="true"':'')." onchange=\"reduction_type('{$this->prefix}','{$name}');\" name=\"".$this->prefix.$name."\" id=\"".$this->prefix.$name."_radio$key\" type=\"radio\" value=\"".$key."\"> ".($value['img']=="enabled" ? '<img src="../img/admin/enabled.gif" />':'<img src="../img/admin/disabled.gif">')."".$value['name']."&nbsp;&nbsp;&nbsp;&nbsp;";
        }
        $input.='
        <div id="'.$this->prefix.$name.'_1" '.(Configuration::get($this->prefix.$name)==1 ? 'style="margin-top:15px;"':'style="display:none; margin-top:15px;"').' />
        '.$this->l('Value').' '.$this->generateInput('reduction_percent').' %
        </div>';
        
        $input.=
        '<div id="'.$this->prefix.$name.'_2" '.(Configuration::get($this->prefix.$name)==2 ? 'style="margin-top:15px;"':'style="display:none; margin-top:15px;"').' />
        '.$this->l('Amount').' '.$this->generateInput('reduction_amount').' '.$this->generateCurrencySelect('reduction_currency').' '.(parent::psversion()==5 || parent::psversion()==6 ? $this->generateTaxIncExc('reduction_tax'):'').'
        </div>';
        
        return $input;
    }
    
    public function generateApplyDiscountTo($name){
        $array=array();
        $array['apply_discount_to_order']['name']=$this->l('Order (without shipping)');
        $array['apply_discount_to_order']['value']="order";
        $array['apply_discount_to_product']['name']=$this->l('Specific product');
        $array['apply_discount_to_product']['value']="specific";
        $array['apply_discount_to_cheapest_product']['name']=$this->l('Cheapest product');
        $array['apply_discount_to_cheapest_product']['value']="cheapest";
        $array['apply_discount_to_selected_products']['name']=$this->l('Selected products');
        $array['apply_discount_to_selected_products']['value']="selected";
        $input="";
        foreach ($array as $key=>$value){
            $input.="<input ".(Configuration::get($this->prefix.$name)==$value['value'] ? 'checked="true"':'')." onchange=\"apply_discount_to('{$this->prefix}{$name}');\" name=\"".$this->prefix.$name."\" id=\"".$this->prefix.$name."_radio$key\" type=\"radio\" value=\"".$value['value']."\"> ".$value['name']."&nbsp;&nbsp;&nbsp;&nbsp;";
        }
        $input.='
        <div id="'.$this->prefix.$name.'_specific" '.(Configuration::get($this->prefix.$name)=="specific" ? 'style="margin-top:15px;"':'style="display:none; margin-top:15px;"').' />
        '.$this->l('Product ID').' '.$this->generateInput('reduction_product').'
        <p class="preference_description">'.$this->l('enter product ID number').' <a href="http://mypresta.eu/en/art/basic-tutorials/how-to-get-product-id-in-prestashop.html" target="blank"/>'.$this->l('how to get product id?').'</a></p>
        </div>';
                
        return $input;
    }
    
    public function generateCategoriesSelect($name){
        $cat_tree=$this->generateYesOrNo($name,1);
        $exp=explode(",",Configuration::get($this->prefix.$name.'_cr'));
        foreach($exp as $key=>$value){
            $catchecks[$value]=true;    
        }
        $id_lang=Configuration::get('PS_LANG_DEFAULT');
        $result = Category::getCategories($id_lang);
        $cat_tree.='<div id="'.$this->prefix.$name.'_cr" style="clear:both; display:block; '.(Configuration::get($this->prefix.$name)==1 ? '':'display:none;').'"><select name="'.$this->prefix.$name.'_cr[]" style="display:block; clear:both; overflow:hidden; border:1px solid #AAAAAA; width:400px; height:160px; " multiple="">';
        foreach ($result as $key=>$value){
            foreach ($value as $key1=>$value1){
           	        $cat_tree.='<option '.$this->catchecks($catchecks,$value1['infos']['id_category']).' value="'.$value1['infos']['id_category'].'"/>'.$value1['infos']['name'].'</option>';   
	            }
            }
        $cat_tree.='</select><p class="preference_description">'.$this->l('Select categories from list above, use CTRL+click to select multiple categories, CTRL+A to select all of them').'</p></div>';
        return $cat_tree;
    }

    public function generateProductsSelect($name){
        $cat_tree=$this->generateYesOrNo($name,0,1);
        $exp=explode(",",Configuration::get($this->prefix.$name.'_pr'));
        foreach($exp as $key=>$value){
            $prodchecks[$value]=true;    
        }
        $id_lang=Configuration::get('PS_LANG_DEFAULT');
        $result = Product::getProducts($id_lang,0,0,'name','asc',false,false,null);
        $cat_tree.='<div id="'.$this->prefix.$name.'_pr" style="display:block; clear:both; '.(Configuration::get($this->prefix.$name)==1 ? '':'display:none;').'"><select name="'.$this->prefix.$name.'_pr[]" style="display:block; clear:both; overflow:hidden; border:1px solid #AAAAAA; width:400px; height:160px; " multiple="">';
        foreach ($result as $key=>$value){
            $cat_tree.='<option '.$this->prodchecks($prodchecks,$value['id_product']).' value="'.$value['id_product'].'"/>'.$value['name'].'</option>';     
            }
        $cat_tree.='</select><p class="preference_description">'.$this->l('Select products from list above, use CTRL+click to select multiple products, CTRL+A to select all of them').'</p></div>
        ';
        return $cat_tree;
    }   

    public function generateManufacturersSelect($name){
        $cat_tree=$this->generateYesOrNo($name,0,0,1);
        $exp=explode(",",Configuration::get($this->prefix.$name.'_mr'));
        foreach($exp as $key=>$value){
            $prodchecks[$value]=true;    
        }
        $id_lang=Configuration::get('PS_LANG_DEFAULT');
        $result = Manufacturer::getManufacturers(false,$id_lang,false,false);
        $cat_tree.='<div id="'.$this->prefix.$name.'_mr" style="display:block; clear:both; '.(Configuration::get($this->prefix.$name)==1 ? '':'display:none;').'"><select name="'.$this->prefix.$name.'_mr[]" style="display:block; clear:both; overflow:hidden; border:1px solid #AAAAAA; width:400px; height:160px; " multiple="">';
        foreach ($result as $key=>$value){
            $cat_tree.='<option '.$this->prodchecks($prodchecks,$value['id_manufacturer']).' value="'.$value['id_manufacturer'].'"/>'.$value['name'].'</option>';     
            }
        $cat_tree.='</select><p class="preference_description">'.$this->l('Select manufacturers from list above, use CTRL+click to select multiple products, CTRL+A to select all of them').'</p></div>
        ';
        return $cat_tree;
    }

    public function generateAttributesSelect($name){
        $cat_tree=$this->generateYesOrNo($name,0,0,0,1);
        $exp=explode(",",Configuration::get($this->prefix.$name.'_mr'));
        foreach($exp as $key=>$value){
            $prodchecks[$value]=true;    
        }
        $id_lang=Configuration::get('PS_LANG_DEFAULT');
        $result = Attribute::getAttributes($id_lang);

        $cat_tree.='<div id="'.$this->prefix.$name.'_mr" style="display:block; clear:both; '.(Configuration::get($this->prefix.$name)==1 ? '':'display:none;').'"><select name="'.$this->prefix.$name.'_mr[]" style="display:block; clear:both; overflow:hidden; border:1px solid #AAAAAA; width:400px; height:160px; " multiple="">';
        foreach ($result as $key=>$value){
            $cat_tree.='<option '.$this->prodchecks($prodchecks,$value['id_attribute']).' value="'.$value['id_attribute'].'"/>'.$value['attribute_group'].' - '.$value['name'].'</option>';     
            }
        $cat_tree.='</select><p class="preference_description">'.$this->l('Select Attributes from list above, use CTRL+click to select multiple products, CTRL+A to select all of them').'</p></div>
        ';
        return $cat_tree;
    }         
    
    public function generateForm(){
        $form='<script type="text/javascript" src="../modules/'.$this->name.'/voucherengine/script.js"></script>
        <h2>'.$this->l('General settings').'</h2>
        <input type="hidden" name="voucherPrefix" value="'.$this->prefix.'">';
        $form.=(parent::psversion()==5 || parent::psversion()==6 ?'
            <div style="display:block; clear:both;">
                <label>'.$this->l('Name').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateLangInput("name").'
    				<p class="preference_description"><br/>'.$this->l('This will be displayed in the cart summary, as well as on the invoice').'</p>
    			</div>
            </div>':'').'
            <div style="display:block; clear:both;">
                <label>'.$this->l('Description').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateTextarea("description").'
    				<p class="preference_description">'.$this->l('For your eyes only. This will never be displayed to the customer').'</p>
    			</div>
            </div>
            <div style="display:block; clear:both;">
                <label>'.$this->l('Voucher length').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("length").'
    				<p class="preference_description">'.$this->l('How many characters will be used to generate voucher code').'</p>
    			</div>
            </div>            
            <div style="display:block; clear:both;">
                <label>'.$this->l('Enable sufix').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("sufix").'
    				<p class="preference_description">'.$this->l('Turn this option on if you want to enable sufix for your voucher code. It will be added AFTER generated code like CODE_sufix.').'</p>
    			</div>
            </div>            
            <div style="display:block; clear:both;">
                <label>'.$this->l('Sufix').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateLangInput("sufix_code").'
    				<p class="preference_description"><br/>'.$this->l('Define sufix for your voucher code').'</p>
    			</div>
            </div>
            <div style="display:block; clear:both;">
                <label>'.$this->l('Enable prefix').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("prefix").'
    				<p class="preference_description">'.$this->l('Turn this option on if you want to enable prefix for your voucher code. It will be added BEFORE generated code like prefix_CODE.').'</p>
    			</div>
            </div>                     
            <div style="display:block; clear:both;">
                <label>'.$this->l('Prefix').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateLangInput("prefix_code").'
    				<p class="preference_description"><br/>'.$this->l('Define prefix for your voucher code').'</p>
    			</div>
            </div>            
            <div style="display:block; clear:both;">
                <label>'.$this->l('Highlight').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("highlight").'
    				<p class="preference_description">'.$this->l('If the voucher is not yet in the cart, it will be displayed in the cart summary.').'</p>
    			</div>
            </div>
            '.(parent::psversion()==5 || parent::psversion()==6 ?'
            <div style="display:block; clear:both;">
                <label>'.$this->l('Partial use').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("partial_use").'
    				<p class="preference_description">'.$this->l('Only applicable if the voucher value is greater than the cart total.
If you do not allow partial use, the voucher value will be lowered to the total order amount. If you allow partial use, however, a new voucher will be created with the remainder.').'</p>
    			</div>
            </div>':'').'
            '.(parent::psversion()==5 || parent::psversion()==6 ?'
            <div style="display:block; clear:both;">
                <label>'.$this->l('Priority').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("priority").'
    				<p class="preference_description">'.$this->l('Cart rules are applied by priority. A cart rule with a priority of "1" will be processed before a cart rule with a priority of "2".').'</p>
    			</div>
            </div>':'').'
            <div style="display:block; clear:both;">
                <label>'.$this->l('Active').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("active").'
    			</div>
            </div>
            <h2>'.$this->l('Conditions').'</h2>';
            
            
            if ($this->datetype==null || $this->datetype=="days"){
            $form.='
            <label>'.$this->l('Expiration time').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("expiry").'
    				<p class="preference_description">'.$this->l('Define how long (in days) voucher code will be active').'</p>
    			</div>';
            }
            
            if ($this->datetype=="date"){
            $form.='
            <label>'.$this->l('Date from').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("datefrom").'
    				<p class="preference_description">'.$this->l('Start date, format: YYYY-MM-DD HH:MM:SS').'</p>
    			</div>';
            $form.='
            <label>'.$this->l('Date to').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("dateto").'
    				<p class="preference_description">'.$this->l('Expiry date, format: YYYY-MM-DD HH:MM:SS').'</p>
    			</div>';                
            }
                
                
            $form.='            
            <label>'.$this->l('Minimum amount').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("minimum_amount").' '.(parent::psversion()==5 || parent::psversion()==6 ? $this->generateCurrencySelect("minimum_amount_currency"):'').' '.$this->generateTaxIncExc("minimum_amount_tax").' '.(parent::psversion()==5 || parent::psversion()==6 ? $this->generateShippingIncExc("minimum_amount_shipping"):'').' 
    				<p class="preference_description">'.$this->l('You can choose a minimum amount for the cart either with or without the taxes and shipping.').'</p>
    			</div> 
                
            <label>'.$this->l('Total available').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("quantity").'
    				<p class="preference_description">'.$this->l('The cart rule will be applied to the first "X" customers only.').'</p>
    			</div>
                
            <label>'.$this->l('Total available for each user').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateInput("quantity_per_user").'
    				<p class="preference_description">'.$this->l('A customer will only be able to use the cart rule "X" time(s).').'</p>
    			</div>
                
            <div style="display:block; clear:both;">
                <label>'.$this->l('Uncombinable with other codes').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("cart_rule_restriction").'
                    <p class="preference_description">'.$this->l('Turn this option on if you want dont want to allow to use this code with other voucher codes').'</p>
    			</div>
            </div>
            
            
            '.(parent::psversion()==4 ? '<div style="display:block; clear:both;">
                <label>'.$this->l('Cumulative with price reductions').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateYesOrNo("cumulable_reduction").'
                    <p class="preference_description">'.$this->l('Turn this option on if you want to allow to use this code with price reductions').'</p>
    			</div>
            </div>':'').'
            '.(parent::psversion()==4 || parent::psversion()==5 || parent::psversion()==6 ? '
            <label>'.$this->l('Add rule concerning categories').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateCategoriesSelect("restriction_categories").'
    			</div>':'').'
            '.(parent::psversion()==5 || parent::psversion()==6 ? '
            <label>'.$this->l('Add rule concerning products').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateProductsSelect("restriction_products").'
    			</div>':'').'
            '.(parent::psversion()==5 || parent::psversion()==6 ? '
            <label>'.$this->l('Add rule concerning attributes').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateAttributesSelect("restriction_attributes").'
            </div>':'').'
            '.(parent::psversion()==5 || parent::psversion()==6 ? '
            <label>'.$this->l('Add rule concerning manufacturers').'</label>
                <div class="margin-form" style="position:relative;">
                    '.$this->generateManufacturersSelect("restriction_manufacturers").'
    			</div>':'').'                                
                
                
                <h2>'.$this->l('Actions').'</h2>
                <div style="display:block; clear:both;">
                    <label>'.$this->l('Free shipping').'</label>
                    <div class="margin-form" style="position:relative;">
                        '.$this->generateYesOrNo("free_shipping").'
        			</div>
                </div>
                <div style="display:block; clear:both;" class="'.(parent::psversion()==4 ? 'ps14freeshipping':'').'">
                    <label>'.$this->l('Apply a discount').'</label>
                    <div class="margin-form" style="position:relative;">
                        '.$this->generateReductionType("reduction_type").'
        			</div>
                </div>
                
                '.(parent::psversion()==5 || parent::psversion()==6 ? '
                <div class="'.(parent::psversion()==4 ? 'ps14freeshipping':'').'" id="'.$this->prefix.'apply_discount_to" '.(Configuration::get($this->prefix."reduction_type")==1 || Configuration::get($this->prefix."reduction_type")==2 ? 'style="display:block; clear:both; margin-top:15px;"':'style="display:block; clear:both; display:none; margin-top:15px;"').'>
                    <label>'.$this->l('Apply discount to').'</label>
                    <div class="margin-form" style="position:relative;">
                        '.$this->generateApplyDiscountTo("apply_discount_to").'
        			</div>
                </div>':'').'                                                                                                                          
        ';
        return $form;
    }
    
    public function catchecks($array,$id){
        if (isset($array[$id])){
            return 'selected="yes"';
        } else {
            return '';
        }
    }
    
    public function prodchecks($array,$id){
        if (isset($array[$id])){
            return 'selected="yes"';
        } else {
            return '';
        }
    }
        
    public function getVoucherEngineSettings($prefix){
        $return=array();
        $return['voucher']=Configuration::getMultiple(
        array(
        $prefix."name", 
        $prefix."description", 
        $prefix."highlight",
        $prefix."partial_use",
        $prefix."priority",
        $prefix."prefix",
        $prefix."prefix_code",
        $prefix."sufix",
        $prefix."sufix_code",
        $prefix."length",
        $prefix."minimum_amount_currency",
        $prefix."minimum_amount",
        $prefix."expiry",
        $prefix."datefrom",
        $prefix."dateto",
        $prefix."minimum_amount_tax",
        $prefix."minimum_amount_shipping",
        $prefix."quantity",
        $prefix."quantity_per_user",
        $prefix."cart_rule_restriction",
        $prefix."cumulable_reduction",
        $prefix."restriction_categories",
        $prefix."reduction_type",
        $prefix."reduction_percent",
        $prefix."reduction_amount",
        $prefix."reduction_currency",
        $prefix."reduction_tax",
        $prefix."apply_discount_to",
        $prefix."reduction_product"
        ));
        return $return['voucher'];
    }
    
    public static function updateVoucher($prefix,$post){
        if (parent::psversion()==4 || parent::psversion()==5 || parent::psversion()==6){
            if (parent::psversion()==5 || parent::psversion()==6){ 
              Configuration::updateValue($prefix."name",$post[$prefix.'name']);
              Configuration::updateValue($prefix."partial_use",(int)$post[$prefix.'partial_use']);
              Configuration::updateValue($prefix."priority",(int)$post[$prefix.'priority']);
              Configuration::updateValue($prefix."minimum_amount_currency",$post[$prefix.'minimum_amount_currency']);
              Configuration::updateValue($prefix."minimum_amount_shipping",$post[$prefix.'minimum_amount_shipping']);
              Configuration::updateValue($prefix."restriction_products",$post[$prefix.'restriction_products']);
              Configuration::updateValue($prefix."reduction_tax",$post[$prefix.'reduction_tax']);
              Configuration::updateValue($prefix."apply_discount_to",$post[$prefix.'apply_discount_to']);
              Configuration::updateValue($prefix."reduction_product",$post[$prefix.'reduction_product']);
              Configuration::updateValue($prefix."restriction_manufacturers",$post[$prefix.'restriction_manufacturers']);
              Configuration::updateValue($prefix."restriction_attributes",$post[$prefix.'restriction_attributes']);
            }
            
            if (parent::psversion()==4){
                Configuration::updateValue($prefix."cumulable_reduction",$post[$prefix.'cumulable_reduction']);    
            }
            
            Configuration::updateValue($prefix."restriction_categories",$post[$prefix.'restriction_categories']);
            Configuration::updateValue($prefix."description",$post[$prefix.'description']);
            Configuration::updateValue($prefix."highlight",(int)$post[$prefix.'highlight']);
            
            Configuration::updateValue($prefix."prefix",$post[$prefix.'prefix']);
            Configuration::updateValue($prefix."prefix_code",$post[$prefix.'prefix_code']);
            Configuration::updateValue($prefix."sufix",$post[$prefix.'sufix']);
            Configuration::updateValue($prefix."sufix_code",$post[$prefix.'sufix_code']);
            Configuration::updateValue($prefix."length",(int)$post[$prefix.'length']);
            Configuration::updateValue($prefix."minimum_amount",$post[$prefix.'minimum_amount']);
            Configuration::updateValue($prefix."active",(int)$post[$prefix.'active']);
            
            if (isset($post[$prefix.'expiry'])){Configuration::updateValue($prefix."expiry",$post[$prefix.'expiry']);}else{Configuration::updateValue($prefix."expiry","#");}           
            if (isset($post[$prefix.'datefrom'])){Configuration::updateValue($prefix."datefrom",$post[$prefix.'datefrom']);}else{Configuration::updateValue($prefix."datefrom","#");}
            if (isset($post[$prefix.'dateto'])){Configuration::updateValue($prefix."dateto",$post[$prefix.'dateto']);}else{Configuration::updateValue($prefix."dateto","#");}  
            
            Configuration::updateValue($prefix."minimum_amount_tax",$post[$prefix.'minimum_amount_tax']);
            
            Configuration::updateValue($prefix."quantity",$post[$prefix.'quantity']);
            Configuration::updateValue($prefix."quantity_per_user",$post[$prefix.'quantity_per_user']);
            Configuration::updateValue($prefix."cart_rule_restriction",(int)$post[$prefix.'cart_rule_restriction']);
            
            Configuration::updateValue($prefix."free_shipping",$post[$prefix.'free_shipping']);
            Configuration::updateValue($prefix."reduction_type",$post[$prefix.'reduction_type']);
            Configuration::updateValue($prefix."reduction_percent",$post[$prefix.'reduction_percent']);
            Configuration::updateValue($prefix."reduction_amount",$post[$prefix.'reduction_amount']);
            Configuration::updateValue($prefix."reduction_currency",$post[$prefix.'reduction_currency']);

            if (parent::psversion()==4 || parent::psversion()==5 || parent::psversion()==6){
                // CATEGORIES
                $restriction_categories_cr="";
                foreach ($post[$prefix.'restriction_categories_cr'] AS $k=>$v){
                    $restriction_categories_cr.=$v.",";
                }
                $restriction_categories_cr=trim(substr($restriction_categories_cr,0,-1));
                Configuration::updateValue($prefix."restriction_categories_cr",$restriction_categories_cr);
            
                // PRODUCTS           
                $restriction_products_pr="";
                foreach ($post[$prefix.'restriction_products_pr'] AS $k=>$v){
                    @$restriction_products_pr.=$v.",";
                }
                $restriction_products_pr=trim(substr($restriction_products_pr,0,-1));
                Configuration::updateValue($prefix."restriction_products_pr",$restriction_products_pr);
                
                // ATTRIBUTES           
                $restriction_attributes_mr="";
                foreach ($post[$prefix.'restriction_attributes_mr'] AS $k=>$v){
                    @$restriction_attributes_mr.=$v.",";
                }
                $restriction_attributes_mr=trim(substr($restriction_attributes_mr,0,-1));
                Configuration::updateValue($prefix."restriction_attributes_mr",$restriction_attributes_mr);
                
                // MANUFACTURERS
                $restriction_manufacturers_mr="";
                foreach ($post[$prefix.'restriction_manufacturers_mr'] AS $k=>$v){
                    $restriction_manufacturers_mr.=$v.",";
                }
                $restriction_manufacturers_mr=trim(substr($restriction_manufacturers_mr,0,-1));
                Configuration::updateValue($prefix."restriction_manufacturers_mr",$restriction_manufacturers_mr);
            }
            
        }  
        //self::AddVoucherCode("gc_");      
    }
    
    public static function generateVoucherCode($prefix){
        $validCharacters="ABCDEFGHJKLMNOUPRSTUWQXYZ0123456789";
        $length=Configuration::get($prefix.'length');
        $last="";
        $validCharNumber = strlen($validCharacters);
        $result = "";
        for ($i = 0; $i < $length; $i++) {
            $index = mt_rand(0, $validCharNumber - 1);
            while ($last==$index){
                $index = mt_rand(0, $validCharNumber - 1);        
            }
            $result .= $validCharacters[$index];
            $last = $index;
        }
        return $result;
    }
    
    public static function AddVoucherCode($prefix,$id_customer=null,$code=null){
        if (parent::psversion()==5 || parent::psversion()==6){
            $context = Context::getContext();
            $voucher = new Discount();
            $name=array();
            foreach (Language::getLanguages(false) AS $k=>$v){
                $name[$v['id_lang']]=trim(Configuration::get($prefix.'name',$v['id_lang']));
            }
            $voucher->name=$name;
            $voucher->description=Configuration::get($prefix.'description');
            if (Configuration::get($prefix.'expiry')!="#"){
                $voucher->date_from=date("Y-m-d h:i:s");
                $voucher->date_to=date("Y-m-d h:i:s", date("U")+Configuration::get($prefix.'expiry')*24*60*60);    
            } elseif (Configuration::get($prefix.'datefrom')!="#" && Configuration::get($prefix.'dateto')!="#") {
                $voucher->date_from=Configuration::get($prefix.'datefrom');
                $voucher->date_to=Configuration::get($prefix.'dateto');
            } else {
                $voucher->date_from=date("Y-m-d h:i:s");
                $voucher->date_to=date("Y-m-d h:i:s", date("U")+7*24*60*60);
            }
            if ($code!=null){
                $voucher->code=trim($code);
            }
            else {
                $voucher->code=trim(self::generateVoucherCode($prefix));
            }
            
            if (Configuration::get($prefix.'sufix')==1){
                
                $voucher->code=$voucher->code.Configuration::get($prefix.'sufix_code',$context->language->id);
            }
            if (Configuration::get($prefix.'prefix')==1){
                $voucher->code=Configuration::get($prefix.'prefix_code',$context->language->id).$voucher->code;
            }
            $voucher->highlight=(Configuration::get($prefix.'highlight')==1 ? true:false);
            $voucher->partial_use=(Configuration::get($prefix.'partial_use')==1 ? true:false);
            $voucher->priority=Configuration::get($prefix.'priority');
            $voucher->active=(Configuration::get($prefix.'active')==1 ? true:false);
            $voucher->cart_rule_restriction=(Configuration::get($prefix.'cart_rule_restriction')==1 ? true:false);
            
            $voucher->minimum_amount=Configuration::get($prefix.'minimum_amount');
            $voucher->minimum_amount_currency=Configuration::get($prefix.'minimum_amount_currency');
            $voucher->minimum_amount_tax=Configuration::get($prefix.'minimum_amount_tax');
            $voucher->minimum_amount_shipping=Configuration::get($prefix.'minimum_amount_shipping');
            $voucher->quantity=Configuration::get($prefix.'quantity');
            $voucher->quantity_per_user=Configuration::get($prefix.'quantity_per_user');
            if (Configuration::get($prefix.'restriction_products')==1 || Configuration::get($prefix.'restriction_categories')==1 || Configuration::get($prefix.'restriction_manufacturers')==1 || Configuration::get($prefix.'restriction_attributes')==1){
                $voucher->product_restriction=1;
            }
            
            
            $voucher->free_shipping=Configuration::get($prefix.'free_shipping');
            if (Configuration::get($prefix.'reduction_type')==1){
                $voucher->reduction_percent=Configuration::get($prefix.'reduction_percent');
            }
            if (Configuration::get($prefix.'reduction_type')==2){
                $voucher->reduction_amount=Configuration::get($prefix.'reduction_amount');
                $voucher->reduction_currency=Configuration::get($prefix.'reduction_currency');
                $voucher->reduction_tax=Configuration::get($prefix.'reduction_tax');
            }
            if (Configuration::get($prefix."apply_discount_to")=="specific"){
                $voucher->reduction_product=Configuration::get($prefix."reduction_product");
            }   
            if (Configuration::get($prefix."apply_discount_to")=="cheapest"){
                $voucher->reduction_product=-1;
            }    
            if (Configuration::get($prefix."apply_discount_to")=="selected"){
                $voucher->reduction_product=-2;
            }   
            if ($id_customer!=null){
                $voucher->id_customer=(int)$id_customer;
            }
            if($voucher->add()==true){
                self::afterAdd($voucher,$prefix);
            }
            return $voucher->code;
        }
        
        
        
        
        
        if (parent::psversion()==4){
            global $cookie;
            $context = new StdClass();
            $context->language = new StdClass();
            $context->language->id = $cookie->id_lang;
            $voucher = new Discount();
            $desc=array();
            foreach (Language::getLanguages(false) AS $k=>$v){
                $desc[$v['id_lang']]=trim(Configuration::get($prefix.'description'));
            }
            //$voucher->name=$name;
            $voucher->description=$desc;
            if (Configuration::get($prefix.'expiry')!="#"){
                $voucher->date_from=date("Y-m-d h:i:s");
                $voucher->date_to=date("Y-m-d h:i:s", date("U")+Configuration::get($prefix.'expiry')*24*60*60);    
            } elseif (Configuration::get($prefix.'datefrom')!="#" && Configuration::get($prefix.'dateto')!="#") {
                $voucher->date_from=Configuration::get($prefix.'datefrom');
                $voucher->date_to=Configuration::get($prefix.'dateto');
            } else {
                $voucher->date_from=date("Y-m-d h:i:s");
                $voucher->date_to=date("Y-m-d h:i:s", date("U")+7*24*60*60);
            }
            $voucher->name=trim(self::generateVoucherCode($prefix));
            if (Configuration::get($prefix.'sufix')==1){
                
                $voucher->name=$voucher->name.Configuration::get($prefix.'sufix_code',$context->language->id);
            }
            if (Configuration::get($prefix.'prefix')==1){
                $voucher->name=Configuration::get($prefix.'prefix_code',$context->language->id).$voucher->name;
            }
            $voucher->cart_display=(Configuration::get($prefix.'highlight')==1 ? true:false);
            //$voucher->partial_use=(Configuration::get($prefix.'partial_use')==1 ? true:false);
            //$voucher->priority=Configuration::get($prefix.'priority');
            $voucher->active=(Configuration::get($prefix.'active')==1 ? true:false);
            $voucher->cumulable=(Configuration::get($prefix.'cart_rule_restriction')==1 ? false:true);
            $voucher->cumulable_reduction=(Configuration::get($prefix.'cumulable_reduction')==1 ? false:true);
            $voucher->minimal=Configuration::get($prefix.'minimum_amount');
            $voucher->include_tax=Configuration::get($prefix.'minimum_amount_tax');
            $voucher->quantity=Configuration::get($prefix.'quantity');
            $voucher->quantity_per_user=Configuration::get($prefix.'quantity_per_user');
            
            if (Configuration::get($prefix.'free_shipping')==1){
                $voucher->id_discount_type=3;
                $voucher->value=0;
            } elseif (Configuration::get($prefix."reduction_type")==2){
                $voucher->id_discount_type=2;
                $voucher->value=Configuration::get($prefix.'reduction_amount');
                $voucher->id_currency=Configuration::get($prefix.'reduction_currency');
            } elseif (Configuration::get($prefix."reduction_type")==1){
                $voucher->id_discount_type=1;
                $voucher->value=Configuration::get($prefix.'reduction_percent');
            }
              
            if ($id_customer!=null){
                $voucher->id_customer=(int)$id_customer;
            }
            if($voucher->add()==true){
                self::afterAddOldPrestaShop14 ($voucher,$prefix);
            }
            return $voucher->name;
        }
    }
    
    public static function afterAddOldPrestaShop14 ($currentObject,$prefix){
        if (Configuration::get($prefix.'restriction_categories')==1){
            Db::getInstance()->Execute('DELETE FROM `'._DB_PREFIX_.'discount_category` WHERE `id_discount`='.(int)($currentObject->id));
            $restrictions=Configuration::get($prefix."restriction_categories_cr");
            $restrictions_array=explode(",",$restrictions);
                $values = array();
                foreach ($restrictions_array as $id){
                    $values[] = '('.(int)$currentObject->id.','.(int)$id.')';          
                }
                $values = array_unique($values);
                if (count($values))
                    Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'discount_category` (`id_discount`, `id_category`) VALUES '.implode(',', $values));
        }
    }
    
    public static function afterAdd($currentObject,$prefix){
		if (Configuration::get($prefix.'restriction_products')==1){
                $ruleGroupId=1;
				Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_group` (`id_cart_rule`, `quantity`)
				VALUES ('.(int)$currentObject->id.', 1)');
				$id_product_rule_group = Db::getInstance()->Insert_ID();
                        $ruleId=1;
						Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule` (`id_product_rule_group`, `type`)
						VALUES ('.(int)$id_product_rule_group.', "products")');
						$id_product_rule = Db::getInstance()->Insert_ID();

                        $restrictions=Configuration::get($prefix."restriction_products_pr");
                        $restrictions_array=explode(",",$restrictions);
               
						$values = array();
						foreach ($restrictions_array as $id){
							$values[] = '('.(int)$id_product_rule.','.(int)$id.')';          
                        }
						$values = array_unique($values);
						if (count($values))
							Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_value` (`id_product_rule`, `id_item`) VALUES '.implode(',', $values));
        }
        
		if (Configuration::get($prefix.'restriction_categories')==1){
                $ruleGroupId=1;
				Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_group` (`id_cart_rule`, `quantity`)
				VALUES ('.(int)$currentObject->id.', 1)');
				$id_product_rule_group = Db::getInstance()->Insert_ID();
                        $ruleId=1;
						Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule` (`id_product_rule_group`, `type`)
						VALUES ('.(int)$id_product_rule_group.', "categories")');
						$id_product_rule = Db::getInstance()->Insert_ID();

                        $restrictions=Configuration::get($prefix."restriction_categories_cr");
                        $restrictions_array=explode(",",$restrictions);
               
						$values = array();
						foreach ($restrictions_array as $id){
							$values[] = '('.(int)$id_product_rule.','.(int)$id.')';          
                        }
						$values = array_unique($values);
						if (count($values))
							Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_value` (`id_product_rule`, `id_item`) VALUES '.implode(',', $values));
        }

		if (Configuration::get($prefix.'restriction_manufacturers')==1){
                $ruleGroupId=1;
				Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_group` (`id_cart_rule`, `quantity`)
				VALUES ('.(int)$currentObject->id.', 1)');
				$id_product_rule_group = Db::getInstance()->Insert_ID();
                        $ruleId=1;
						Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule` (`id_product_rule_group`, `type`)
						VALUES ('.(int)$id_product_rule_group.', "manufacturers")');
						$id_product_rule = Db::getInstance()->Insert_ID();

                        $restrictions=Configuration::get($prefix."restriction_manufacturers_mr");
                        $restrictions_array=explode(",",$restrictions);
               
						$values = array();
						foreach ($restrictions_array as $id){
							$values[] = '('.(int)$id_product_rule.','.(int)$id.')';          
                        }
						$values = array_unique($values);
						if (count($values))
							Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_value` (`id_product_rule`, `id_item`) VALUES '.implode(',', $values));
        }
        
		if (Configuration::get($prefix.'restriction_attributes')==1){
                $ruleGroupId=1;
				Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_group` (`id_cart_rule`, `quantity`)
				VALUES ('.(int)$currentObject->id.', 1)');
				$id_product_rule_group = Db::getInstance()->Insert_ID();
                        $ruleId=1;
						Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule` (`id_product_rule_group`, `type`)
						VALUES ('.(int)$id_product_rule_group.', "attributes")');
						$id_product_rule = Db::getInstance()->Insert_ID();

                        $restrictions=Configuration::get($prefix."restriction_attributes_mr");
                        $restrictions_array=explode(",",$restrictions);
               
						$values = array();
						foreach ($restrictions_array as $id){
							$values[] = '('.(int)$id_product_rule.','.(int)$id.')';          
                        }
						$values = array_unique($values);
						if (count($values))
							Db::getInstance()->execute('INSERT INTO `'._DB_PREFIX_.'cart_rule_product_rule_value` (`id_product_rule`, `id_item`) VALUES '.implode(',', $values));
        } 
        
                                   
	}
}