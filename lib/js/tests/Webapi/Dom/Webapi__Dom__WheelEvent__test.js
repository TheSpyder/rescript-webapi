'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__WheelEvent = require("../../../src/Webapi/Dom/Webapi__Dom__WheelEvent.js");

var $$event = new WheelEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Curry._1(Webapi__Dom__WheelEvent.eventPhase, $$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var detail = $$event.detail;

var view = $$event.view;

var clientX = $$event.clientX;

var deltaX = $$event.deltaX;

var deltaY = $$event.deltaY;

var deltaZ = $$event.deltaZ;

var deltaMode = Webapi__Dom__WheelEvent.deltaMode($$event);

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
exports.clientX = clientX;
exports.deltaX = deltaX;
exports.deltaY = deltaY;
exports.deltaZ = deltaZ;
exports.deltaMode = deltaMode;
/* event Not a pure module */
