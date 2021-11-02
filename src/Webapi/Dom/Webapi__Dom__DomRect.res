type t = Dom.domRect

@new
external make: (~x: float, ~y: float, ~width: float, ~height: float) => t =
  "DOMRect" /* experimental */

@get external top: t => float = "top"
@get external bottom: t => float = "bottom"
@get external left: t => float = "left"
@get external right: t => float = "right"
@get external height: t => float = "height"
@get external width: t => float = "width"
@get external x: t => float = "x"
@get external y: t => float = "y"
