'use strict';

var Js_array = require("rescript/lib/js/js_array.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var TestHelpers = require("../testHelpers.js");
var Webapi__Dom__Document = require("../../src/Webapi/Dom/Webapi__Dom__Document.js");

var el = document.createElement("div");

var body = TestHelpers.unsafelyUnwrapOption(Belt_Option.flatMap(Webapi__Dom__Document.asHtmlDocument(document), (function (prim) {
            return Caml_option.nullable_to_opt(prim.body);
          })));

el.innerText = "Hello There";

el.setAttribute("style", "margin-top: 800px; margin-bottom: 800px");

body.appendChild(el);

function handler(entries, observer) {
  Js_array.forEach((function (entry) {
          console.log(entry.time);
          console.log(entry.rootBounds);
          console.log(entry.boundingClientRect);
          console.log(entry.intersectionRect);
          console.log(entry.isIntersecting);
          console.log(entry.intersectionRatio);
          console.log(entry.target);
        }), entries);
  observer.unobserve(el);
}

var observer = new IntersectionObserver(handler);

observer.observe(el);

observer.unobserve(el);

observer.observe(el);

observer.disconnect();

exports.el = el;
exports.body = body;
exports.handler = handler;
exports.observer = observer;
/* el Not a pure module */
