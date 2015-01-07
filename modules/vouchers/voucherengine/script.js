/**
 * @author www.MyPresta.eu | Milos "VEKIA" Myszczuk <support@mypresta.eu>
 * @version 1.0.8
 * All rights reserved! Copying, duplication strictly prohibited
 * http://www.mypresta.eu - prestashop modules
 */
 
function reduction_type(p,n){
    var name =p+''+n;
    var reduction_type_selected=jQuery("input:radio[name="+name+"]:checked").val();
    if (reduction_type_selected==1){
        $("#"+name+"_2").hide(200);
        $("#"+name+"_"+reduction_type_selected).show(200);
        $("#"+p+"apply_discount_to").show(200);
    }
    if (reduction_type_selected==2){
        $("#"+name+"_1").hide(200);
        $("#"+name+"_"+reduction_type_selected).show(200);
        $("#"+p+"apply_discount_to").show(200);
    }
    if (reduction_type_selected==3){
        $("#"+name+"_1").hide(200);
        $("#"+name+"_2").hide(200);
        $("#"+p+"apply_discount_to").hide(200);
    }    
}

function apply_discount_to(name){
    var apply_discount_to_selected=jQuery("input:radio[name="+name+"]:checked").val();
    if (apply_discount_to_selected=="specific"){
        $("#"+name+"_specific").show(200);
    } else {
        $("#"+name+"_specific").hide(200);
    }
}

function category_restriction(name){
    var category_restriction_selected=jQuery("input:radio[name="+name+"]:checked").val();
        if (category_restriction_selected=="1"){
        $("#"+name+"_cr").show(200);
    } else {
        $("#"+name+"_cr").hide(200);
    }
}

function products_restriction(name){
    var products_restriction_selected=jQuery("input:radio[name="+name+"]:checked").val();
        if (products_restriction_selected=="1"){
        $("#"+name+"_pr").show(200);
    } else {
        $("#"+name+"_pr").hide(200);
    }
}

function manufacturers_restriction(name){
    var manufacturers_restriction_selected=jQuery("input:radio[name="+name+"]:checked").val();
        if (manufacturers_restriction_selected=="1"){
        $("#"+name+"_mr").show(200);
    } else {
        $("#"+name+"_mr").hide(200);
    }
}

function attributes_restriction(name){
    var attributes_restriction_selected=jQuery("input:radio[name="+name+"]:checked").val();
        if (attributes_restriction_selected=="1"){
        $("#"+name+"_mr").show(200);
    } else {
        $("#"+name+"_mr").hide(200);
    }
}

function ps14freeshipping(name,action){
    if (action==1){
        var products_free_shipping=jQuery("input:radio[name="+name+"]:checked").val();
            if (products_free_shipping=="1"){
            $(".ps14freeshipping").hide(200);
        } else {
            $(".ps14freeshipping").show(200);
        } 
    }
}