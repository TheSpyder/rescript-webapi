open Webapi.Dom
open EventTarget

let target: Dom.eventTarget = document->Document.createElement("strong")->Element.asEventTarget
let event: Event.t = Event.make("my-event")

let handleClick = _ => print_endline("asd")

target->addEventListener("click", handleClick)
target->addEventListenerWithOptions(
  "click",
  handleClick,
  {"passive": true, "once": true, "capture": false},
)
target->addEventListenerUseCapture("click", handleClick)
target->removeEventListener("click", handleClick)
target->removeEventListenerWithOptions("click", handleClick, {"passive": true, "capture": false})
target->removeEventListenerUseCapture("click", handleClick)
let dispatchEventStandard: bool = target->dispatchEvent(event)

/* https://github.com/reasonml-community/bs-webapi-incubator/issues/103 */
let customEvent: CustomEvent.t = CustomEvent.makeWithOptions(
  "custom-event",
  {
    "detail": {
      "test": "test",
    },
  },
)
let dispatchEventCustom: bool = target->dispatchEvent(customEvent)

/* dispatch custom event with typed detail */
module Detail = {
  type t = {test: string}
}

module EventWithDetail = CustomEvent.Make(Detail)
let typedCustomEvent: EventWithDetail.t = EventWithDetail.makeWithOptions(
  "event-with-detail",
  {detail: {test: "test"}},
)
let dispatchEventWithDetail: bool = target->dispatchEvent(typedCustomEvent)
