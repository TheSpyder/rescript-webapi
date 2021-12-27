/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element
 */

type t = Dom.htmlButtonElement

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

@get external value: t => string = "value"
@set external setValue: (t, string) => unit = "value"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"

@get external formAction: t => string = "formAction"
@set external setFormAction: (t, string) => unit = "formAction"

@get external formEnctype: t => string = "formEnctype"
@set external setFormEnctype: (t, string) => unit = "formEnctype"

@get external formMethod: t => string = "formMethod"
@set external setFormMethod: (t, string) => unit = "formMethod"

@get external formNoValidate: t => bool = "formNoValidate"
@set external setFormNoValidate: (t, bool) => unit = "formNoValidate"

@get external formTarget: t => string = "formTarget"
@set external setFormTarget: (t, string) => unit = "formTarget"
