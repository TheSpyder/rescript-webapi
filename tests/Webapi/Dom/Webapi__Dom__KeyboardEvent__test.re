open Webapi.Dom;
open! KeyboardEvent;

let event = make("my-event");

/* Event */
let _ = event->bubbles;
let _ = event->cancelable;
let _ = event->composed;
let _ = event->currentTarget;
let _ = event->defaultPrevented;
let _ = event->eventPhase;
let _ = event->target;
let _ = event->timeStamp;
let _ = event->type_;
let _ = event->isTrusted;

event->preventDefault;
event->stopImmediatePropagation;
event->stopPropagation;

/* UIEvent */
let _ = event->detail;
let _ = event->view;

/* KeyboardEvent */
let _ = event->altKey;
let _ = event->code;
let _ = event->ctrlKey;
let _ = event->isComposing;
let _ = event->key;
let _ = event->locale;
let _ = event->location;
let _ = event->metaKey;
let _ = event->repeat;
let _ = event->shiftKey;
let _ = event->getModifierState(Alt);
