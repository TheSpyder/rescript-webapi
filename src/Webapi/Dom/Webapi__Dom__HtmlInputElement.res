/*
 * Spec: https://html.spec.whatwg.org/multipage/input.html#the-input-element
 * MDN: https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_htmlInputElement = T.t

  @get @return(nullable) external form: t_htmlInputElement => option<Dom.htmlFormElement> = "form"
  @get external formAction: t_htmlInputElement => string = "formAction"
  @set external setFormAction: (t_htmlInputElement, string) => unit = "formAction"
  @get external formEncType: t_htmlInputElement => string = "formEncType"
  @set external setFormEncType: (t_htmlInputElement, string) => unit = "formEncType"
  @get external formMethod: t_htmlInputElement => string = "formMethod"
  @set external setFormMethod: (t_htmlInputElement, string) => unit = "formMethod"
  @get external formNoValidate: t_htmlInputElement => bool = "formNoValidate"
  @set external setFormNoValidate: (t_htmlInputElement, bool) => unit = "formNoValidate"
  @get external formTarget: t_htmlInputElement => string = "formTarget"
  @set external setFormTarget: (t_htmlInputElement, string) => unit = "formTarget"

  /* Properties that apply to any type of input element that is not hidden */
  @get external name: t_htmlInputElement => string = "name"
  @set external setName: (t_htmlInputElement, string) => unit = "name"
  @get external type_: t_htmlInputElement => string = "type"
  @set external setType: (t_htmlInputElement, string) => unit = "type"
  @get external disabled: t_htmlInputElement => bool = "disabled"
  @set external setDisabled: (t_htmlInputElement, bool) => unit = "disabled"
  @get external autofocus: t_htmlInputElement => bool = "autofocus"
  @set external setAutofocus: (t_htmlInputElement, bool) => unit = "autofocus"
  @get external required: t_htmlInputElement => bool = "required"
  @set external setRequired: (t_htmlInputElement, bool) => unit = "required"
  @get external value: t_htmlInputElement => string = "value"
  @set external setValue: (t_htmlInputElement, string) => unit = "value"
  @get external validity: t_htmlInputElement => Webapi__Dom__ValidityState.t = "validity"
  @get external validationMessage: t_htmlInputElement => string = "validationMessage"
  @get external willValidate: t_htmlInputElement => bool = "willValidate"

  /* Properties that apply only to elements of type "checkbox" or "radio" */
  @get external checked: t_htmlInputElement => bool = "checked"
  @set external setChecked: (t_htmlInputElement, bool) => unit = "checked"
  @get external defaultChecked: t_htmlInputElement => bool = "defaultChecked"
  @set external setDefaultChecked: (t_htmlInputElement, bool) => unit = "defaultChecked"
  @get external indeterminate: t_htmlInputElement => bool = "indeterminate"
  @set external setIndeterminate: (t_htmlInputElement, bool) => unit = "indeterminate"

  /* Properties that apply only to elements of type "image" */
  @get external alt: t_htmlInputElement => string = "alt"
  @set external setAlt: (t_htmlInputElement, string) => unit = "alt"
  @get external height: t_htmlInputElement => string = "height"
  @set external setHeight: (t_htmlInputElement, string) => unit = "height"
  @get external src: t_htmlInputElement => string = "src"
  @set external setSrc: (t_htmlInputElement, string) => unit = "src"
  @get external width: t_htmlInputElement => string = "width"
  @set external setWidth: (t_htmlInputElement, string) => unit = "width"

  /* Properties that apply only to elements of type "file" */
  @get external accept: t_htmlInputElement => string = "accept"
  @set external setAccept: (t_htmlInputElement, string) => unit = "accept"
  /* TODO: files: Returns/accepts a FileList object. */

  /* Properties that apply only to text/number-containing or elements */
  @get external autocomplete: t_htmlInputElement => string = "autocomplete"
  @set external setAutocomplete: (t_htmlInputElement, string) => unit = "autocomplete"
  @get external maxLength: t_htmlInputElement => int = "maxLength"
  @set external setMaxLength: (t_htmlInputElement, int) => unit = "maxLength"
  @get external minLength: t_htmlInputElement => int = "minLength"
  @set external setMinLength: (t_htmlInputElement, int) => unit = "minLength"
  @get external size: t_htmlInputElement => int = "size"
  @set external setSize: (t_htmlInputElement, int) => unit = "size"
  @get external pattern: t_htmlInputElement => string = "pattern"
  @set external setPattern: (t_htmlInputElement, string) => unit = "pattern"
  @get external placeholder: t_htmlInputElement => string = "placeholder"
  @set external setPlaceholder: (t_htmlInputElement, string) => unit = "placeholder"
  @get external readOnly: t_htmlInputElement => bool = "readOnly"
  @set external setReadOnly: (t_htmlInputElement, bool) => unit = "readOnly"
  @get external min: t_htmlInputElement => string = "min"
  @set external setMin: (t_htmlInputElement, string) => unit = "min"
  @get external max: t_htmlInputElement => string = "max"
  @set external setMax: (t_htmlInputElement, string) => unit = "max"
  @get external selectionStart: t_htmlInputElement => int = "selectionStart"
  @set external setSelectionStart: (t_htmlInputElement, int) => unit = "selectionStart"
  @get external selectionEnd: t_htmlInputElement => int = "selectionEnd"
  @set external setSelectionEnd: (t_htmlInputElement, int) => unit = "selectionEnd"
  @get external selectionDirection: t_htmlInputElement => string = "selectionDirection"
  @set
  external setSelectionDirection: (t_htmlInputElement, string) => unit = "selectionDirection"

  /* Properties not yet categorized */
  @get external defaultValue: t_htmlInputElement => string = "defaultValue"
  @set external setDefaultValue: (t_htmlInputElement, string) => unit = "defaultValue"
  @get external dirName: t_htmlInputElement => string = "dirName"
  @set external setDirName: (t_htmlInputElement, string) => unit = "dirName"
  @get external accessKey: t_htmlInputElement => string = "accessKey"
  @set external setAccessKey: (t_htmlInputElement, string) => unit = "accessKey"
  @get @return(nullable) external list: t_htmlInputElement => option<Dom.htmlElement> = "list"
  @get external multiple: t_htmlInputElement => bool = "multiple"
  @set external setMultiple: (t_htmlInputElement, bool) => unit = "multiple"
  /* TODO: files: FileList array. Returns the list of selected files. */
  @get external labels: t_htmlInputElement => array<Dom.nodeList> = "labels"
  @get external step: t_htmlInputElement => string = "step"
  @set external setStep: (t_htmlInputElement, string) => unit = "step"
  @get @return(nullable) external valueAsDate: t_htmlInputElement => option<Js.Date.t> = "valueAsDate"
  @set external setValueAsDate: (t_htmlInputElement, Js.Date.t) => unit = "valueAsDate"
  @get external valueAsNumber: t_htmlInputElement => float = "valueAsNumber"

  @send external select: t_htmlInputElement => unit = "select"

  module SelectionDirection = {
    type t =
      | Forward
      | Backward
      | None

    let toString = x =>
      switch x {
      | Forward => "forward"
      | Backward => "backward"
      | None => "none"
      }
  }

  @send external setSelectionRange: (t_htmlInputElement, int, int) => unit = "setSelectionRange"
  @send
  external setSelectionRangeWithDirection_: (t_htmlInputElement, int, int, string) => unit =
    "setSelectionRange"
  let setSelectionRangeWithDirection = (
    selectionStart,
    selectionEnd,
    selectionDirection,
    element,
  ) =>
    element->setSelectionRangeWithDirection_(
      selectionStart,
      selectionEnd,
      selectionDirection->SelectionDirection.toString,
    )

  module SelectionMode = {
    type t =
      | Select
      | Start
      | End
      | Preserve

    let toString = x =>
      switch x {
      | Select => "select"
      | Start => "start"
      | End => "end"
      | Preserve => "preserve"
      }
  }

  @send
  external setRangeTextWithinSelection: (t_htmlInputElement, string) => unit = "setRangeText"
  @send
  external setRangeTextWithinInterval: (t_htmlInputElement, string, int, int) => unit =
    "setRangeText"
  @send
  external setRangeTextWithinIntervalWithSelectionMode_: (
    t_htmlInputElement,
    string,
    int,
    int,
    string,
  ) => unit = "setRangeText"
  let setRangeTextWithinIntervalWithSelectionMode = (
    text,
    selectionStart,
    selectionEnd,
    selectionMode,
    element,
  ) =>
    element->setRangeTextWithinIntervalWithSelectionMode_(
      text,
      selectionStart,
      selectionEnd,
      selectionMode->SelectionMode.toString,
    )

  @send external setCustomValidity: (t_htmlInputElement, string) => unit = "setCustomValidity"
  @send external checkValidity: t_htmlInputElement => bool = "checkValidity"
  @send external reportValidity: t_htmlInputElement => bool = "reportValidity"
  @send external stepDownBy: (t_htmlInputElement, int) => unit = "stepDown"
  @send external stepDownByOne: t_htmlInputElement => unit = "stepDown"
  @send external stepUpBy: (t_htmlInputElement, int) => unit = "stepUp"
  @send external stepUpByOne: t_htmlInputElement => unit = "stepUp"
}

type t = Dom.htmlInputElement

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
