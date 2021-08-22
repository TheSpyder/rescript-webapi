'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__UiEvent = require("../../../src/Webapi/Dom/Webapi__Dom__UiEvent.js");

var $$event = new UIEvent("my-event");

Curry._1(Webapi__Dom__UiEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
