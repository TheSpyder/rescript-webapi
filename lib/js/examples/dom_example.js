'use strict';

var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__Element = require("../src/Webapi/Dom/Webapi__Dom__Element.js");
var Webapi__Dom__Document = require("../src/Webapi/Dom/Webapi__Dom__Document.js");

function unwrapUnsafely(x) {
  if (x !== undefined) {
    return Caml_option.valFromOption(x);
  }
  throw {
        RE_EXN_ID: "Invalid_argument",
        _1: "Passed `None` to unwrapUnsafely",
        Error: new Error()
      };
}

document.createElement("div").className;

Belt_Option.map(Caml_option.nullable_to_opt(document.createElement("div").nextElementSibling), (function (prim) {
        return prim.innerText;
      }));

Belt_Option.map(Caml_option.nullable_to_opt(document.createElement("div").parentElement), (function (prim) {
        return prim.innerText;
      }));

var el = unwrapUnsafely(Webapi__Dom__Element.asHtmlElement(document.createElement("div")));

Belt_Option.map(Belt_Option.flatMap(Webapi__Dom__Document.asHtmlDocument(document), (function (prim) {
            return Caml_option.nullable_to_opt(prim.body);
          })), (function (body) {
        body.appendChild(el);
      }));

document.createElement("div").addEventListener("mousemove", (function (e) {
        console.log([
              e.screenX,
              e.screenY
            ]);
      }));

function handleClick(param) {
  console.log("clicked");
}

window.addEventListener("click", handleClick);

window.addEventListener("click", handleClick, {
      passive: true,
      once: true,
      capture: false
    });

window.addEventListener("click", handleClick, true);

window.removeEventListener("click", handleClick);

window.removeEventListener("click", handleClick, {
      passive: true,
      capture: false
    });

window.removeEventListener("click", handleClick, true);

exports.unwrapUnsafely = unwrapUnsafely;
exports.el = el;
/*  Not a pure module */
