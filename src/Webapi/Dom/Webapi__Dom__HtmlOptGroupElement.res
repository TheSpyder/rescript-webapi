/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-optgroup-element
 */
type t = Dom.htmlOptGroupElement

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

@get external disabled: t => bool = "disabled"
@set external setDisabled: (t, bool) => unit = "disabled"

@get external label: t => string = "label"
@set external setLabel: (t, string) => unit = "label"
