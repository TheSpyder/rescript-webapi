'use strict';


var dataTransfer = new DataTransfer();

var dropEffect = dataTransfer.dropEffect;

var effectAllowed = dataTransfer.effectAllowed;

var items = dataTransfer.items;

dataTransfer.setDragImage(document.createElement("div"), 10, 10);

exports.dataTransfer = dataTransfer;
exports.dropEffect = dropEffect;
exports.effectAllowed = effectAllowed;
exports.items = items;
/* dataTransfer Not a pure module */
