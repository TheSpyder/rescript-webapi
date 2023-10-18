open Webapi.Dom
open! KeyboardEvent

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

/* KeyboardEvent */
let altKey: bool = event->altKey
let code: string = event->code
let ctrlKey: bool = event->ctrlKey
let isComposing: bool = event->isComposing
let key: string = event->key
let locale: string = event->locale
let location: int = event->location
let metaKey: bool = event->metaKey
let repeat: bool = event->repeat
let shiftKey: bool = event->shiftKey
let getModifierState: bool = event->getModifierState(Alt)
