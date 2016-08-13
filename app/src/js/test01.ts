/// <reference path="./../../typings/globals/jquery/index.d.ts" />
function test() {
    let hoge = $(".test").val();
    console.log(hoge);
}

$(function(){
    console.log("11111");
    test();
});
