'use strict';

var Webapi__Dom__CustomEvent = require("../../../src/Webapi/Dom/Webapi__Dom__CustomEvent.js");

var $$event = new CustomEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Webapi__Dom__CustomEvent.eventPhase($$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

var Detail = {};

var EventWithDetail = Webapi__Dom__CustomEvent.Make(Detail);

var eventWithDetail = new CustomEvent("event-with-detail");

var eventWithOptions = new CustomEvent("event-with-detail", {
      detail: {
        component: "test-component"
      }
    });

var bubbles_withDetail = eventWithDetail.bubbles;

var cancelable_withDetail = eventWithDetail.cancelable;

var composed_withDetail = eventWithDetail.composed;

var currentTarget_withDetail = eventWithDetail.currentTarget;

var defaultPrevented_withDetail = eventWithDetail.defaultPrevented;

var eventPhase_withDetail = EventWithDetail.eventPhase(eventWithDetail);

var target_withDetail = eventWithDetail.target;

var timeStamp_withDetail = eventWithDetail.timeStamp;

var type_withDetail = eventWithDetail.type;

var isTrusted_withDetail = eventWithDetail.isTrusted;

var bubbles_withOptions = eventWithOptions.bubbles;

var cancelable_withOptions = eventWithOptions.cancelable;

var composed_withOptions = eventWithOptions.composed;

var currentTarget_withOptions = eventWithOptions.currentTarget;

var defaultPrevented_withOptions = eventWithOptions.defaultPrevented;

var eventPhase_withOptions = EventWithDetail.eventPhase(eventWithOptions);

var target_withOptions = eventWithOptions.target;

var timeStamp_withOptions = eventWithOptions.timeStamp;

var type__withOptions = eventWithOptions.type;

var isTrusted_withOptions = eventWithOptions.isTrusted;

eventWithDetail.preventDefault();

eventWithDetail.stopImmediatePropagation();

eventWithDetail.stopPropagation();

eventWithOptions.preventDefault();

eventWithOptions.stopImmediatePropagation();

eventWithOptions.stopPropagation();

var component = eventWithDetail.detail.component;

exports.$$event = $$event;
exports.bubbles = bubbles;
exports.cancelable = cancelable;
exports.composed = composed;
exports.currentTarget = currentTarget;
exports.defaultPrevented = defaultPrevented;
exports.eventPhase = eventPhase;
exports.target = target;
exports.timeStamp = timeStamp;
exports.type_ = type_;
exports.isTrusted = isTrusted;
exports.Detail = Detail;
exports.EventWithDetail = EventWithDetail;
exports.eventWithDetail = eventWithDetail;
exports.eventWithOptions = eventWithOptions;
exports.bubbles_withDetail = bubbles_withDetail;
exports.cancelable_withDetail = cancelable_withDetail;
exports.composed_withDetail = composed_withDetail;
exports.currentTarget_withDetail = currentTarget_withDetail;
exports.defaultPrevented_withDetail = defaultPrevented_withDetail;
exports.eventPhase_withDetail = eventPhase_withDetail;
exports.target_withDetail = target_withDetail;
exports.timeStamp_withDetail = timeStamp_withDetail;
exports.type_withDetail = type_withDetail;
exports.isTrusted_withDetail = isTrusted_withDetail;
exports.bubbles_withOptions = bubbles_withOptions;
exports.cancelable_withOptions = cancelable_withOptions;
exports.composed_withOptions = composed_withOptions;
exports.currentTarget_withOptions = currentTarget_withOptions;
exports.defaultPrevented_withOptions = defaultPrevented_withOptions;
exports.eventPhase_withOptions = eventPhase_withOptions;
exports.target_withOptions = target_withOptions;
exports.timeStamp_withOptions = timeStamp_withOptions;
exports.type__withOptions = type__withOptions;
exports.isTrusted_withOptions = isTrusted_withOptions;
exports.component = component;
/* event Not a pure module */
