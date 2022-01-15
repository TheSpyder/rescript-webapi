/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element
 */
type t = Dom.htmlFieldSetElement

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

@return(nullable) @get
external form: t => option<Dom.htmlFormElement> = "form"

@get external name: t => string = "name"
@set external setName: (t, string) => unit = "name"

@get external disabled: t => bool = "disabled"
@set external setDisabled: (t, bool) => unit = "disabled"

@get external elements: t => Dom.htmlCollection = "elements"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"
