'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var TestHelpers = require("../../testHelpers.js");
var Webapi__Dom__Element = require("../../../src/Webapi/Dom/Webapi__Dom__Element.js");
var Webapi__Dom__HtmlElement = require("../../../src/Webapi/Dom/Webapi__Dom__HtmlElement.js");

var el = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Element.asHtmlElement(document.createElement("strong")));

var el2 = TestHelpers.unsafelyUnwrapOption(Webapi__Dom__Element.asHtmlElement(document.createElement("small")));

var $$event = document.createEvent("my-event");

var pointerEvent = new PointerEvent("my-event");

var accessKey = el.accessKey;

el.accessKey = "";

var accessKeyLabel = el.accessKeyLabel;

var contentEditable = Webapi__Dom__HtmlElement.contentEditable(el);

var setContentEditable = Webapi__Dom__HtmlElement.setContentEditable(el, /* Inherit */2);

var isContentEditable = el.isContentEditable;

var contextMenu = el.contextMenu;

el.contextMenu = el2;

var dataset = el.dataset;

var dir = Webapi__Dom__HtmlElement.dir(el);

var setDir = Webapi__Dom__HtmlElement.setDir(el, /* Rtl */1);

var draggable = el.draggable;

el.draggable = true;

var dropzone = el.dropzone;

var hidden = el.hidden;

el.hidden = true;

var itemScope = el.itemScope;

el.itemScope = true;

var itemType = el.itemType;

var itemId = el.itemId;

el.itemId = "my-id";

var itemRef = el.itemRef;

var itemProp = el.itemProp;

var itemValue = el.itemValue;

el.itemValue = {};

var lang = el.lang;

el.lang = "en";

var offsetHeight = el.offsetHeight;

var offsetLeft = el.offsetLeft;

var offsetParent = el.offsetParent;

var offsetTop = el.offsetTop;

var offsetWidth = el.offsetWidth;

var spellcheck = el.spellcheck;

el.spellcheck = true;

var style = el.style;

el.style = style;

var tabIndex = el.tabIndex;

el.tabIndex = 42;

var title = el.title;

el.title = "hovertext!";

var translate = el.translate;

el.translate = true;

el.blur();

el.click();

el.focus();

el.forceSpellCheck();

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

var insertAdjacentElement = Curry._3(Webapi__Dom__HtmlElement.insertAdjacentElement, el, /* BeforeBegin */0, el2);

var insertAdjacentHTML = Curry._3(Webapi__Dom__HtmlElement.insertAdjacentHTML, el, /* AfterBegin */1, "<strong>text</strong>");

var insertAdjacentText = Curry._3(Webapi__Dom__HtmlElement.insertAdjacentText, el, /* AfterEnd */3, "text");

var matches = el.matches("input");

var querySelector = el.querySelector("input");

var querySelectorAll = el.querySelectorAll("input");

el.releasePointerCapture(pointerEvent.pointerId);

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

el.setPointerCapture(pointerEvent.pointerId);

var setAccessKey;

var setContextMenu;

var setDraggable;

var setHidden;

var setItemScope;

var setItemId;

var setItemValue;

var setLang;

var offsetParent$1 = (offsetParent == null) ? undefined : Caml_option.some(offsetParent);

var setSpellcheck;

var setStyle;

var setTabIndex;

var setTitle;

var setTranslate;

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
exports.pointerEvent = pointerEvent;
exports.accessKey = accessKey;
exports.setAccessKey = setAccessKey;
exports.accessKeyLabel = accessKeyLabel;
exports.contentEditable = contentEditable;
exports.setContentEditable = setContentEditable;
exports.isContentEditable = isContentEditable;
exports.contextMenu = contextMenu;
exports.setContextMenu = setContextMenu;
exports.dataset = dataset;
exports.dir = dir;
exports.setDir = setDir;
exports.draggable = draggable;
exports.setDraggable = setDraggable;
exports.dropzone = dropzone;
exports.hidden = hidden;
exports.setHidden = setHidden;
exports.itemScope = itemScope;
exports.setItemScope = setItemScope;
exports.itemType = itemType;
exports.itemId = itemId;
exports.setItemId = setItemId;
exports.itemRef = itemRef;
exports.itemProp = itemProp;
exports.itemValue = itemValue;
exports.setItemValue = setItemValue;
exports.lang = lang;
exports.setLang = setLang;
exports.offsetHeight = offsetHeight;
exports.offsetLeft = offsetLeft;
exports.offsetParent = offsetParent$1;
exports.offsetTop = offsetTop;
exports.offsetWidth = offsetWidth;
exports.spellcheck = spellcheck;
exports.setSpellcheck = setSpellcheck;
exports.style = style;
exports.setStyle = setStyle;
exports.tabIndex = tabIndex;
exports.setTabIndex = setTabIndex;
exports.title = title;
exports.setTitle = setTitle;
exports.translate = translate;
exports.setTranslate = setTranslate;
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
