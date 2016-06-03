/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){

    $('.chat-list li').hover(
        function(){
            $(this).css('color','red');
        },
        function(){
            $(this).css('color','white');
        }
    );
});
