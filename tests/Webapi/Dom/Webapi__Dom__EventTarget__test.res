open Webapi.Dom
open EventTarget

let target = document->Document.createElement("strong")->Element.asEventTarget
let event = Event.make("my-event")
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
let _ = target->dispatchEvent(event)

/* https://github.com/reasonml-community/bs-webapi-incubator/issues/103 */
let customEvent = CustomEvent.makeWithOptions(
  "custom-event",
  {
    "detail": {
      "test": "test",
    },
  },
)
let _ = target->dispatchEvent(customEvent)

/* dispatch custom event with typed detail */
module Detail = {
  type t = {test: string}
}

module EventWithDetail = CustomEvent.Make(Detail)
let typedCustomEvent = EventWithDetail.makeWithOptions(
  "event-with-detail",
  {detail: {test: "test"}},
)
let _ = target->dispatchEvent(typedCustomEvent)
