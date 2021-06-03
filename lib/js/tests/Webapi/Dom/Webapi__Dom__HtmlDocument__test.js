'use strict';

var TestHelpers$Webapi = require("../../testHelpers.js");
var Webapi__Dom__Document$Webapi = require("../../../src/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__HtmlDocument$Webapi = require("../../../src/Dom/Webapi__Dom__HtmlDocument.js");

var el = document.createElement("strong");

var htmlDocument = TestHelpers$Webapi.unsafelyUnwrapOption(Webapi__Dom__Document$Webapi.asHtmlDocument(document));

htmlDocument.body = el;

htmlDocument.cookie = "foo=bar;reason=ml";

Webapi__Dom__HtmlDocument$Webapi.designMode(htmlDocument);

Webapi__Dom__HtmlDocument$Webapi.setDesignMode(htmlDocument, /* On */0);

Webapi__Dom__HtmlDocument$Webapi.dir(htmlDocument);

Webapi__Dom__HtmlDocument$Webapi.setDir(htmlDocument, /* Ltr */0);

htmlDocument.domain = "reason.ml";

htmlDocument.location = "http://reason.ml";

Webapi__Dom__HtmlDocument$Webapi.readyState(htmlDocument);

htmlDocument.title = "Reason: Rapid Expressive Systems Programming.";

htmlDocument.close();

Webapi__Dom__HtmlDocument$Webapi.execCommand(htmlDocument, "copy", false, undefined);

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
