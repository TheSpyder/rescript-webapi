'use strict';


var node = document.createElement("strong");

var text = document.createTextNode("text");

var range = new StaticRange({
      startContainer: node,
      startOffset: 1,
      endContainer: text,
      endOffset: 1
    });

exports.node = node;
exports.text = text;
exports.range = range;
/* node Not a pure module */
