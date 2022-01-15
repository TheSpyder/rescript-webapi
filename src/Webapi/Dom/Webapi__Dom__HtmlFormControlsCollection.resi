type t = Dom.htmlFormControlsCollection

@val @scope(("Array", "prototype", "slice")) external toArray: t => array<Dom.element> = "call"
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

let namedItem: (t, string) => option<t_namedItem>
