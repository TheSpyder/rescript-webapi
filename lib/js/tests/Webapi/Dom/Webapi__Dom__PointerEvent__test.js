'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__PointerEvent = require("../../../src/Webapi/Dom/Webapi__Dom__PointerEvent.js");

var $$event = new PointerEvent("my-event");

Curry._1(Webapi__Dom__PointerEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Curry._2(Webapi__Dom__PointerEvent.getModifierState, $$event, /* Alt */0);

Webapi__Dom__PointerEvent.pointerType($$event);

exports.$$event = $$event;
/* event Not a pure module */
