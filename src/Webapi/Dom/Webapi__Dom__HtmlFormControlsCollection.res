/**
 * Spec: https://html.spec.whatwg.org/multipage/common-dom-interfaces.html#htmlformcontrolscollection
 */
type t = Dom.htmlFormControlsCollection

@val @scope(("Array", "prototype", "slice"))
external toArray: t => array<Dom.element> = "call"

@get external length: t => int = "length"
@send @return(nullable) external item: (t, int) => option<Dom.element> = "item"

type t_namedItem =
  | RadioNodeList(Dom.radioNodeList)
  | Button(Dom.htmlButtonElement)
  | FieldSet(Dom.htmlFieldSetElement)
  | Input(Dom.htmlInputElement)
  | Object(Dom.htmlObjectElement)
  | Output(Dom.htmlOutputElement)
  | Select(Dom.htmlSelectElement)
  | TextArea(Dom.htmlTextAreaElement)

type elementOrRadioNodeList

@send @return(nullable)
external _namedItem: (t, string) => option<elementOrRadioNodeList> = "namedItem"

let testRadioNodeList: elementOrRadioNodeList => option<Webapi__Dom__RadioNodeList.t> = %raw(`
  function(el) {
    if ((el.constructor.name != null && el.constructor.name === "RadioNodeList")
      || /^\[object RadioNodeList\]$/.test(el.constructor.toString())) {
      return el;
    }
  }
`)

external castElement: elementOrRadioNodeList => Dom.element = "%identity"

let namedItem = (t, name): option<t_namedItem> => {
  switch _namedItem(t, name) {
  | Some(value) =>
    switch testRadioNodeList(value) {
    | Some(radioNodeList) => radioNodeList->RadioNodeList->Some
    | _ =>
      switch value->castElement->Webapi__Dom__Element.tagName->Js.String2.toUpperCase {
      // non-html documents may return in different casing
      | "BUTTON" => value->Obj.magic->Button->Some
      | "FIELDSET" => value->Obj.magic->FieldSet->Some
      | "INPUT" => value->Obj.magic->Input->Some
      | "OBJECT" => value->Obj.magic->Object->Some
      | "OUTPUT" => value->Obj.magic->Output->Some
      | "SELECT" => value->Obj.magic->Select->Some
      | "TEXTAREA" => value->Obj.magic->TextArea->Some
      | _ => None
      }
    }
  | None => None
  }
}
