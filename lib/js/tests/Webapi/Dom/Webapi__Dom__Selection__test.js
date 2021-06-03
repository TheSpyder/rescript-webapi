'use strict';

var TestHelpers$Webapi = require("../../testHelpers.js");
var Webapi__Dom__Document$Webapi = require("../../../src/Dom/Webapi__Dom__Document.js");

var node = document.createElement("strong");

var sel = TestHelpers$Webapi.unsafelyUnwrapOption(Webapi__Dom__Document$Webapi.asHtmlDocument(document)).getSelection();

var range = new Range();

sel.getRangeAt(0);

sel.collapse(node, 0);

sel.extend(node, 0);

sel.collapseToStart();

sel.collapseToEnd();

sel.selectAllChildren(node);

sel.addRange(range);

sel.removeRange(range);

sel.removeAllRanges();

sel.deleteFromDocument();

sel.setBaseAndExtent(node, 0, node, 0);

sel.toString();

sel.containsNode(node, false);

sel.containsNode(node, true);

exports.node = node;
exports.sel = sel;
exports.range = range;
/* node Not a pure module */
