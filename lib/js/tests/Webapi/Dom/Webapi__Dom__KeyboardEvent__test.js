'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__KeyboardEvent = require("../../../src/Webapi/Dom/Webapi__Dom__KeyboardEvent.js");

var $$event = new KeyboardEvent("my-event");

Curry._1(Webapi__Dom__KeyboardEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Webapi__Dom__KeyboardEvent.getModifierState(/* Alt */0, $$event);

exports.$$event = $$event;
/* event Not a pure module */
