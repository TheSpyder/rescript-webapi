'use strict';

var Webapi__Dom__KeyboardEvent = require("../../../src/Webapi/Dom/Webapi__Dom__KeyboardEvent.js");

var $$event = new KeyboardEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Webapi__Dom__KeyboardEvent.eventPhase($$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var detail = $$event.detail;

var view = $$event.view;

var altKey = $$event.altKey;

var code = $$event.code;

var ctrlKey = $$event.ctrlKey;

var isComposing = $$event.isComposing;

var key = $$event.key;

var locale = $$event.locale;

var $$location = $$event.location;

var metaKey = $$event.metaKey;

var repeat = $$event.repeat;

var shiftKey = $$event.shiftKey;

var getModifierState = Webapi__Dom__KeyboardEvent.getModifierState($$event, "Alt");

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
exports.altKey = altKey;
exports.code = code;
exports.ctrlKey = ctrlKey;
exports.isComposing = isComposing;
exports.key = key;
exports.locale = locale;
exports.$$location = $$location;
exports.metaKey = metaKey;
exports.repeat = repeat;
exports.shiftKey = shiftKey;
exports.getModifierState = getModifierState;
/* event Not a pure module */
