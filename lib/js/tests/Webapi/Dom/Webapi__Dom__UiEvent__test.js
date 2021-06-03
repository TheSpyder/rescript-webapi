'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__UiEvent$Webapi = require("../../../src/Dom/Webapi__Dom__UiEvent.js");

var $$event = new UIEvent("my-event");

Curry._1(Webapi__Dom__UiEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
