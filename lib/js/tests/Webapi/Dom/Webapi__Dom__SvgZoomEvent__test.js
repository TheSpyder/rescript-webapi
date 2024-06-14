'use strict';

var Webapi__Dom__SvgZoomEvent = require("../../../src/Webapi/Dom/Webapi__Dom__SvgZoomEvent.js");

var $$event = new SVGZoomEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Webapi__Dom__SvgZoomEvent.eventPhase($$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var detail = $$event.detail;

var view = $$event.view;

var zoomRectScreen = $$event.zoomRectScreen;

var previousScale = $$event.previousScale;

var previousTranslate = $$event.previousTranslate;

var newScale = $$event.newScale;

var newTranslate = $$event.newTranslate;

exports.$$event = $$event;
exports.bubbles = bubbles;
exports.cancelable = cancelable;
exports.composed = composed;
exports.currentTarget = currentTarget;
exports.defaultPrevented = defaultPrevented;
exports.eventPhase = eventPhase;
exports.target = target;
exports.timeStamp = timeStamp;
exports.type_ = type_;
exports.isTrusted = isTrusted;
exports.detail = detail;
exports.view = view;
exports.zoomRectScreen = zoomRectScreen;
exports.previousScale = previousScale;
exports.previousTranslate = previousTranslate;
exports.newScale = newScale;
exports.newTranslate = newTranslate;
/* event Not a pure module */
