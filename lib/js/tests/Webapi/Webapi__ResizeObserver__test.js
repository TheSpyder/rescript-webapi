'use strict';

var Caml_array = require("rescript/lib/js/caml_array.js");

var el = document.createElement("strong");

function handler(entries) {
  Caml_array.get(entries, 0);
}

var observer = new ResizeObserver(handler);

observer.observe(el);

observer.unobserve(el);

observer.disconnect();

exports.el = el;
exports.handler = handler;
exports.observer = observer;
/* el Not a pure module */
