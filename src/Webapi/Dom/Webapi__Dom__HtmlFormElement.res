/*
 * Spec: https://html.spec.whatwg.org/multipage/forms.html#the-form-element
 * MDN: https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_htmlFormElement = T.t

  @get external elements: t_htmlFormElement => Dom.htmlFormControlsCollection = "elements"
  @get external length: t_htmlFormElement => int = "length"
  @get external name: t_htmlFormElement => string = "name"
  @set external setName: (t_htmlFormElement, string) => unit = "name"
  @get external method_: t_htmlFormElement => string = "method_"
  @set external setMethod: (t_htmlFormElement, string) => unit = "method"
  @get external target: t_htmlFormElement => string = "target"
  @set external setTarget: (t_htmlFormElement, string) => unit = "target"
  @get external action: t_htmlFormElement => string = "action"
  @set external setAction: (t_htmlFormElement, string) => unit = "action"
  @get external acceptCharset: t_htmlFormElement => string = "acceptCharset"
  @set external setAcceptCharset: (t_htmlFormElement, string) => unit = "acceptCharset"
  @get external autocomplete: t_htmlFormElement => string = "autocomplete"
  @set external setAutocomplete: (t_htmlFormElement, string) => unit = "autocomplete"
  @get external noValidate: t_htmlFormElement => bool = "noValidate"
  @set external setNoValidate: (t_htmlFormElement, bool) => unit = "noValidate"
  @get external enctype: t_htmlFormElement => string = "enctype"
  @set external setEnctype: (t_htmlFormElement, string) => unit = "enctype"
  @get external encoding: t_htmlFormElement => string = "encoding"
  @set external setEncoding: (t_htmlFormElement, string) => unit = "encoding"

  @send external submit: t_htmlFormElement => unit = "submit"
  @send external reset: t_htmlFormElement => unit = "reset"
  @send external checkValidity: t_htmlFormElement => bool = "checkValidity"
  @send external reportValidity: t_htmlFormElement => bool = "reportValidity"

  @new external data: T.t => Webapi__FormData.t = "FormData"
}

type t = Dom.htmlFormElement

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
include Impl({
  type t = t
})
