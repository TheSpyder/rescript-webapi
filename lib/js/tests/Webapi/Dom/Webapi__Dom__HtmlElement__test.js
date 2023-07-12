'use strict';

var TestHelpers = require("../../testHelpers.js");
var Webapi__Dom__Element = require("../../../src/Webapi/Dom/Webapi__Dom__Element.js");
var Webapi__Dom__HtmlElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlElement.js");

var el = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Element.asHtmlElement(document.createElement("strong")));

var el2 = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Element.asHtmlElement(document.createElement("small")));

var $$event = document.createEvent("my-event");

el.accessKey = "";

Webapi__Dom__HtmlElement.contentEditable(el);

Webapi__Dom__HtmlElement.setContentEditable(el, "Inherit");

el.contextMenu = el2;

Webapi__Dom__HtmlElement.dir(el);

Webapi__Dom__HtmlElement.setDir(el, "Rtl");

el.draggable = true;

el.hidden = true;

el.itemScope = true;

el.itemId = "my-id";

el.itemValue = {};

el.lang = "en";

el.spellcheck = true;

el.tabIndex = 42;

el.title = "hovertext!";

el.translate = true;

el.blur();

el.click();

el.focus();

el.forceSpellCheck();

exports.el = el;
exports.el2 = el2;
exports.$$event = $$event;
/* el Not a pure module */
