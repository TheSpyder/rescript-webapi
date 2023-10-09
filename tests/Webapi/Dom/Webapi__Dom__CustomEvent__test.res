open Webapi.Dom
open CustomEvent

let event: CustomEvent.t = make("my-event")

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

/* Event with detail */
module Detail = {
  type t = {component: string}
}

module EventWithDetail = Make(Detail)
let eventWithDetail: Dom.event_like<_typedCustomEvent<Detail.t>> = EventWithDetail.make("event-with-detail")
let eventWithOptions: Dom.event_like<_typedCustomEvent<Detail.t>> = EventWithDetail.makeWithOptions(
  "event-with-detail",
  {detail: {component: "test-component"}},
)

/* Event */
let bubbles_withDetail: bool = EventWithDetail.bubbles(eventWithDetail)
let cancelable_withDetail: bool = EventWithDetail.cancelable(eventWithDetail)
let composed_withDetail: bool = EventWithDetail.composed(eventWithDetail)
let currentTarget_withDetail: Dom.eventTarget = EventWithDetail.currentTarget(eventWithDetail)
let defaultPrevented_withDetail: bool = EventWithDetail.defaultPrevented(eventWithDetail)
let eventPhase_withDetail: EventPhase.t = EventWithDetail.eventPhase(eventWithDetail)
let target_withDetail: Dom.eventTarget = EventWithDetail.target(eventWithDetail)
let timeStamp_withDetail: float = EventWithDetail.timeStamp(eventWithDetail)
let type_withDetail: string = EventWithDetail.type_(eventWithDetail)
let isTrusted_withDetail: bool = EventWithDetail.isTrusted(eventWithDetail)

let bubbles_withOptions: bool = EventWithDetail.bubbles(eventWithOptions)
let cancelable_withOptions: bool = EventWithDetail.cancelable(eventWithOptions)
let composed_withOptions: bool = EventWithDetail.composed(eventWithOptions)
let currentTarget_withOptions: Dom.eventTarget = EventWithDetail.currentTarget(eventWithOptions)
let defaultPrevented_withOptions: bool = EventWithDetail.defaultPrevented(eventWithOptions)
let eventPhase_withOptions: EventPhase.t = EventWithDetail.eventPhase(eventWithOptions)
let target_withOptions: Dom.eventTarget = EventWithDetail.target(eventWithOptions)
let timeStamp_withOptions: float = EventWithDetail.timeStamp(eventWithOptions)
let type__withOptions: string = EventWithDetail.type_(eventWithOptions)
let isTrusted_withOptions: bool = EventWithDetail.isTrusted(eventWithOptions)

EventWithDetail.preventDefault(eventWithDetail)
EventWithDetail.stopImmediatePropagation(eventWithDetail)
EventWithDetail.stopPropagation(eventWithDetail)

EventWithDetail.preventDefault(eventWithOptions)
EventWithDetail.stopImmediatePropagation(eventWithOptions)
EventWithDetail.stopPropagation(eventWithOptions)

let component: string = (eventWithDetail->EventWithDetail.detail).component
