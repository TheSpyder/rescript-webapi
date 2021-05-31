'use strict';

var Webapi__Dom__Event = require("../../../src/Webapi/Dom/Webapi__Dom__Event.js");

var $$event = new Event("my-event");

Webapi__Dom__Event.eventPhase($$event);

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

exports.$$event = $$event;
/* event Not a pure module */
