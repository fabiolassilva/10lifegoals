/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
    $(".abre_coment").click(function(){
        $(this).siblings("#comentarios").toggle("slow");
    });

$(".abre_respostas").click(function(){
    $(this).siblings("#respostas").toggle("slow");
});

//limpar campos
$("input:text").focu(function(){
    if($(this).val() == $(this)[0].defaultValue){
        $(this).removClass("campo");
        $(this).val('');
    }
}).blur(function(){
   if($(this).val()=="" || $(this).val()==" "){
       $(this).val($(this)[0].defaulValue);
       $(this).addClass("campo");
   } 
 });

});