open Webapi.Dom;
open MouseEvent;

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

/* MouseEvent */
let _ = event->altKey;
let _ = event->button;
let _ = event->buttons;
let _ = event->clientX;
let _ = event->clientY;
let _ = event->ctrlKey;
let _ = event->metaKey;
let _ = event->movementX;
let _ = event->movementY;
let _ = event->offsetX;
let _ = event->offsetY;
let _ = event->pageX;
let _ = event->pageY;
let _ = event->region;
let _ = event->relatedTarget;
let _ = event->screenX;
let _ = event->screenY;
let _ = event->shiftKey;
let _ = event->x;
let _ = event->y;
let _ = event->getModifierState(Alt);
