'use strict';

var TestHelpers$Webapi = require("../../testHelpers.js");
var Webapi__Dom__Element$Webapi = require("../../../src/Dom/Webapi__Dom__Element.js");
var Webapi__Dom__HtmlElement$Webapi = require("../../../src/Dom/Webapi__Dom__HtmlElement.js");

var el = TestHelpers$Webapi.unsafelyUnwrapOption(Webapi__Dom__Element$Webapi.asHtmlElement(document.createElement("strong")));

var el2 = TestHelpers$Webapi.unsafelyUnwrapOption(Webapi__Dom__Element$Webapi.asHtmlElement(document.createElement("small")));

var $$event = document.createEvent("my-event");

el.accessKey = "";

Webapi__Dom__HtmlElement$Webapi.contentEditable(el);

Webapi__Dom__HtmlElement$Webapi.setContentEditable(el, /* Inherit */2);

el.contextMenu = el2;

Webapi__Dom__HtmlElement$Webapi.dir(el);

Webapi__Dom__HtmlElement$Webapi.setDir(el, /* Rtl */1);

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
