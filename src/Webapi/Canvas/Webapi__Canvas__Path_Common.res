module type ModuleWithT = {
  type t
}

/**
 * Named parameters have 1~3 of lenght, should resemble MDN/typescript docs/types.
 * This module exposes the typescript CanvasPath interface
 * https://github.com/microsoft/TypeScript/blob/46410044add2e9f53cea58e445de18dcda53443f/src/lib/dom.generated.d.ts#L5455
 */
module Make = (M: ModuleWithT) => {
  // type t = M.t
  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/arc */
  @send
  external arc: (
    M.t,
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
  external arcTo: (M.t, ~x1: float, ~y1: float, ~x2: float, ~y2: float, ~r: float) => unit = "arcTo"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo */
  @send
  external bezierCurveTo: (
    M.t,
    ~cp1x: float,
    ~cp1y: float,
    ~cp2x: float,
    ~cp2y: float,
    ~x: float,
    ~y: float,
  ) => unit = "bezierCurveTo"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/closePath*/
  @send
  external closePath: M.t => unit = "closePath"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/ellipse */
  @send
  external ellipse: (
    M.t,
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
  external lineTo: (M.t, ~x: float, ~y: float) => unit = "lineTo"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/moveTo */
  @send
  external moveTo: (M.t, ~x: float, ~y: float) => unit = "moveTo"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo */
  @send
  external quadraticCurveTo: (M.t, ~cpx: float, ~cpy: float, ~x: float, ~y: float) => unit =
    "quadraticCurveTo"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/rect */
  @send
  external rect: (M.t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"

  /** https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/roundRect */
  @send
  external roundRect: (M.t, ~x: float, ~y: float, ~w: float, ~h: float, ~r: float) => unit =
    "roundRect"
}
