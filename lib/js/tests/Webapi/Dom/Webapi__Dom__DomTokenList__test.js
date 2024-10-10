'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");

var tlist = document.createElement("div").classList;

var length = tlist.length;

var item = tlist.item(3);

tlist.add("my-class");

tlist.add("my-class", "my-other-class");

var contains = tlist.contains("my-class");

tlist.forEach(function (item, param) {
      console.log(item);
    });

tlist.remove("my-class");

tlist.remove("my-class", "my-other-class");

tlist.replace("my-class", "my-other-class");

var supports = tlist.supports("my-class");

var toggle = tlist.toggle("my-class");

var toggleForced = tlist.toggle("my-class", false);

var toString = tlist.toString();

var value = tlist.value;

tlist.value = "foo";

var item$1 = (item == null) ? undefined : Caml_option.some(item);

var setValue;

exports.tlist = tlist;
exports.length = length;
exports.item = item$1;
exports.contains = contains;
exports.supports = supports;
exports.toggle = toggle;
exports.toggleForced = toggleForced;
exports.toString = toString;
exports.value = value;
exports.setValue = setValue;
/* tlist Not a pure module */
