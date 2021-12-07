'use strict';

var Js_option = require("rescript/lib/js/js_option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");

var item = Js_option.getExn(new DataTransfer().items[0]);

var kind = item.kind;

var itemType = item.type;

item.getAsString(function (_str) {
      
    });

var file = item.getFile();

var file$1 = (file == null) ? undefined : Caml_option.some(file);

var kindString = "file";

exports.item = item;
exports.kind = kind;
exports.itemType = itemType;
exports.file = file$1;
exports.kindString = kindString;
/* item Not a pure module */
