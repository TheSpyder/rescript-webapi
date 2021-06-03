'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__BeforeUnloadEvent$Webapi = require("../../../src/Dom/Webapi__Dom__BeforeUnloadEvent.js");

var $$event = new BeforeUnloadEvent("my-event");

Curry._1(Webapi__Dom__BeforeUnloadEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
