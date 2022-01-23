type t /* Main type, representing the 2d canvas rendering context object */
type gradient
type pattern
type measureText

/*
 * FIXME: canvasImageSource should have the following items:
 *
 *  type canvasImageSource = [
 *    | #HtmlImageElement(Webapi__Dom__HtmlImageElement.t)
 *    | #HtmlSVGElement(Webapi__Dom__HtmlSVGElement.t)
 *    | #HtmlVideoElement(Webapi__Dom__HtmlVideoElement.t)
 *    | #HtmlCanvasElement(Webapi__Dom__HtmlCanvasElement.t)
 *    | #HtmlCanvasElement(Webapi__ImageBitmap.t)           // TODO: where should this go?
 *    | #OffScreenCanvas(Webapi__Canvas__OffscreenCanvas.t) // TODO: where should this go?
 *  ]
 *
 * Also note that at the current time @unwrap requires canvasImageSource to be inlined.
 * The following functions should have this inlined:
 * - drawImage
 * - drawImageScale
 * - drawImageFull
 * - createPattern  // TODO: this takes a Dom.Element currently.  This should be a canvasImageSource
 * - createImageBitmap
 */
type canvasImageSource = [#HtmlImageElement(Webapi__Dom__HtmlImageElement.t)]

/* Sub-modules (and their interfaces) for string enum arguments: */
module type CompositeType = {
  type t = private string

  let sourceOver: t
  let sourceIn: t
  let sourceOut: t
  let sourceAtop: t
  let destinationOver: t
  let destinationIn: t
  let destinationOut: t
  let destinationAtop: t
  let lighter: t
  let copy: t
  let xor: t
}

module Composite: CompositeType = {
  type t = string

  let sourceOver: t = "source-over"
  let sourceIn: t = "source-in"
  let sourceOut: t = "source-out"
  let sourceAtop: t = "source-atop"
  let destinationOver: t = "destination-over"
  let destinationIn: t = "destination-in"
  let destinationOut: t = "destination-out"
  let destinationAtop: t = "destination-atop"
  let lighter: t = "lighter"
  let copy: t = "copy"
  let xor: t = "xor"
}

module type LineCapType = {
  type t = private string

  let butt: t
  let round: t
  let square: t
}

module LineCap: LineCapType = {
  type t = string

  let butt: t = "butt"
  let round: t = "round"
  let square: t = "square"
}

module type LineJoinType = {
  type t = private string

  let round: t
  let bevel: t
  let miter: t
}

module LineJoin: LineJoinType = {
  type t = string

  let round: t = "round"
  let bevel: t = "bevel"
  let miter: t = "miter"
}

type rec image<'a> =
  | Number: image<float>
  | ImageData: image<Webapi__Dom__Image.t>

type rec style<_> =
  | String: style<string>
  | Gradient: style<gradient>
  | Pattern: style<pattern>

/* 2d Canvas API, following https://simon.html5.org/dump/html5-canvas-cheat-sheet.html */
@send external save: t => unit = "save"
@send external restore: t => unit = "restore"

/* Transformation */
@send external scale: (t, ~x: float, ~y: float) => unit = "scale"
@send external rotate: (t, float) => unit = "rotate"
@send external translate: (t, ~x: float, ~y: float) => unit = "translate"
@send
external transform: (
  t,
  ~m11: float,
  ~m12: float,
  ~m21: float,
  ~m22: float,
  ~dx: float,
  ~dy: float,
) => unit = "transform"
@send
external setTransform: (
  t,
  ~m11: float,
  ~m12: float,
  ~m21: float,
  ~m22: float,
  ~dx: float,
  ~dy: float,
) => unit = "setTransform"

/* Compositing */
@set external globalAlpha: (t, float) => unit = "globalAlpha"
@set external globalCompositeOperation: (t, Composite.t) => unit = "globalCompositeOperation"

/* Line Styles */
@set external lineWidth: (t, float) => unit = "lineWidth"
@set external lineCap: (t, LineCap.t) => unit = "lineCap"
@set external lineJoin: (t, LineJoin.t) => unit = "lineJoin"
@set external miterLimit: (t, float) => unit = "miterLimit"

/* Colors, Styles, and Shadows */
@set external setFillStyle: (t, @ignore style<'a>, 'a) => unit = "fillStyle"
@set external setStrokeStyle: (t, @ignore style<'a>, 'a) => unit = "strokeStyle"

let reifyStyle = (type a, x: 'a): (style<a>, a) => {
  let isCanvasGradient: 'a => bool = %raw(`
    function(x) { return x instanceof CanvasGradient; }
  `)

  let isCanvasPattern: 'a => bool = %raw(`
    function(x) { return x instanceof CanvasPattern; }
  `)

  (
    if Js.typeof(x) == "string" {
      Obj.magic(String)
    } else if isCanvasGradient(x) {
      Obj.magic(Gradient)
    } else if isCanvasPattern(x) {
      Obj.magic(Pattern)
    } else {
      invalid_arg(
        "Unknown canvas style kind. Known values are: String, CanvasGradient, CanvasPattern",
      )
    },
    Obj.magic(x),
  )
}

@get external fillStyle: t => 'a = "fillStyle"
@get external strokeStyle: t => 'a = "strokeStyle"

let fillStyle = (ctx: t) => ctx->fillStyle->reifyStyle

let strokeStyle = (ctx: t) => ctx->strokeStyle->reifyStyle

@set external shadowOffsetX: (t, float) => unit = "shadowOffsetX"
@set external shadowOffsetY: (t, float) => unit = "shadowOffsetY"
@set external shadowBlur: (t, float) => unit = "shadowBlur"
@set external shadowColor: (t, string) => unit = "shadowColor"

/* Gradients */
@send
external createLinearGradient: (t, ~x0: float, ~y0: float, ~x1: float, ~y1: float) => gradient =
  "createLinearGradient"
@send
external createRadialGradient: (
  t,
  ~x0: float,
  ~y0: float,
  ~x1: float,
  ~y1: float,
  ~r0: float,
  ~r1: float,
) => gradient = "createRadialGradient"
@send external addColorStop: (gradient, float, string) => unit = "addColorStop"
@val
external createPattern: (
  t,
  Dom.element,
  @string
  [
    | #repeat
    | @as("repeat-x") #repeatX
    | @as("repeat-y") #repeatY
    | @as("no-repeat") #noRepeat
  ],
) => pattern = "createPattern"

/* Paths */
@send external beginPath: t => unit = "beginPath"
@send external closePath: t => unit = "closePath"
@send external fill: t => unit = "fill"
@send external stroke: t => unit = "stroke"
@send external clip: t => unit = "clip"
@send external moveTo: (t, ~x: float, ~y: float) => unit = "moveTo"
@send external lineTo: (t, ~x: float, ~y: float) => unit = "lineTo"
@send
external quadraticCurveTo: (t, ~cp1x: float, ~cp1y: float, ~x: float, ~y: float) => unit =
  "quadraticCurveTo"
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
@send
external arcTo: (t, ~x1: float, ~y1: float, ~x2: float, ~y2: float, ~r: float) => unit = "arcTo"
@send
external arc: (
  t,
  ~x: float,
  ~y: float,
  ~r: float,
  ~startAngle: float,
  ~endAngle: float,
  ~anticw: bool,
) => unit = "arc"
@send external rect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"
@send external isPointInPath: (t, ~x: float, ~y: float) => bool = "isPointInPath"

/* Path2D */
type path2d
@new external newPath2D: string => path2d = "Path2D"
@send external fillPath2D: (t, path2d) => unit = "fill"
@send external strokePath2D: (t, path2d) => unit = "stroke"

/* Text */
@set external font: (t, string) => unit = "font"
@set external textAlign: (t, string) => unit = "textAlign"
@set external textBaseline: (t, string) => unit = "textBaseline"
@send
external fillText: (t, string, ~x: float, ~y: float, ~maxWidth: float=?, @ignore unit) => unit =
  "fillText"
@send
external strokeText: (t, string, ~x: float, ~y: float, ~maxWidth: float=?, @ignore unit) => unit =
  "strokeText"
@send external measureText: (t, string) => measureText = "measureText"
@get external width: measureText => float = "width"

/* Rectangles */
@send external fillRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "fillRect"
@send external strokeRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "strokeRect"
@send external clearRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "clearRect"

/* Pixel maniplation */
@send
external createImageDataCoords: (t, ~width: float, ~height: float) => Webapi__Dom__Image.t =
  "createImageData"
@send
external createImageDataFromImage: (t, Webapi__Dom__Image.t) => Webapi__Dom__Image.t =
  "createImageData"

@send
external getImageData: (t, ~sx: float, ~sy: float, ~sw: float, ~sh: float) => Webapi__Dom__Image.t = "getImageData"

@send
external putImageData: (t, ~imageData: Webapi__Dom__Image.t, ~dx: float, ~dy: float) => unit = "putImageData"

@send
external putImageDataWithDirtyRect: (
  t,
  ~imageData: Webapi__Dom__Image.t,
  ~dx: float,
  ~dy: float,
  ~dirtyX: float,
  ~dirtyY: float,
  ~dirtyWidth: float,
  ~dirtyHeight: float,
) => unit = "putImageData"

/* Image rendering */
@send
external drawImage: (
  t,
  // should match canvasImageSource
  @unwrap [#HtmlImageElement(Webapi__Dom__HtmlImageElement.t)],
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

@send
external drawImageScale: (
  t,
  // should match canvasImageSource
  @unwrap [#HtmlImageElement(Webapi__Dom__HtmlImageElement.t)],
  ~dx: float,
  ~dy: float,
  ~dWidth: float,
  ~dHeight: float,
) => unit = "drawImage"

@send
external drawImageFull: (
  t,
  // should match canvasImageSource
  @unwrap [#HtmlImageElement(Webapi__Dom__HtmlImageElement.t)],
  ~sx: float,
  ~sy: float,
  ~sWidth: float,
  ~sHeight: float,
  ~dx: float,
  ~dy: float,
  ~dWidth: float,
  ~dHeight: float,
) => unit = "drawImage"
