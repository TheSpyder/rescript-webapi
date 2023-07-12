'use strict';

var TestHelpers = require("../../testHelpers.js");
var Webapi__Dom__Document = require("../../../src/Webapi/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__HtmlDocument = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlDocument.js");

var el = document.createElement("strong");

var htmlDocument = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Document.asHtmlDocument(document));

var e = htmlDocument.activeElement;

if (!(e == null)) {
  console.log(e);
}

htmlDocument.body = el;

htmlDocument.cookie = "foo=bar;reason=ml";

Webapi__Dom__HtmlDocument.designMode(htmlDocument);

Webapi__Dom__HtmlDocument.setDesignMode(htmlDocument, "On");

Webapi__Dom__HtmlDocument.dir(htmlDocument);

Webapi__Dom__HtmlDocument.setDir(htmlDocument, "Ltr");

htmlDocument.domain = "reason.ml";

htmlDocument.location = "http://reason.ml";

Webapi__Dom__HtmlDocument.readyState(htmlDocument);

htmlDocument.title = "Reason: Rapid Expressive Systems Programming.";

htmlDocument.close();

Webapi__Dom__HtmlDocument.execCommand(htmlDocument, "copy", false, undefined);

htmlDocument.getElementsByName("angry-joe");

htmlDocument.getSelection();

htmlDocument.hasFocus();

htmlDocument.open();

htmlDocument.queryCommandEnabled("copy");

htmlDocument.queryCommandIndeterm("cut");

htmlDocument.queryCommandSupported("paste");

htmlDocument.queryCommandValue("fontName");

htmlDocument.write("Hello World!");

htmlDocument.writeln("Hello Newline!");

exports.el = el;
exports.htmlDocument = htmlDocument;
/* el Not a pure module */
