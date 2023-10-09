open Webapi.Dom
open TouchEvent

let event = make("my-event")

/* Event */
let bubbles: bool = bubbles(event)
let cancelable: bool = cancelable(event)
let composed: bool = composed(event)
let currentTarget: Dom.eventTarget = currentTarget(event)
let defaultPrevented: bool = defaultPrevented(event)
let eventPhase: EventPhase.t = eventPhase(event)
let target: Dom.eventTarget = target(event)
let timeStamp: float = timeStamp(event)
let type_: string = type_(event)
let isTrusted: bool = isTrusted(event)

preventDefault(event)
stopImmediatePropagation(event)
stopPropagation(event)

/* UIEvent */
let _ = detail(event)
let _ = view(event)

/* TouchEvent */
let _ = altKey(event)
let _ = changedTouches(event)
let _ = ctrlKey(event)
let _ = metaKey(event)
let _ = shiftKey(event)
let _ = targetTouches(event)
let _ = touches(event)
