/* Mixin */
module Impl = (
  T: {
    type t
  },
) => {
  @send
  external addSelectionChangeEventListener: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addSelectionChangeEventListenerWithOptions: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addSelectionChangeEventListenerUseCapture: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeSelectionChangeEventListener: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeSelectionChangeEventListenerWithOptions: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeSelectionChangeEventListenerUseCapture: (
    T.t,
    @as("selectionchange") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"
}
