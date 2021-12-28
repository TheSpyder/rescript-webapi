/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-select-element
 */
type t = Dom.htmlSelectElement

include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__Element.Impl({
  type t = t
})
include Webapi__Dom__HtmlElement.Impl({
  type t = t
})

// common form element attributes
@return(nullable) @get
external form: t => option<Dom.htmlFormElement> = "form"
@get external labels: t => Dom.nodeList = "labels"

@get external name: t => string = "name"
@set external setName: (t, string) => unit = "name"

@get external disabled: t => bool = "disabled"
@set external setDisabled: (t, bool) => unit = "disabled"

@get external required: t => bool = "required"
@set external setRequired: (t, bool) => unit = "required"

@get external value: t => string = "value"
@set external setValue: (t, string) => unit = "value"

// specific to htmlSelectElement
@get external autocomplete: t => string = "autocomplete"
@set external setAutocomplete: (t, string) => unit = "autocomplete"

@get external multiple: t => bool = "multiple"
@set external setMultiple: (t, bool) => unit = "multiple"

@get external size: t => float = "size"
@set external setSize: (t, float) => unit = "size"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"

external unsafeOfElement: Dom.element => t = "%identity"
external asElement: t => Dom.element = "%identity"
external asHtmlElement: t => Dom.htmlElement = "%identity"

let ofElement = (el): option<t> =>
  switch Webapi__Dom__Element.tagName(el) {
  | "SELECT" => el->unsafeOfElement->Some
  | _ => None
  }

@get external options: t => Dom.htmlOptionsCollection = "options"

@get external length: t => int = "length"
@set external setLength: (t, int) => unit = "length"

@get
external selectedOptions: t => Dom.htmlCollection = "selectedOptions"

@send @return(nullable)
external item: (t, int) => option<Dom.htmlOptionElement> = "item"

@send @return(nullable)
external namedItem: (t, string) => option<Dom.htmlOptionElement> = "namedItem"

@send external remove: t => unit = "remove" // ChildNode overload
@send external removeIndex: (t, int) => unit = "remove"

/**
 * This method will throw a "HierarchyRequestError" DOMException if element is an ancestor of the element into which it is to be inserted.
 */
@send
external add: (
  t,
  ~option: @unwrap [#Option(Dom.htmlOptionElement) | #OptGroup(Dom.htmlOptGroupElement)],
  ~before: @unwrap [#Index(int) | #Element(Dom.htmlElement)]=?,
) => unit = "add"

@set_index external setItem: (t, int, Dom.htmlOptionElement) => unit = ""
@set_index external clearItem: (t, int, @as(json`null`) _) => unit = ""

@get external selectedIndex: t => int = "selectedIndex"
@set external setSelectedIndex: (t, int) => unit = "selectedIndex"
@set
external clearSelectedIndex: (t, @as(json`-1`) _) => unit = "selectedIndex"
