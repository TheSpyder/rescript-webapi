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
let detail: int = detail(event)
let view: Dom.window = view(event)

/* TouchEvent */
let altKey: bool = altKey(event)
let changedTouches: touchList = changedTouches(event)
let ctrlKey: bool = ctrlKey(event)
let metaKey: bool = metaKey(event)
let shiftKey: bool = shiftKey(event)
let targetTouches: touchList = targetTouches(event)
let touches: touchList = touches(event)
