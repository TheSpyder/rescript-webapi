'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__Element = require("../../../src/Webapi/Dom/Webapi__Dom__Element.js");

var el = document.createElement("strong");

var el2 = document.createElement("small");

var $$event = new PointerEvent("my-event");

var assignedSlot = el.assignedSlot;

var attributes = el.attributes;

var classList = el.classList;

var className = el.className;

el.className = "my-class-name";

var clientHeight = el.clientHeight;

var clientLeft = el.clientLeft;

var clientTop = el.clientTop;

var clientWidth = el.clientWidth;

var id = el.id;

el.id = "my-id";

var innerHTML = el.innerHTML;

el.innerHTML = "<strong>stuff</strong>";

var localName = el.localName;

var namespaceURI = el.namespaceURI;

var nextElementSibling = el.nextElementSibling;

var outerHTML = el.outerHTML;

el.outerHTML = "<strong>stuff</strong>";

var prefix = el.prefix;

var previousElementSibling = el.previousElementSibling;

var scrollHeight = el.scrollHeight;

var scrollLeft = el.scrollLeft;

el.scrollLeft = 0.0;

var scrollTop = el.scrollTop;

el.scrollTop = 0.0;

var scrollWidth = el.scrollWidth;

var shadowRoot = el.shadowRoot;

var slot = el.slot;

el.slot = "<strong>stuff</strong>";

var tagName = el.tagName;

var attachShadow = el.attachShadow({
      mode: "open"
    });

var attachShadowOpen = el.attachShadow({ "mode": "open" });

var attachShadowClosed = el.attachShadow({ "mode": "closed" });

var animate = el.animate({
      transform: "translateT(0px)"
    }, {
      duration: 1000
    });

var closest = el.closest("input");

var getAttribute = el.getAttribute("href");

var getAttributeNS = el.getAttributeNS("http://...", "foo");

var getBoundingClientRect = el.getBoundingClientRect();

var clientRects = el.getClientRects();

var getClientRectsItem = el.getClientRects().item(0);

var getClientRectsArray = Array.prototype.slice.call(el.getClientRects());

var getElementsByClassName = el.getElementsByClassName("some-class-name");

var getElementsByTagName = el.getElementsByTagName("pre");

var getElementsByTagNameNS = el.getElementsByTagNameNS("http://...", "td");

var hasAttribute = el.hasAttribute("data-my-value");

var hasAttributeNS = el.hasAttributeNS("http://...", "foo");

var hasAttributes = el.hasAttributes();

var insertAdjacentElement = Webapi__Dom__Element.insertAdjacentElement(el, /* BeforeBegin */0, el2);

var insertAdjacentHTML = Webapi__Dom__Element.insertAdjacentHTML(el, /* AfterBegin */1, "<strong>text</strong>");

var insertAdjacentText = Webapi__Dom__Element.insertAdjacentText(el, /* AfterEnd */3, "text");

var matches = el.matches("input");

var querySelector = el.querySelector("input");

var querySelectorAll = el.querySelectorAll("input");

el.releasePointerCapture($$event.pointerId);

el.remove();

el.removeAttribute("href");

el.removeAttributeNS("http://...", "foo");

el.requestFullscreen();

el.requestPointerLock();

el.scrollIntoView();

el.scrollIntoView(true);

el.scrollIntoView({
      block: "end",
      behavior: "smooth"
    });

el.setAttribute("href", "http://...");

el.setAttributeNS("http://...", "foo", "bar");

el.setPointerCapture($$event.pointerId);

var assignedSlot$1 = (assignedSlot == null) ? undefined : Caml_option.some(assignedSlot);

var setClassName;

var setId;

var setInnerHTML;

var namespaceURI$1 = (namespaceURI == null) ? undefined : Caml_option.some(namespaceURI);

var nextElementSibling$1 = (nextElementSibling == null) ? undefined : Caml_option.some(nextElementSibling);

var setOuterHTML;

var prefix$1 = (prefix == null) ? undefined : Caml_option.some(prefix);

var previousElementSibling$1 = (previousElementSibling == null) ? undefined : Caml_option.some(previousElementSibling);

var setScrollLeft;

var setScrollTop;

var setSlot;

var closest$1 = (closest == null) ? undefined : Caml_option.some(closest);

var getAttribute$1 = (getAttribute == null) ? undefined : Caml_option.some(getAttribute);

var getAttributeNS$1 = (getAttributeNS == null) ? undefined : Caml_option.some(getAttributeNS);

var getClientRectsItem$1 = (getClientRectsItem == null) ? undefined : Caml_option.some(getClientRectsItem);

var querySelector$1 = (querySelector == null) ? undefined : Caml_option.some(querySelector);

var releasePointerCapture;

var remove;

var removeAttribute;

var removeAttributeNS;

var requestFullscreen;

var requestPointerLock;

var scrollIntoView;

var scrollIntoViewNoAlignToTop;

var scrollIntoViewWithOptions;

var setAttribute;

var setAttributeNS;

var setPointerCapture;

exports.el = el;
exports.el2 = el2;
exports.$$event = $$event;
exports.assignedSlot = assignedSlot$1;
exports.attributes = attributes;
exports.classList = classList;
exports.className = className;
exports.setClassName = setClassName;
exports.clientHeight = clientHeight;
exports.clientLeft = clientLeft;
exports.clientTop = clientTop;
exports.clientWidth = clientWidth;
exports.id = id;
exports.setId = setId;
exports.innerHTML = innerHTML;
exports.setInnerHTML = setInnerHTML;
exports.localName = localName;
exports.namespaceURI = namespaceURI$1;
exports.nextElementSibling = nextElementSibling$1;
exports.outerHTML = outerHTML;
exports.setOuterHTML = setOuterHTML;
exports.prefix = prefix$1;
exports.previousElementSibling = previousElementSibling$1;
exports.scrollHeight = scrollHeight;
exports.scrollLeft = scrollLeft;
exports.setScrollLeft = setScrollLeft;
exports.scrollTop = scrollTop;
exports.setScrollTop = setScrollTop;
exports.scrollWidth = scrollWidth;
exports.shadowRoot = shadowRoot;
exports.slot = slot;
exports.setSlot = setSlot;
exports.tagName = tagName;
exports.attachShadow = attachShadow;
exports.attachShadowOpen = attachShadowOpen;
exports.attachShadowClosed = attachShadowClosed;
exports.animate = animate;
exports.closest = closest$1;
exports.getAttribute = getAttribute$1;
exports.getAttributeNS = getAttributeNS$1;
exports.getBoundingClientRect = getBoundingClientRect;
exports.clientRects = clientRects;
exports.getClientRectsItem = getClientRectsItem$1;
exports.getClientRectsArray = getClientRectsArray;
exports.getElementsByClassName = getElementsByClassName;
exports.getElementsByTagName = getElementsByTagName;
exports.getElementsByTagNameNS = getElementsByTagNameNS;
exports.hasAttribute = hasAttribute;
exports.hasAttributeNS = hasAttributeNS;
exports.hasAttributes = hasAttributes;
exports.insertAdjacentElement = insertAdjacentElement;
exports.insertAdjacentHTML = insertAdjacentHTML;
exports.insertAdjacentText = insertAdjacentText;
exports.matches = matches;
exports.querySelector = querySelector$1;
exports.querySelectorAll = querySelectorAll;
exports.releasePointerCapture = releasePointerCapture;
exports.remove = remove;
exports.removeAttribute = removeAttribute;
exports.removeAttributeNS = removeAttributeNS;
exports.requestFullscreen = requestFullscreen;
exports.requestPointerLock = requestPointerLock;
exports.scrollIntoView = scrollIntoView;
exports.scrollIntoViewNoAlignToTop = scrollIntoViewNoAlignToTop;
exports.scrollIntoViewWithOptions = scrollIntoViewWithOptions;
exports.setAttribute = setAttribute;
exports.setAttributeNS = setAttributeNS;
exports.setPointerCapture = setPointerCapture;
/* el Not a pure module */
