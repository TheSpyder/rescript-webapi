'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__CloseEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CloseEvent.js");

var $$event = new CloseEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Curry._1(Webapi__Dom__CloseEvent.eventPhase, $$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var wasClean = $$event.wasClean;

var code = $$event.code;

var reason = $$event.reason;

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
exports.wasClean = wasClean;
exports.code = code;
exports.reason = reason;
/* event Not a pure module */
