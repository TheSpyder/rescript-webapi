open Webapi.Dom
open CustomEvent

let event = make("my-event")

/* Event */
let _ = bubbles(event)
let _ = cancelable(event)
let _ = composed(event)
let _ = currentTarget(event)
let _ = defaultPrevented(event)
let _ = eventPhase(event)
let _ = target(event)
let _ = timeStamp(event)
let _ = type_(event)
let _ = isTrusted(event)

preventDefault(event)
stopImmediatePropagation(event)
stopPropagation(event)

/* Event with detail */
module Detail = {
  type t = {component: string}
}

module EventWithDetail = Make(Detail)
let eventWithDetail = EventWithDetail.make("event-with-detail")
let eventWithOptions = EventWithDetail.makeWithOptions(
  "event-with-detail",
  {component: "test-component"},
)

/* Event */
let _ = EventWithDetail.bubbles(eventWithDetail)
let _ = EventWithDetail.cancelable(eventWithDetail)
let _ = EventWithDetail.composed(eventWithDetail)
let _ = EventWithDetail.currentTarget(eventWithDetail)
let _ = EventWithDetail.defaultPrevented(eventWithDetail)
let _ = EventWithDetail.eventPhase(eventWithDetail)
let _ = EventWithDetail.target(eventWithDetail)
let _ = EventWithDetail.timeStamp(eventWithDetail)
let _ = EventWithDetail.type_(eventWithDetail)
let _ = EventWithDetail.isTrusted(eventWithDetail)

let _ = EventWithDetail.bubbles(eventWithOptions)
let _ = EventWithDetail.cancelable(eventWithOptions)
let _ = EventWithDetail.composed(eventWithOptions)
let _ = EventWithDetail.currentTarget(eventWithOptions)
let _ = EventWithDetail.defaultPrevented(eventWithOptions)
let _ = EventWithDetail.eventPhase(eventWithOptions)
let _ = EventWithDetail.target(eventWithOptions)
let _ = EventWithDetail.timeStamp(eventWithOptions)
let _ = EventWithDetail.type_(eventWithOptions)
let _ = EventWithDetail.isTrusted(eventWithOptions)

EventWithDetail.preventDefault(eventWithDetail)
EventWithDetail.stopImmediatePropagation(eventWithDetail)
EventWithDetail.stopPropagation(eventWithDetail)

EventWithDetail.preventDefault(eventWithOptions)
EventWithDetail.stopImmediatePropagation(eventWithOptions)
EventWithDetail.stopPropagation(eventWithOptions)

let _ = (eventWithDetail->EventWithDetail.detail).component
