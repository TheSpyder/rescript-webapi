'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__ClipboardEvent = require("../../../src/Webapi/Dom/Webapi__Dom__ClipboardEvent.js");

var $$event = new ClipboardEvent("my-event");

Curry._1(Webapi__Dom__ClipboardEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
