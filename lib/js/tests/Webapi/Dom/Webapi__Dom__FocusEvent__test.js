'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__FocusEvent = require("../../../src/Webapi/Dom/Webapi__Dom__FocusEvent.js");

var $$event = new FocusEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Webapi__Dom__FocusEvent.eventPhase($$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var detail = $$event.detail;

var view = $$event.view;

var relatedTarget = $$event.relatedTarget;

var relatedTarget$1 = (relatedTarget == null) ? undefined : Caml_option.some(relatedTarget);

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
exports.relatedTarget = relatedTarget$1;
/* event Not a pure module */
