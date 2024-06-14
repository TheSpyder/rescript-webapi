'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__HtmlInputElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlInputElement.js");

var input = Webapi__Dom__HtmlInputElement.ofElement(document.body);

if (input !== undefined) {
  var input$1 = Caml_option.valFromOption(input);
  input$1.focus();
  input$1.select();
}

/* input Not a pure module */
