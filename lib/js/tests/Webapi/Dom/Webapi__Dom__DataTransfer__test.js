'use strict';


var dataTransfer = new DataTransfer();

var dropEffect = dataTransfer.dropEffect;

dataTransfer.dropEffect = "copy";

var effectAllowed = dataTransfer.effectAllowed;

dataTransfer.effectAllowed = "linkMove";

var items = dataTransfer.items;

dataTransfer.setDragImage(document.createElement("div"), 10, 10);

var types = dataTransfer.types;

var data = dataTransfer.getData("text/plain");

dataTransfer.setData("text/plain", "text");

dataTransfer.clearData("text/plain");

dataTransfer.clearData();

var files = dataTransfer.files;

var dropEffectString = "copy";

var effectAllowedString = "linkMove";

exports.dataTransfer = dataTransfer;
exports.dropEffect = dropEffect;
exports.effectAllowed = effectAllowed;
exports.items = items;
exports.types = types;
exports.data = data;
exports.files = files;
exports.dropEffectString = dropEffectString;
exports.effectAllowedString = effectAllowedString;
/* dataTransfer Not a pure module */
