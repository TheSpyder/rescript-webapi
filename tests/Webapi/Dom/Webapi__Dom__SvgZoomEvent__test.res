open Webapi.Dom
open SvgZoomEvent

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

/* SvgZoomEvent */
let zoomRectScreen: Dom.svgRect = zoomRectScreen(event)
let previousScale: float = previousScale(event)
let previousTranslate: Dom.svgPoint = previousTranslate(event)
let newScale: float = newScale(event)
let newTranslate: Dom.svgPoint = newTranslate(event)
