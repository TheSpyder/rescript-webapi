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

let isRadioNodeList: 'a => bool = %raw(`
  function(x) { return x instanceof RadioNodeList; }
`)

@send @return(nullable) external _namedItem: (t, string) => option<'a> = "namedItem"

let namedItem = (t, name): option<t_namedItem> =>
  switch _namedItem(t, name) {
  | Some(el) =>
    if Webapi__Dom__RadioNodeList.unsafeAsRadioNodeList(el)->isRadioNodeList {
      el->Obj.magic->RadioNodeList->Some
    } else {
      switch Webapi__Dom__Element.tagName(el) {
      // fixme: this should be a classify function in Webapi__Dom__Element?
      | "BUTTON" => el->Obj.magic->Button->Some
      | "FIELDSET" => el->Obj.magic->FieldSet->Some
      | "INPUT" => el->Obj.magic->Input->Some
      | "OBJECT" => el->Obj.magic->Object->Some
      | "OUTPUT" => el->Obj.magic->Output->Some
      | "SELECT" => el->Obj.magic->Select->Some
      | "TEXTAREA" => el->Obj.magic->TextArea->Some
      | _ => None
      }
    }
  | None => None
  }
