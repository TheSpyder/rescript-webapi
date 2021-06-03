'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__CloseEvent$Webapi = require("../../../src/Dom/Webapi__Dom__CloseEvent.js");

var $$event = new CloseEvent("my-event");

Curry._1(Webapi__Dom__CloseEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
