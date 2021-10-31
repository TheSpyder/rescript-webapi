'use strict';

var Webapi__Dom__Range = require("../../../src/Webapi/Dom/Webapi__Dom__Range.js");

var node = document.createElement("strong");

var range = new Range();

range.setStart(node, 0);

range.setEnd(node, 0);

range.setStartBefore(node);

range.setStartAfter(node);

range.setEndBefore(node);

range.setEndAfter(node);

range.selectNode(node);

range.selectNodeContents(node);

range.collapse();

range.collapse(true);

range.cloneContents();

range.deleteContents();

range.extractContents();

range.insertNode(node);

range.surroundContents(node);

range.compareBoundaryPoints(0, range);

range.cloneRange();

range.detach();

range.toString();

Webapi__Dom__Range.comparePoint(range, node, 0);

range.createContextualFragment("<strong>stuff</strong>");

range.getBoundingClientRect();

range.getClientRects().item(0);

Array.prototype.slice.call(range.getClientRects());

range.intersectsNode(node);

range.isPointInRange(node, 0);

exports.node = node;
exports.range = range;
/* node Not a pure module */
