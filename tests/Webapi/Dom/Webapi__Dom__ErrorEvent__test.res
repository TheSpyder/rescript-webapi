open Webapi.Dom
open ErrorEvent

let event: t = make("my-event")

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

/* ErrorEvent */
let message: string = message(event)
let filename: string = filename(event)
let lineno: int = lineno(event)
let colno: int = colno(event)
let error: {..} = error(event)
