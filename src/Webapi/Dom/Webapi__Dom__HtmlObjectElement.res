/**
 * Spec: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-object-element
 */

type t = Dom.htmlObjectElement

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

@get external data: t => string = "data"
@set external setData: (t, string) => unit = "data"

@get external name: t => string = "name"
@set external setName: (t, string) => unit = "name"

@get external width: t => string = "width"
@set external setWidth: (t, string) => unit = "width"

@get external height: t => string = "height"
@set external setHeight: (t, string) => unit = "height"

@return(nullable) @get external contentDocument: t => option<Dom.document> = "contentDocument"
@return(nullable) @get external contentWindow: t => option<Dom.window> = "contentWindow"

@return(nullable) @send external getSVGDocument: t => option<Dom.document> = "getSVGDocument"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"
