'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");

var items = new DataTransfer().items;

var length = items.length;

var item = items[1];

var addedString = items.add("text", "text/plain");

items.remove(10);

items.clear();

var addedString$1 = (addedString == null) ? undefined : Caml_option.some(addedString);

exports.items = items;
exports.length = length;
exports.item = item;
exports.addedString = addedString$1;
/* items Not a pure module */
