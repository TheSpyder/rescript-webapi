'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__MouseEvent$Webapi = require("../../../src/Dom/Webapi__Dom__MouseEvent.js");

var $$event = new MouseEvent("my-event");

Curry._1(Webapi__Dom__MouseEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

Webapi__Dom__MouseEvent$Webapi.getModifierState($$event, /* Alt */0);

exports.$$event = $$event;
/* event Not a pure module */
