'use strict';


var node = document.createElement("strong");

var text = document.createTextNode("text");

var range = new StaticRange({
      startContainer: node,
      startOffset: 1,
      endContainer: text,
      endOffset: 1
    });

var collapsed = range.collapsed;

var endContainer = range.endContainer;

var endOffset = range.endOffset;

var startContainer = range.startContainer;

var startOffset = range.startOffset;

exports.node = node;
exports.text = text;
exports.range = range;
exports.collapsed = collapsed;
exports.endContainer = endContainer;
exports.endOffset = endOffset;
exports.startContainer = startContainer;
exports.startOffset = startOffset;
/* node Not a pure module */
