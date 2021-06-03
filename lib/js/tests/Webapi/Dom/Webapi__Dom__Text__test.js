'use strict';

var Webapi__Dom__Text$Webapi = require("../../../src/Dom/Webapi__Dom__Text.js");

var node = document.createTextNode("text");

var text = Webapi__Dom__Text$Webapi.ofNode(node);

exports.node = node;
exports.text = text;
/* node Not a pure module */
