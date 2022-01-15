/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element
 */
type t = Dom.htmlOptionElement

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

@get external disabled: t => bool = "disabled"
@set external setDisabled: (t, bool) => unit = "disabled"

@get external label: t => string = "label"
@set external setLabel: (t, string) => unit = "label"

@get external selected: t => bool = "selected"
@set external setSelected: (t, bool) => unit = "selected"

@get external defaultSelected: t => bool = "defaultSelected"
@set external setDefaultSelected: (t, bool) => unit = "defaultSelected"

@get external value: t => string = "value"
@set external setValue: (t, string) => unit = "value"

@get external text: t => string = "text"
@set external setText: (t, string) => unit = "text"

@get external index: t => int = "index"
