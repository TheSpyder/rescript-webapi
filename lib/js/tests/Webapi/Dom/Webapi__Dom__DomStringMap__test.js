'use strict';

var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__Element = require("../../../src/Webapi/Dom/Webapi__Dom__Element.js");
var Webapi__Dom__DomStringMap = require("../../../src/Webapi/Dom/Webapi__Dom__DomStringMap.js");

var dataset = (function (__x) {
      return Belt_Option.map(__x, (function (prim) {
                    return prim.dataset;
                  }));
    })(Webapi__Dom__Element.asHtmlElement(document.createElement("div")));

if (dataset !== undefined) {
  var dataset$1 = Caml_option.valFromOption(dataset);
  dataset$1["fooKey"] = "barValue";
  Webapi__Dom__DomStringMap.unsafeDeleteKey(dataset$1, "fooKey");
}

exports.dataset = dataset;
/* dataset Not a pure module */
