'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__DragEvent = require("../../../src/Webapi/Dom/Webapi__Dom__DragEvent.js");

var $$event = new DragEvent("my-event");

Curry._1(Webapi__Dom__DragEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Curry._2(Webapi__Dom__DragEvent.getModifierState, $$event, /* Alt */0);

exports.$$event = $$event;
/* event Not a pure module */
