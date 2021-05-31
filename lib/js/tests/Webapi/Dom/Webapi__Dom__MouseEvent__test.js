'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__MouseEvent = require("../../../src/Webapi/Dom/Webapi__Dom__MouseEvent.js");

var $$event = new MouseEvent("my-event");

Curry._1(Webapi__Dom__MouseEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Webapi__Dom__MouseEvent.getModifierState(/* Alt */0, $$event);

exports.$$event = $$event;
/* event Not a pure module */
