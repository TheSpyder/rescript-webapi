/**
 * Spec: https://html.spec.whatwg.org/multipage/form-elements.html#the-textarea-element
 */
type t = Dom.htmlTextAreaElement

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

// textarea specific

@get external autocomplete: t => string = "autocomplete"
@set external setAutocomplete: (t, string) => unit = "autocomplete"

@get external cols: t => float = "cols"
@set external setCols: (t, float) => unit = "cols"

@get external dirName: t => string = "dirName"
@set external setDirName: (t, string) => unit = "dirName"

@get external disabled: t => bool = "disabled"
@set external setDisabled: (t, bool) => unit = "disabled"

@get external maxLength: t => float = "maxLength"
@set external setMaxLength: (t, float) => unit = "maxLength"

@get external minLength: t => float = "minLength"
@set external setMinLength: (t, float) => unit = "minLength"

@get external placeholder: t => string = "placeholder"
@set external setPlaceholder: (t, string) => unit = "placeholder"

@get external readOnly: t => bool = "readOnly"
@set external setReadOnly: (t, bool) => unit = "readOnly"

@get external required: t => bool = "required"
@set external setRequired: (t, bool) => unit = "required"

@get external rows: t => float = "rows"
@set external setRows: (t, float) => unit = "rows"

@get external wrap: t => string = "wrap"
@set external setWrap: (t, string) => unit = "wrap"

@get external textLength: t => float = "textLength"

/* Validation */
@get external willValidate: t => bool = "willValidate"
@get external validity: t => Webapi__Dom__ValidityState.t = "validity"
@get external validationMessage: t => string = "validationMessage"
@send external setCustomValidity: (t, string) => unit = "setCustomValidity"
@send external checkValidity: t => bool = "checkValidity"
@send external reportValidity: t => bool = "reportValidity"

/* Selection */
type selectionDirection = [#forward | #backward | #none]

@send external select: t => unit = "select"
@get external selectionStart: t => int = "selectionStart"
@set external setSelectionStart: (t, int) => unit = "selectionStart"
@get external selectionEnd: t => int = "selectionEnd"
@set external setSelectionEnd: (t, int) => unit = "selectionEnd"
@get
external selectionDirection: t => selectionDirection = "selectionDirection"
@set
external setSelectionDirection: (t, selectionDirection) => unit = "selectionDirection"

@send external setSelectionRange: (t, int, int) => unit = "setSelectionRange"
@send
external setSelectionRangeWithDirection: (t, int, int, selectionDirection) => unit =
  "setSelectionRange"

type selectionMode = [
  | #select
  | #start
  | #end
  | #preserve
]

@send
external setRangeTextWithinSelection: (t, string) => unit = "setRangeText"
@send
external setRangeTextWithinInterval: (t, string, int, int) => unit = "setRangeText"
@send
external setRangeTextWithinIntervalWithSelectionMode: (t, string, int, int, selectionMode) => unit =
  "setRangeText"
