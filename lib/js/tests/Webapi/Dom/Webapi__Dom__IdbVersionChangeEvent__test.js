'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var Webapi__Dom__IdbVersionChangeEvent$Webapi = require("../../../src/Dom/Webapi__Dom__IdbVersionChangeEvent.js");

var $$event = new IDBVersionChangeEvent("my-event");

Curry._1(Webapi__Dom__IdbVersionChangeEvent$Webapi.eventPhase, $$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
