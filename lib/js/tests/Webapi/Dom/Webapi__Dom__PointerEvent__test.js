'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__PointerEvent$Webapi = require("../../../src/Dom/Webapi__Dom__PointerEvent.js");

var $$event = new PointerEvent("my-event");

Curry._1(Webapi__Dom__PointerEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Curry._2(Webapi__Dom__PointerEvent$Webapi.getModifierState, $$event, /* Alt */0);

Webapi__Dom__PointerEvent$Webapi.pointerType($$event);

exports.$$event = $$event;
/* event Not a pure module */
