open Webapi.Dom
open Webapi.Dom.DomStringMap

let dataset =
  document
  ->Document.createElement("div")
  ->Element.asHtmlElement
  ->Belt.Option.map(_, HtmlElement.dataset)

let () = switch dataset {
| Some(dataset) =>
  dataset->set("fooKey", "barValue")
  dataset->get("fooKey")->ignore
  dataset->unsafeDeleteKey("fooKey")
| None => ()
}
