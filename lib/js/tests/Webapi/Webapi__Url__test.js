'use strict';


var params = new URLSearchParams("key1=value1&key2=value2");

params.forEach(function (prim0, prim1) {
      console.log(prim0, prim1);
      
    });

var test_entries = Array.from(params.entries());

exports.params = params;
exports.test_entries = test_entries;
/* params Not a pure module */
