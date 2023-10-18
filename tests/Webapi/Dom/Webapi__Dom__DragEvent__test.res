open Webapi.Dom
open DragEvent

let event: t = make("my-event")

/* Event */
let bubbles: bool = event->bubbles
let cancelable: bool = event->cancelable
let composed: bool = event->composed
let currentTarget: Dom.eventTarget = event->currentTarget
let defaultPrevented: bool = event->defaultPrevented
let eventPhase: EventPhase.t = event->eventPhase
let target: Dom.eventTarget = event->target
let timeStamp: float = event->timeStamp
let type_: string = event->type_
let isTrusted: bool = event->isTrusted

event->preventDefault
event->stopImmediatePropagation
event->stopPropagation

/* UIEvent */
let detail: int = event->detail
let view: Dom.window = event->view

/* MouseEvent */
let altKey: bool = event->altKey
let button: int = event->button
let buttons: int = event->buttons
let clientX: int = event->clientX
let clientY: int = event->clientY
let ctrlKey: bool = event->ctrlKey
let metaKey: bool = event->metaKey
let movementX: int = event->movementX
let movementY: int = event->movementY
let offsetX: int = event->offsetX
let offsetY: int = event->offsetY
let pageX: int = event->pageX
let pageY: int = event->pageY
let region: option<string> = event->region
let relatedTarget: option<Dom.eventTarget> = event->relatedTarget
let screenX: int = event->screenX
let screenY: int = event->screenY
let shiftKey: bool = event->shiftKey
let x: int = event->x
let y: int = event->y
let getModifierState: bool = event->getModifierState(Alt)

/* DragEvent */
let dataTransfer: Dom.dataTransfer = event->dataTransfer
