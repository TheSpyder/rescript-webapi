'use strict';


var element = document.createElement("strong");

var text = document.createTextNode("text");

var range = new StaticRange({
      startContainer: element,
      startOffset: 1,
      endContainer: text,
      endOffset: 1
    });

var collapsed = range.collapsed;

var endContainer = range.endContainer;

var endOffset = range.endOffset;

var startContainer = range.startContainer;

var startOffset = range.startOffset;

exports.element = element;
exports.text = text;
exports.range = range;
exports.collapsed = collapsed;
exports.endContainer = endContainer;
exports.endOffset = endOffset;
exports.startContainer = startContainer;
exports.startOffset = startOffset;
/* element Not a pure module */
