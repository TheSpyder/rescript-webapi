/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-output-element
 */
type t = Dom.htmlOutputElement

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

@get external defaultValue: t => string = "defaultValue"
@set external setDefaultValue: (t, string) => unit = "defaultValue"

@get external value: t => string = "value"
@set external setValue: (t, string) => unit = "value"

@get external htmlFor: t => Dom.domTokenList = "htmlFor"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"
