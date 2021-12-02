'use strict';


var items = new DataTransfer().items;

var length = items.length;

var item = items[1];

items.add("text/plain", "text");

items.remove(10);

items.clear();

exports.items = items;
exports.length = length;
exports.item = item;
/* items Not a pure module */
