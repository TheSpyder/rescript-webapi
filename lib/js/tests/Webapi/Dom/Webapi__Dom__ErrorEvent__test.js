'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__ErrorEvent = require("../../../src/Webapi/Dom/Webapi__Dom__ErrorEvent.js");

var $$event = new ErrorEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Curry._1(Webapi__Dom__ErrorEvent.eventPhase, $$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var message = $$event.message;

var filename = $$event.filename;

var lineno = $$event.lineno;

var colno = $$event.colno;

var error = $$event.error;

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
exports.message = message;
exports.filename = filename;
exports.lineno = lineno;
exports.colno = colno;
exports.error = error;
/* event Not a pure module */
