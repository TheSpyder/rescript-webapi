'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__StorageEvent = require("../../../src/Webapi/Dom/Webapi__Dom__StorageEvent.js");

var $$event = new StorageEvent("my-event");

Curry._1(Webapi__Dom__StorageEvent.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
