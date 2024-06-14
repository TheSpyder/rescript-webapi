'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Webapi__Dom__DragEvent = require("../../../src/Webapi/Dom/Webapi__Dom__DragEvent.js");

var $$event = new DragEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Webapi__Dom__DragEvent.eventPhase($$event);

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

var button = $$event.button;

var buttons = $$event.buttons;

var clientX = $$event.clientX;

var clientY = $$event.clientY;

var ctrlKey = $$event.ctrlKey;

var metaKey = $$event.metaKey;

var movementX = $$event.movementX;

var movementY = $$event.movementY;

var offsetX = $$event.offsetX;

var offsetY = $$event.offsetY;

var pageX = $$event.pageX;

var pageY = $$event.pageY;

var region = $$event.region;

var relatedTarget = $$event.relatedTarget;

var screenX = $$event.screenX;

var screenY = $$event.screenY;

var shiftKey = $$event.shiftKey;

var x = $$event.x;

var y = $$event.y;

var getModifierState = Webapi__Dom__DragEvent.getModifierState($$event, "Alt");

var dataTransfer = $$event.dataTransfer;

var region$1 = (region == null) ? undefined : Caml_option.some(region);

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
exports.altKey = altKey;
exports.button = button;
exports.buttons = buttons;
exports.clientX = clientX;
exports.clientY = clientY;
exports.ctrlKey = ctrlKey;
exports.metaKey = metaKey;
exports.movementX = movementX;
exports.movementY = movementY;
exports.offsetX = offsetX;
exports.offsetY = offsetY;
exports.pageX = pageX;
exports.pageY = pageY;
exports.region = region$1;
exports.relatedTarget = relatedTarget$1;
exports.screenX = screenX;
exports.screenY = screenY;
exports.shiftKey = shiftKey;
exports.x = x;
exports.y = y;
exports.getModifierState = getModifierState;
exports.dataTransfer = dataTransfer;
/* event Not a pure module */
