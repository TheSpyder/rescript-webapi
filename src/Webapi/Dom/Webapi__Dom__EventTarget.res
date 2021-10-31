module Impl = (
  T: {
    type t
  },
) => {
  external asEventTarget: T.t => Dom.eventTarget = "%identity"

  @send external addEventListener: (T.t, string, Dom.event => unit) => unit = "addEventListener"
  @send
  external addEventListenerWithOptions: (
    T.t,
    string,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addEventListenerUseCapture: (T.t, string, Dom.event => unit, @as(json`true`) _) => unit =
    "addEventListener"
  @send external removeEventListener: (T.t, string, Dom.event => unit) => unit = "removeEventListener"
  @send
  external removeEventListenerWithOptions: (
    T.t,
    string,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeEventListenerUseCapture: (
    T.t,
    string,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"
  @send external dispatchEvent: (T.t, Dom.event_like<'a>) => bool = "dispatchEvent"

  /**
   * non-standard event-specific functions
   */
  @send
  external /* UI */
  addLoadEventListener: (T.t, @as("load") _, Dom.event => unit) => unit = "addEventListener"
  @send
  external addLoadEventListenerWithOptions: (
    T.t,
    @as("load") _,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addLoadEventListenerUseCapture: (
    T.t,
    @as("load") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeLoadEventListener: (T.t, @as("load") _, Dom.event => unit) => unit =
    "removeEventListener"
  @send
  external removeLoadEventListenerWithOptions: (
    T.t,
    @as("load") _,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeLoadEventListenerUseCapture: (
    T.t,
    @as("load") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addUnloadEventListener: (T.t, @as("unload") _, Dom.event => unit) => unit =
    "addEventListener"
  @send
  external addUnloadEventListenerWithOptions: (
    T.t,
    @as("unload") _,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addUnloadEventListenerUseCapture: (
    T.t,
    @as("unload") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeUnloadEventListener: (T.t, @as("unload") _, Dom.event => unit) => unit =
    "removeEventListener"
  @send
  external removeUnloadEventListenerWithOptions: (
    T.t,
    @as("unload") _,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeUnloadEventListenerUseCapture: (
    T.t,
    @as("unload") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addAbortEventListener: (T.t, @as("abort") _, Dom.event => unit) => unit =
    "addEventListener"
  @send
  external addAbortEventListenerWithOptions: (
    T.t,
    @as("abort") _,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addAbortEventListenerUseCapture: (
    T.t,
    @as("abort") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeAbortEventListener: (T.t, @as("abort") _, Dom.event => unit) => unit =
    "removeEventListener"
  @send
  external removeAbortEventListenerWithOptions: (
    T.t,
    @as("abort") _,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeAbortEventListenerUseCapture: (
    T.t,
    @as("abort") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addErrorEventListener: (T.t, @as("error") _, Dom.event => unit) => unit =
    "addEventListener"
  @send
  external addErrorEventListenerWithOptions: (
    T.t,
    @as("error") _,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addErrorEventListenerUseCapture: (
    T.t,
    @as("error") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeErrorEventListener: (T.t, @as("error") _, Dom.event => unit) => unit =
    "removeEventListener"
  @send
  external removeErrorEventListenerWithOptions: (
    T.t,
    @as("error") _,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeErrorEventListenerUseCapture: (
    T.t,
    @as("error") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addSelectEventListener: (T.t, @as("select") _, Dom.event => unit) => unit =
    "addEventListener"
  @send
  external addSelectEventListenerWithOptions: (
    T.t,
    @as("select") _,
    Dom.event => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addSelectEventListenerUseCapture: (
    T.t,
    @as("select") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeSelectEventListener: (T.t, @as("select") _, Dom.event => unit) => unit =
    "removeEventListener"
  @send
  external removeSelectEventListenerWithOptions: (
    T.t,
    @as("select") _,
    Dom.event => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeSelectEventListenerUseCapture: (
    T.t,
    @as("select") _,
    Dom.event => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Focus */

  @send
  external addBlurEventListener: (T.t, @as("blur") _, Dom.focusEvent => unit) => unit =
    "addEventListener"
  @send
  external addBlurEventListenerWithOptions: (
    T.t,
    @as("blur") _,
    Dom.focusEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addBlurEventListenerUseCapture: (
    T.t,
    @as("blur") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeBlurEventListener: (T.t, @as("blur") _, Dom.focusEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeBlurEventListenerWithOptions: (
    T.t,
    @as("blur") _,
    Dom.focusEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeBlurEventListenerUseCapture: (
    T.t,
    @as("blur") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addFocusEventListener: (T.t, @as("focus") _, Dom.focusEvent => unit) => unit =
    "addEventListener"
  @send
  external addFocusEventListenerWithOptions: (
    T.t,
    @as("focus") _,
    Dom.focusEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addFocusEventListenerUseCapture: (
    T.t,
    @as("focus") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeFocusEventListener: (T.t, @as("focus") _, Dom.focusEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeFocusEventListenerWithOptions: (
    T.t,
    @as("focus") _,
    Dom.focusEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeFocusEventListenerUseCapture: (
    T.t,
    @as("focus") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addFocusInEventListener: (T.t, @as("focusin") _, Dom.focusEvent => unit) => unit =
    "addEventListener"
  @send
  external addFocusInEventListenerWithOptions: (
    T.t,
    @as("focusin") _,
    Dom.focusEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addFocusInEventListenerUseCapture: (
    T.t,
    @as("focusin") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeFocusInEventListener: (T.t, @as("focusin") _, Dom.focusEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeFocusInEventListenerWithOptions: (
    T.t,
    @as("focusin") _,
    Dom.focusEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeFocusInEventListenerUseCapture: (
    T.t,
    @as("focusin") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addFocusOutEventListener: (T.t, @as("focusout") _, Dom.focusEvent => unit) => unit =
    "addEventListener"
  @send
  external addFocusOutEventListenerWithOptions: (
    T.t,
    @as("focusout") _,
    Dom.focusEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addFocusOutEventListenerUseCapture: (
    T.t,
    @as("focusout") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeFocusOutEventListener: (T.t, @as("focusout") _, Dom.focusEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeFocusOutEventListenerWithOptions: (
    T.t,
    @as("focusout") _,
    Dom.focusEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeFocusOutEventListenerUseCapture: (
    T.t,
    @as("focusout") _,
    Dom.focusEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Mouse */

  @send
  external addClickEventListener: (T.t, @as("click") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addClickEventListenerWithOptions: (
    T.t,
    @as("click") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addClickEventListenerUseCapture: (
    T.t,
    @as("click") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeClickEventListener: (T.t, @as("click") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeClickEventListenerWithOptions: (
    T.t,
    @as("click") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeClickEventListenerUseCapture: (
    T.t,
    @as("click") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDblClickEventListener: (T.t, @as("dblclick") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addDblClickEventListenerWithOptions: (
    T.t,
    @as("dblclick") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDblClickEventListenerUseCapture: (
    T.t,
    @as("dblclick") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDblClickEventListener: (T.t, @as("dblclick") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDblClickEventListenerWithOptions: (
    T.t,
    @as("dblclick") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDblClickEventListenerUseCapture: (
    T.t,
    @as("dblclick") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseDownEventListener: (T.t, @as("mousedown") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseDownEventListenerWithOptions: (
    T.t,
    @as("mousedown") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseDownEventListenerUseCapture: (
    T.t,
    @as("mousedown") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseDownEventListener: (T.t, @as("mousedown") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeMouseDownEventListenerWithOptions: (
    T.t,
    @as("mousedown") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseDownEventListenerUseCapture: (
    T.t,
    @as("mousedown") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseEnterEventListener: (T.t, @as("mouseenter") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseEnterEventListenerWithOptions: (
    T.t,
    @as("mouseenter") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseEnterEventListenerUseCapture: (
    T.t,
    @as("mouseenter") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseEnterEventListener: (
    T.t,
    @as("mouseenter") _,
    Dom.mouseEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeMouseEnterEventListenerWithOptions: (
    T.t,
    @as("mouseenter") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseEnterEventListenerUseCapture: (
    T.t,
    @as("mouseenter") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseMoveEventListener: (T.t, @as("mousemove") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseMoveEventListenerWithOptions: (
    T.t,
    @as("mousemove") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseMoveEventListenerUseCapture: (
    T.t,
    @as("mousemove") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseMoveEventListener: (T.t, @as("mousemove") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeMouseMoveEventListenerWithOptions: (
    T.t,
    @as("mousemove") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseMoveEventListenerUseCapture: (
    T.t,
    @as("mousemove") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseOutEventListener: (T.t, @as("mouseout") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseOutEventListenerWithOptions: (
    T.t,
    @as("mouseout") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseOutEventListenerUseCapture: (
    T.t,
    @as("mouseout") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseOutEventListener: (T.t, @as("mouseout") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeMouseOutEventListenerWithOptions: (
    T.t,
    @as("mouseout") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseOutEventListenerUseCapture: (
    T.t,
    @as("mouseout") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseOverEventListener: (T.t, @as("mouseover") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseOverEventListenerWithOptions: (
    T.t,
    @as("mouseover") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseOverEventListenerUseCapture: (
    T.t,
    @as("mouseover") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseOverEventListener: (T.t, @as("mouseover") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeMouseOverEventListenerWithOptions: (
    T.t,
    @as("mouseover") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseOverEventListenerUseCapture: (
    T.t,
    @as("mouseover") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addMouseUpEventListener: (T.t, @as("mouseup") _, Dom.mouseEvent => unit) => unit =
    "addEventListener"
  @send
  external addMouseUpEventListenerWithOptions: (
    T.t,
    @as("mouseup") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addMouseUpEventListenerUseCapture: (
    T.t,
    @as("mouseup") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeMouseUpEventListener: (T.t, @as("mouseup") _, Dom.mouseEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeMouseUpEventListenerWithOptions: (
    T.t,
    @as("mouseup") _,
    Dom.mouseEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeMouseUpEventListenerUseCapture: (
    T.t,
    @as("mouseup") _,
    Dom.mouseEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Wheel */

  @send
  external addWheelEventListener: (T.t, @as("wheel") _, Dom.wheelEvent => unit) => unit =
    "addEventListener"
  @send
  external addWheelEventListenerWithOptions: (
    T.t,
    @as("wheel") _,
    Dom.wheelEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addWheelEventListenerUseCapture: (
    T.t,
    @as("wheel") _,
    Dom.wheelEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeWheelEventListener: (T.t, @as("wheel") _, Dom.wheelEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeWheelEventListenerWithOptions: (
    T.t,
    @as("wheel") _,
    Dom.wheelEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeWheelEventListenerUseCapture: (
    T.t,
    @as("wheel") _,
    Dom.wheelEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Input */

  @send
  external addBeforeInputEventListener: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addBeforeInputEventListenerWithOptions: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addBeforeInputEventListenerUseCapture: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeBeforeInputEventListener: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeBeforeInputEventListenerWithOptions: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeBeforeInputEventListenerUseCapture: (
    T.t,
    @as("beforeinput") _,
    Dom.inputEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addInputEventListener: (T.t, @as("input") _, Dom.inputEvent => unit) => unit =
    "addEventListener"
  @send
  external addInputEventListenerWithOptions: (
    T.t,
    @as("input") _,
    Dom.inputEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addInputEventListenerUseCapture: (
    T.t,
    @as("input") _,
    Dom.inputEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeInputEventListener: (T.t, @as("input") _, Dom.inputEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeInputEventListenerWithOptions: (
    T.t,
    @as("input") _,
    Dom.inputEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeInputEventListenerUseCapture: (
    T.t,
    @as("input") _,
    Dom.inputEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Keyboard */

  @send
  external addKeyDownEventListener: (T.t, @as("keydown") _, Dom.keyboardEvent => unit) => unit =
    "addEventListener"
  @send
  external addKeyDownEventListenerWithOptions: (
    T.t,
    @as("keydown") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addKeyDownEventListenerUseCapture: (
    T.t,
    @as("keydown") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeKeyDownEventListener: (T.t, @as("keydown") _, Dom.keyboardEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeKeyDownEventListenerWithOptions: (
    T.t,
    @as("keydown") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeKeyDownEventListenerUseCapture: (
    T.t,
    @as("keydown") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addKeyUpEventListener: (T.t, @as("keyup") _, Dom.keyboardEvent => unit) => unit =
    "addEventListener"
  @send
  external addKeyUpEventListenerWithOptions: (
    T.t,
    @as("keyup") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addKeyUpEventListenerUseCapture: (
    T.t,
    @as("keyup") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeKeyUpEventListener: (T.t, @as("keyup") _, Dom.keyboardEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeKeyUpEventListenerWithOptions: (
    T.t,
    @as("keyup") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeKeyUpEventListenerUseCapture: (
    T.t,
    @as("keyup") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addKeyPressEventListener: (T.t, @as("keypress") _, Dom.keyboardEvent => unit) => unit =
    "addEventListener"
  @send
  external addKeyPressEventListenerWithOptions: (
    T.t,
    @as("keypress") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addKeyPressEventListenerUseCapture: (
    T.t,
    @as("keypress") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeKeyPressEventListener: (
    T.t,
    @as("keypress") _,
    Dom.keyboardEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeKeyPressEventListenerWithOptions: (
    T.t,
    @as("keypress") _,
    Dom.keyboardEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeKeyPressEventListenerUseCapture: (
    T.t,
    @as("keypress") _,
    Dom.keyboardEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Composition */

  @send
  external addCompositionStartEventListener: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addCompositionStartEventListenerWithOptions: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addCompositionStartEventListenerUseCapture: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeCompositionStartEventListener: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeCompositionStartEventListenerWithOptions: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeCompositionStartEventListenerUseCapture: (
    T.t,
    @as("compositionstart") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addCompositionUpdateEventListener: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addCompositionUpdateEventListenerWithOptions: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addCompositionUpdateEventListenerUseCapture: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeCompositionUpdateEventListener: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeCompositionUpdateEventListenerWithOptions: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeCompositionUpdateEventListenerUseCapture: (
    T.t,
    @as("compositionupdate") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addCompositionEndEventListener: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addCompositionEndEventListenerWithOptions: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addCompositionEndEventListenerUseCapture: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeCompositionEndEventListener: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeCompositionEndEventListenerWithOptions: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeCompositionEndEventListenerUseCapture: (
    T.t,
    @as("compositionend") _,
    Dom.compositionEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Drag */

  @send
  external addDragEventListener: (T.t, @as("drag") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragEventListenerWithOptions: (
    T.t,
    @as("drag") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragEventListenerUseCapture: (
    T.t,
    @as("drag") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragEventListener: (T.t, @as("drag") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragEventListenerWithOptions: (
    T.t,
    @as("drag") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragEventListenerUseCapture: (
    T.t,
    @as("drag") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragEndEventListener: (T.t, @as("dragend") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragEndEventListenerWithOptions: (
    T.t,
    @as("dragend") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragEndEventListenerUseCapture: (
    T.t,
    @as("dragend") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragEndEventListener: (T.t, @as("dragend") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragEndEventListenerWithOptions: (
    T.t,
    @as("dragend") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragEndEventListenerUseCapture: (
    T.t,
    @as("dragend") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragEnterEventListener: (T.t, @as("dragenter") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragEnterEventListenerWithOptions: (
    T.t,
    @as("dragenter") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragEnterEventListenerUseCapture: (
    T.t,
    @as("dragenter") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragEnterEventListener: (T.t, @as("dragenter") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragEnterEventListenerWithOptions: (
    T.t,
    @as("dragenter") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragEnterEventListenerUseCapture: (
    T.t,
    @as("dragenter") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragExitEventListener: (T.t, @as("dragexit") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragExitEventListenerWithOptions: (
    T.t,
    @as("dragexit") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragExitEventListenerUseCapture: (
    T.t,
    @as("dragexit") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragExitEventListener: (T.t, @as("dragexit") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragExitEventListenerWithOptions: (
    T.t,
    @as("dragexit") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragExitEventListenerUseCapture: (
    T.t,
    @as("dragexit") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragLeaveEventListener: (T.t, @as("dragleave") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragLeaveEventListenerWithOptions: (
    T.t,
    @as("dragleave") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragLeaveEventListenerUseCapture: (
    T.t,
    @as("dragleave") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragLeaveEventListener: (T.t, @as("dragleave") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragLeaveEventListenerWithOptions: (
    T.t,
    @as("dragleave") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragLeaveEventListenerUseCapture: (
    T.t,
    @as("dragleave") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragOverEventListener: (T.t, @as("dragover") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragOverEventListenerWithOptions: (
    T.t,
    @as("dragover") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragOverEventListenerUseCapture: (
    T.t,
    @as("dragover") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragOverEventListener: (T.t, @as("dragover") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragOverEventListenerWithOptions: (
    T.t,
    @as("dragover") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragOverEventListenerUseCapture: (
    T.t,
    @as("dragover") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDragStartEventListener: (T.t, @as("dragstart") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDragStartEventListenerWithOptions: (
    T.t,
    @as("dragstart") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDragStartEventListenerUseCapture: (
    T.t,
    @as("dragstart") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDragStartEventListener: (T.t, @as("dragstart") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDragStartEventListenerWithOptions: (
    T.t,
    @as("dragstart") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDragStartEventListenerUseCapture: (
    T.t,
    @as("dragstart") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addDropEventListener: (T.t, @as("drop") _, Dom.dragEvent => unit) => unit =
    "addEventListener"
  @send
  external addDropEventListenerWithOptions: (
    T.t,
    @as("drop") _,
    Dom.dragEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addDropEventListenerUseCapture: (
    T.t,
    @as("drop") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeDropEventListener: (T.t, @as("drop") _, Dom.dragEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeDropEventListenerWithOptions: (
    T.t,
    @as("drop") _,
    Dom.dragEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeDropEventListenerUseCapture: (
    T.t,
    @as("drop") _,
    Dom.dragEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Touch */

  @send
  external addTouchCancelEventListener: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addTouchCancelEventListenerWithOptions: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addTouchCancelEventListenerUseCapture: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeTouchCancelEventListener: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeTouchCancelEventListenerWithOptions: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeTouchCancelEventListenerUseCapture: (
    T.t,
    @as("touchcancel") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addTouchEndEventListener: (T.t, @as("touchend") _, Dom.touchEvent => unit) => unit =
    "addEventListener"
  @send
  external addTouchEndEventListenerWithOptions: (
    T.t,
    @as("touchend") _,
    Dom.touchEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addTouchEndEventListenerUseCapture: (
    T.t,
    @as("touchend") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeTouchEndEventListener: (T.t, @as("touchend") _, Dom.touchEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeTouchEndEventListenerWithOptions: (
    T.t,
    @as("touchend") _,
    Dom.touchEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeTouchEndEventListenerUseCapture: (
    T.t,
    @as("touchend") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addTouchMoveEventListener: (T.t, @as("touchmove") _, Dom.touchEvent => unit) => unit =
    "addEventListener"
  @send
  external addTouchMoveEventListenerWithOptions: (
    T.t,
    @as("touchmove") _,
    Dom.touchEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addTouchMoveEventListenerUseCapture: (
    T.t,
    @as("touchmove") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeTouchMoveEventListener: (T.t, @as("touchmove") _, Dom.touchEvent => unit) => unit =
    "removeEventListener"
  @send
  external removeTouchMoveEventListenerWithOptions: (
    T.t,
    @as("touchmove") _,
    Dom.touchEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeTouchMoveEventListenerUseCapture: (
    T.t,
    @as("touchmove") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addTouchStartEventListener: (T.t, @as("touchstart") _, Dom.touchEvent => unit) => unit =
    "addEventListener"
  @send
  external addTouchStartEventListenerWithOptions: (
    T.t,
    @as("touchstart") _,
    Dom.touchEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addTouchStartEventListenerUseCapture: (
    T.t,
    @as("touchstart") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeTouchStartEventListener: (
    T.t,
    @as("touchstart") _,
    Dom.touchEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeTouchStartEventListenerWithOptions: (
    T.t,
    @as("touchstart") _,
    Dom.touchEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeTouchStartEventListenerUseCapture: (
    T.t,
    @as("touchstart") _,
    Dom.touchEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  /* Animation */

  @send
  external addAnimationCancelEventListener: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addAnimationCancelEventListenerWithOptions: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addAnimationCancelEventListenerUseCapture: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeAnimationCancelEventListener: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeAnimationCancelEventListenerWithOptions: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeAnimationCancelEventListenerUseCapture: (
    T.t,
    @as("animationcancel") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addAnimationEndEventListener: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addAnimationEndEventListenerWithOptions: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addAnimationEndEventListenerUseCapture: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeAnimationEndEventListener: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeAnimationEndEventListenerWithOptions: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeAnimationEndEventListenerUseCapture: (
    T.t,
    @as("animationend") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addAnimationIterationEventListener: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addAnimationIterationEventListenerWithOptions: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addAnimationIterationEventListenerUseCapture: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeAnimationIterationEventListener: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeAnimationIterationEventListenerWithOptions: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeAnimationIterationEventListenerUseCapture: (
    T.t,
    @as("animationiteration") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"

  @send
  external addAnimationStartEventListener: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
  ) => unit = "addEventListener"
  @send
  external addAnimationStartEventListenerWithOptions: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
    {"capture": bool, "once": bool, "passive": bool},
  ) => unit = "addEventListener" /* not widely supported */
  @send
  external addAnimationStartEventListenerUseCapture: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "addEventListener"
  @send
  external removeAnimationStartEventListener: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
  ) => unit = "removeEventListener"
  @send
  external removeAnimationStartEventListenerWithOptions: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
    {"capture": bool, "passive": bool},
  ) => unit = "removeEventListener" /* not widely supported */
  @send
  external removeAnimationStartEventListenerUseCapture: (
    T.t,
    @as("animationstart") _,
    Dom.animationEvent => unit,
    @as(json`true`) _,
  ) => unit = "removeEventListener"
}

include Impl({
  type t = Dom.eventTarget
})

external unsafeAsDocument: Dom.eventTarget => Dom.document = "%identity"
external unsafeAsElement: Dom.eventTarget => Dom.element = "%identity"
external unsafeAsWindow: Dom.eventTarget => Dom.window = "%identity"
