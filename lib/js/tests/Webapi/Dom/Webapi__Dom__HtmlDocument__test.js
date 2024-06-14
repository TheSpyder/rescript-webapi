'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var TestHelpers = require("../../testHelpers.js");
var Webapi__Dom__Types = require("../../../src/Webapi/Dom/Webapi__Dom__Types.js");
var Webapi__Dom__Document = require("../../../src/Webapi/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__NodeFilter = require("../../../src/Webapi/Dom/Webapi__Dom__NodeFilter.js");
var Webapi__Dom__HtmlDocument = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlDocument.js");

var el = document.createElement("strong");

var htmlDocument = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Document.asHtmlDocument(document));

var e = htmlDocument.activeElement;

if (!(e == null)) {
  console.log(e);
}

var activeElement = htmlDocument.activeElement;

var body = htmlDocument.body;

htmlDocument.body = el;

var cookie = htmlDocument.cookie;

htmlDocument.cookie = "foo=bar;reason=ml";

var defaultView = htmlDocument.defaultView;

var designMode = Webapi__Dom__HtmlDocument.designMode(htmlDocument);

var setDesignMode = Webapi__Dom__HtmlDocument.setDesignMode(htmlDocument, "On");

var dir = Webapi__Dom__HtmlDocument.dir(htmlDocument);

var setDir = Webapi__Dom__HtmlDocument.setDir(htmlDocument, "Ltr");

var domain = htmlDocument.domain;

htmlDocument.domain = "reason.ml";

var embeds = htmlDocument.embeds;

var forms = htmlDocument.forms;

var head = htmlDocument.head;

var images = htmlDocument.images;

var lastModified = htmlDocument.lastModified;

var links = htmlDocument.links;

var $$location = htmlDocument.location;

htmlDocument.location = "http://reason.ml";

var plugins = htmlDocument.plugins;

var readyState = Webapi__Dom__HtmlDocument.readyState(htmlDocument);

var referrer = htmlDocument.referrer;

var scripts = htmlDocument.scripts;

var title = htmlDocument.title;

htmlDocument.title = "Reason: Rapid Expressive Systems Programming.";

var url = htmlDocument.URL;

htmlDocument.close();

var execCommand = Webapi__Dom__HtmlDocument.execCommand(htmlDocument, "copy", false, undefined);

var getElementsByName = htmlDocument.getElementsByName("angry-joe");

var getSelection = htmlDocument.getSelection();

htmlDocument.open();

var queryCommandEnabled = htmlDocument.queryCommandEnabled("copy");

var queryCommandIndeterm = htmlDocument.queryCommandIndeterm("cut");

var queryCommandSupported = htmlDocument.queryCommandSupported("paste");

var queryCommandValue = htmlDocument.queryCommandValue("fontName");

htmlDocument.write("Hello World!");

htmlDocument.writeln("Hello Newline!");

var characterSet = htmlDocument.characterSet;

var compatMode = Webapi__Dom__HtmlDocument.compatMode(htmlDocument);

var doctype = htmlDocument.doctype;

var documentElement = htmlDocument.documentElement;

var documentURI = htmlDocument.documentURI;

var hidden = htmlDocument.hidden;

var implementation = htmlDocument.implementation;

var lastStyleSheetSet = htmlDocument.lastStyleSheetSet;

var pointerLockElement = htmlDocument.pointerLockElement;

var preferredStyleSheetSet = htmlDocument.preferredStyleSheetSet;

var scrollingElement = htmlDocument.scrollingElement;

var selectedStyleSheetSet = htmlDocument.selectedStyleSheetSet;

htmlDocument.selectedStyleSheetSet = "muh-stylesheet";

var styleSheets = htmlDocument.styleSheets;

var styleSheetSets = htmlDocument.styleSheetSets;

var visibilityState = Webapi__Dom__HtmlDocument.visibilityState(htmlDocument);

var adoptNode = htmlDocument.adoptNode(el);

var createAttribute = htmlDocument.createAttribute("data-foo");

var createAttributeNS = htmlDocument.createAttributeNS("http://...", "foo");

var createComment = htmlDocument.createComment("witty comment");

var createDocumentFragment = htmlDocument.createDocumentFragment();

var createElement = htmlDocument.createElement("div");

var elementWithOptions = htmlDocument.createElement("div", {});

var elementNS = htmlDocument.createElementNS("http://...", "foo");

var elementNsWithOptions = htmlDocument.createElementNS("http://...", "div", {});

var createEvent = htmlDocument.createEvent("MyCustomEvent");

var createNodeIterator = htmlDocument.createNodeIterator(el);

var createNodeIteratorWithWhatToShow = htmlDocument.createNodeIterator(el, Webapi__Dom__Types.WhatToShow._All);

var createNodeIteratorWithWhatToShowFilter = htmlDocument.createNodeIterator(el, Webapi__Dom__Types.WhatToShow.many({
          hd: Webapi__Dom__Types.WhatToShow._Element,
          tl: {
            hd: Webapi__Dom__Types.WhatToShow._Attribute,
            tl: /* [] */0
          }
        }), Webapi__Dom__NodeFilter.make(function (param) {
          return 0;
        }));

var createRange = htmlDocument.createRange();

var createTextNode = htmlDocument.createTextNode("Very reasonable!");

var createTreeWalker = htmlDocument.createTreeWalker(el);

var createTreeWalkerWithWhatToShow = htmlDocument.createTreeWalker(el, Webapi__Dom__Types.WhatToShow._All);

var createTreeWalkerWithWhatToShowFilter = htmlDocument.createTreeWalker(el, Webapi__Dom__Types.WhatToShow.many({
          hd: Webapi__Dom__Types.WhatToShow._Element,
          tl: {
            hd: Webapi__Dom__Types.WhatToShow._Attribute,
            tl: /* [] */0
          }
        }), Webapi__Dom__NodeFilter.make(function (param) {
          return 0;
        }));

var el$1 = htmlDocument.elementFromPoint(0, 0);

if (!(el$1 == null)) {
  console.log(el$1);
}

var elementsFromPoint = htmlDocument.elementsFromPoint(0, 0);

htmlDocument.enableStyleSheetsForSet("my-stylesheet-set");

htmlDocument.exitPointerLock();

var getAnimations = htmlDocument.getAnimations();

var getElementsByClassName = htmlDocument.getElementsByClassName("lstlisting");

var getElementsByTagName = htmlDocument.getElementsByTagName("code");

var getElementsByTagNameNS = htmlDocument.getElementsByTagNameNS("http://...", "foo");

var hasFocus = htmlDocument.hasFocus();

var importNode = htmlDocument.importNode(el);

var importNodeDeep = htmlDocument.importNode(el, true);

var getElementById = htmlDocument.getElementById("root");

var querySelector = htmlDocument.querySelector(".lstlisting");

var querySelectorAll = htmlDocument.querySelectorAll(".lstlisting");

var activeElement$1 = (activeElement == null) ? undefined : Caml_option.some(activeElement);

var body$1 = (body == null) ? undefined : Caml_option.some(body);

var setBody;

var setCookie;

var defaultView$1 = (defaultView == null) ? undefined : Caml_option.some(defaultView);

var domain$1 = (domain == null) ? undefined : Caml_option.some(domain);

var setDomain;

var setLocation;

var setTitle;

var pointerLockElement$1 = (pointerLockElement == null) ? undefined : Caml_option.some(pointerLockElement);

var scrollingElement$1 = (scrollingElement == null) ? undefined : Caml_option.some(scrollingElement);

var enableStyleSheetsForSet;

var exitPointerLock;

var getElementById$1 = (getElementById == null) ? undefined : Caml_option.some(getElementById);

var querySelector$1 = (querySelector == null) ? undefined : Caml_option.some(querySelector);

exports.el = el;
exports.htmlDocument = htmlDocument;
exports.activeElement = activeElement$1;
exports.body = body$1;
exports.setBody = setBody;
exports.cookie = cookie;
exports.setCookie = setCookie;
exports.defaultView = defaultView$1;
exports.designMode = designMode;
exports.setDesignMode = setDesignMode;
exports.dir = dir;
exports.setDir = setDir;
exports.domain = domain$1;
exports.setDomain = setDomain;
exports.embeds = embeds;
exports.forms = forms;
exports.head = head;
exports.images = images;
exports.lastModified = lastModified;
exports.links = links;
exports.$$location = $$location;
exports.setLocation = setLocation;
exports.plugins = plugins;
exports.readyState = readyState;
exports.referrer = referrer;
exports.scripts = scripts;
exports.title = title;
exports.setTitle = setTitle;
exports.url = url;
exports.execCommand = execCommand;
exports.getElementsByName = getElementsByName;
exports.getSelection = getSelection;
exports.queryCommandEnabled = queryCommandEnabled;
exports.queryCommandIndeterm = queryCommandIndeterm;
exports.queryCommandSupported = queryCommandSupported;
exports.queryCommandValue = queryCommandValue;
exports.characterSet = characterSet;
exports.compatMode = compatMode;
exports.doctype = doctype;
exports.documentElement = documentElement;
exports.documentURI = documentURI;
exports.hidden = hidden;
exports.implementation = implementation;
exports.lastStyleSheetSet = lastStyleSheetSet;
exports.pointerLockElement = pointerLockElement$1;
exports.preferredStyleSheetSet = preferredStyleSheetSet;
exports.scrollingElement = scrollingElement$1;
exports.selectedStyleSheetSet = selectedStyleSheetSet;
exports.styleSheets = styleSheets;
exports.styleSheetSets = styleSheetSets;
exports.visibilityState = visibilityState;
exports.adoptNode = adoptNode;
exports.createAttribute = createAttribute;
exports.createAttributeNS = createAttributeNS;
exports.createComment = createComment;
exports.createDocumentFragment = createDocumentFragment;
exports.createElement = createElement;
exports.elementWithOptions = elementWithOptions;
exports.elementNS = elementNS;
exports.elementNsWithOptions = elementNsWithOptions;
exports.createEvent = createEvent;
exports.createNodeIterator = createNodeIterator;
exports.createNodeIteratorWithWhatToShow = createNodeIteratorWithWhatToShow;
exports.createNodeIteratorWithWhatToShowFilter = createNodeIteratorWithWhatToShowFilter;
exports.createRange = createRange;
exports.createTextNode = createTextNode;
exports.createTreeWalker = createTreeWalker;
exports.createTreeWalkerWithWhatToShow = createTreeWalkerWithWhatToShow;
exports.createTreeWalkerWithWhatToShowFilter = createTreeWalkerWithWhatToShowFilter;
exports.elementsFromPoint = elementsFromPoint;
exports.enableStyleSheetsForSet = enableStyleSheetsForSet;
exports.exitPointerLock = exitPointerLock;
exports.getAnimations = getAnimations;
exports.getElementsByClassName = getElementsByClassName;
exports.getElementsByTagName = getElementsByTagName;
exports.getElementsByTagNameNS = getElementsByTagNameNS;
exports.hasFocus = hasFocus;
exports.importNode = importNode;
exports.importNodeDeep = importNodeDeep;
exports.getElementById = getElementById$1;
exports.querySelector = querySelector$1;
exports.querySelectorAll = querySelectorAll;
/* el Not a pure module */
