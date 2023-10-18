'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__Types = require("../../../src/Webapi/Dom/Webapi__Dom__Types.js");
var Webapi__Dom__Document = require("../../../src/Webapi/Dom/Webapi__Dom__Document.js");
var Webapi__Dom__NodeFilter = require("../../../src/Webapi/Dom/Webapi__Dom__NodeFilter.js");

var el = document.createElement("strong");

var e = document.activeElement;

if (!(e == null)) {
  console.log(e);
}

var characterSet = document.characterSet;

var compatMode = Webapi__Dom__Document.compatMode(document);

var doctype = document.doctype;

var documentElement = document.documentElement;

var documentURI = document.documentURI;

var hidden = document.hidden;

var implementation = document.implementation;

var lastStyleSheetSet = document.lastStyleSheetSet;

var pointerLockElement = document.pointerLockElement;

var preferredStyleSheetSet = document.preferredStyleSheetSet;

var scrollingElement = document.scrollingElement;

var selectedStyleSheetSet = document.selectedStyleSheetSet;

document.selectedStyleSheetSet = "muh-stylesheet";

var styleSheets = document.styleSheets;

var styleSheetSets = document.styleSheetSets;

var visibilityState = Webapi__Dom__Document.visibilityState(document);

var adoptNode = document.adoptNode(el);

var createAttribute = document.createAttribute("data-foo");

var createAttributeNS = document.createAttributeNS("http://...", "foo");

var createComment = document.createComment("witty comment");

var createDocumentFragment = document.createDocumentFragment();

var createElement = document.createElement("div");

var elementWithOptions = document.createElement("div", {});

var elementNS = document.createElementNS("http://...", "foo");

var elementNsWithOptions = document.createElementNS("http://...", "div", {});

var createEvent = document.createEvent("MyCustomEvent");

var createNodeIterator = document.createNodeIterator(el);

var createNodeIteratorWithWhatToShow = document.createNodeIterator(el, Webapi__Dom__Types.WhatToShow._All);

var createNodeIteratorWithWhatToShowFilter = document.createNodeIterator(el, Webapi__Dom__Types.WhatToShow.many({
          hd: Webapi__Dom__Types.WhatToShow._Element,
          tl: {
            hd: Webapi__Dom__Types.WhatToShow._Attribute,
            tl: /* [] */0
          }
        }), Webapi__Dom__NodeFilter.make(function (param) {
          return 0;
        }));

var createRange = document.createRange();

var createTextNode = document.createTextNode("Very reasonable!");

var createTreeWalker = document.createTreeWalker(el);

var createTreeWalkerWithWhatToShow = document.createTreeWalker(el, Webapi__Dom__Types.WhatToShow._All);

var createTreeWalkerWithWhatToShowFilter = document.createTreeWalker(el, Webapi__Dom__Types.WhatToShow.many({
          hd: Webapi__Dom__Types.WhatToShow._Element,
          tl: {
            hd: Webapi__Dom__Types.WhatToShow._Attribute,
            tl: /* [] */0
          }
        }), Webapi__Dom__NodeFilter.make(function (param) {
          return 0;
        }));

var el$1 = document.elementFromPoint(0, 0);

if (!(el$1 == null)) {
  console.log(el$1);
}

var elementsFromPoint = document.elementsFromPoint(0, 0);

document.enableStyleSheetsForSet("my-stylesheet-set");

document.exitPointerLock();

var getAnimations = document.getAnimations();

var getElementsByClassName = document.getElementsByClassName("lstlisting");

var getElementsByTagName = document.getElementsByTagName("code");

var getElementsByTagNameNS = document.getElementsByTagNameNS("http://...", "foo");

var hasFocus = document.hasFocus();

var importNode = document.importNode(el);

var importNodeDeep = document.importNode(el, true);

var getElementById = document.getElementById("root");

var querySelector = document.querySelector(".lstlisting");

var querySelectorAll = document.querySelectorAll(".lstlisting");

var pointerLockElement$1 = (pointerLockElement == null) ? undefined : Caml_option.some(pointerLockElement);

var scrollingElement$1 = (scrollingElement == null) ? undefined : Caml_option.some(scrollingElement);

var enableStyleSheetsForSet;

var exitPointerLock;

var getElementById$1 = (getElementById == null) ? undefined : Caml_option.some(getElementById);

var querySelector$1 = (querySelector == null) ? undefined : Caml_option.some(querySelector);

exports.el = el;
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
