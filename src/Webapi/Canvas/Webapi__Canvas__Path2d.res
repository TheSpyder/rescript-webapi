type t

/**
 * Path2D
 * all methods except addPath are common with CanvasRenderingContext2D
 */
@new
external make: (~d: string=?, unit) => t = "Path2D"

/** https://developer.mozilla.org/en-US/docs/Web/API/Path2D/addPath */
@send
external addPath: (t, t) => unit = "addPath"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/arc */
@send
external arc: (
  t,
  ~x: float,
  ~y: float,
  ~r: float,
  ~a1: float,
  ~a2: float,
  ~ccw: bool=?,
  unit,
) => unit = "arc"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/arcTo */
@send
external arcTo: (t, ~x1: float, ~y1: float, ~x2: float, ~y2: float, ~r: float) => unit = "arcTo"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo */
@send
external bezierCurveTo: (
  t,
  ~cp1x: float,
  ~cp1y: float,
  ~cp2x: float,
  ~cp2y: float,
  ~x: float,
  ~y: float,
) => unit = "bezierCurveTo"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/closePath*/
@send
external closePath: t => unit = "closePath"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/ellipse */
@send
external ellipse: (
  t,
  ~x: float,
  ~y: float,
  ~rx: float,
  ~ry: float,
  ~rtn: float,
  ~a1: float,
  ~a2: float,
  ~ccw: bool=?,
  unit,
) => unit = "ellipse"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/lineTo */
@send
external lineTo: (t, ~x: float, ~y: float) => unit = "lineTo"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/moveTo */
@send
external moveTo: (t, ~x: float, ~y: float) => unit = "moveTo"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo */
@send
external quadraticCurveTo: (t, ~cpx: float, ~cpy: float, ~x: float, ~y: float) => unit =
  "quadraticCurveTo"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/rect */
@send
external rect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"

/** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/roundRect */
@send
external roundRect: (t, ~x: float, ~y: float, ~w: float, ~h: float, ~r: float) => unit = "roundRect"