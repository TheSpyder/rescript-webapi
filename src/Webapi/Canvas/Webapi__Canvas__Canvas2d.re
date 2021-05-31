type t; /* Main type, representing the 2d canvas rendering context object */
type gradient;
type pattern;
type measureText;

/* Sub-modules (and their interfaces) for string enum arguments: */
module type CompositeType = {
  type t = pri string;

  let sourceOver: t;
  let sourceIn: t;
  let sourceOut: t;
  let sourceAtop: t;
  let destinationOver: t;
  let destinationIn: t;
  let destinationOut: t;
  let destinationAtop: t;
  let lighter: t;
  let copy: t;
  let xor: t;
};

module Composite: CompositeType = {
  type t = string;

  let sourceOver: t = "source-over";
  let sourceIn: t = "source-in";
  let sourceOut: t = "source-out";
  let sourceAtop: t = "source-atop";
  let destinationOver: t = "destination-over";
  let destinationIn: t = "destination-in";
  let destinationOut: t = "destination-out";
  let destinationAtop: t = "destination-atop";
  let lighter: t = "lighter";
  let copy: t = "copy";
  let xor: t = "xor";
};

module type LineCapType = {
  type t = pri string;

  let butt: t;
  let round: t;
  let square: t;
};

module LineCap: LineCapType = {
  type t = string;

  let butt: t = "butt";
  let round: t = "round";
  let square: t = "square";
};

module type LineJoinType = {
  type t = pri string;

  let round: t;
  let bevel: t;
  let miter: t;
};

module LineJoin: LineJoinType = {
  type t = string;

  let round: t = "round";
  let bevel: t = "bevel";
  let miter: t = "miter";
};

type image('a) =
  | Number: image(float)
  | ImageData: image(Webapi__Dom__Image.t);

type style(_) =
  | String: style(string)
  | Gradient: style(gradient)
  | Pattern: style(pattern);

/* 2d Canvas API, following https://simon.html5.org/dump/html5-canvas-cheat-sheet.html */
[@send] external save: t => unit;
[@send] external restore: t => unit;

/* Transformation */
[@send] external scale: (t, ~x: float, ~y: float) => unit;
[@send] external rotate: (t, float) => unit;
[@send] external translate: (t, ~x: float, ~y: float) => unit;
[@send]
external transform:
  (t, ~m11: float, ~m12: float, ~m21: float, ~m22: float, ~dx: float, ~dy: float) => unit;
[@send]
external setTransform:
  (t, ~m11: float, ~m12: float, ~m21: float, ~m22: float, ~dx: float, ~dy: float) => unit;

/* Compositing */
[@set] external globalAlpha: (t, float) => unit;
[@set] external globalCompositeOperation: (t, Composite.t) => unit;

/* Line Styles */
[@set] external lineWidth: (t, float) => unit;
[@set] external lineCap: (t, LineCap.t) => unit;
[@set] external lineJoin: (t, LineJoin.t) => unit;
[@set] external miterLimit: (t, float) => unit;

/* Colors, Styles, and Shadows */
[@set] external setFillStyle: (t, [@ignore] style('a), 'a) => unit = "fillStyle";
[@set] external setStrokeStyle: (t, [@ignore] style('a), 'a) => unit = "strokeStyle";

let reifyStyle = (type a, x: 'a): (style(a), a) => {
  let isCanvasGradient: 'a => bool = [%raw
    {|
    function(x) { return x instanceof CanvasGradient; }
  |}
  ];

  let isCanvasPattern: 'a => bool = [%raw
    {|
    function(x) { return x instanceof CanvasPattern; }
  |}
  ];

  (
    if (Js.typeof(x) == "string") {
      Obj.magic(String);
    } else if (isCanvasGradient(x)) {
      Obj.magic(Gradient);
    } else if (isCanvasPattern(x)) {
      Obj.magic(Pattern);
    } else {
      invalid_arg(
        "Unknown canvas style kind. Known values are: String, CanvasGradient, CanvasPattern",
      );
    },
    Obj.magic(x),
  );
};

[@get] external fillStyle: t => 'a;
[@get] external strokeStyle: t => 'a;

let fillStyle = (ctx: t) => ctx->fillStyle->reifyStyle;

let strokeStyle = (ctx: t) => ctx->strokeStyle->reifyStyle;

[@set] external shadowOffsetX: (t, float) => unit;
[@set] external shadowOffsetY: (t, float) => unit;
[@set] external shadowBlur: (t, float) => unit;
[@set] external shadowColor: (t, string) => unit;

/* Gradients */
[@send]
external createLinearGradient: (t, ~x0: float, ~y0: float, ~x1: float, ~y1: float) => gradient;
[@send]
external createRadialGradient:
  (t, ~x0: float, ~y0: float, ~x1: float, ~y1: float, ~r0: float, ~r1: float) => gradient;
[@send] external addColorStop: (gradient, float, string) => unit;
[@val]
external createPattern:
  (
    t,
    Dom.element,
    [@string] [
      | `repeat
      | [@as "repeat-x"] `repeatX
      | [@as "repeat-y"] `repeatY
      | [@as "no-repeat"] `noRepeat
    ]
  ) =>
  pattern;

/* Paths */
[@send] external beginPath: t => unit;
[@send] external closePath: t => unit;
[@send] external fill: t => unit;
[@send] external stroke: t => unit;
[@send] external clip: t => unit;
[@send] external moveTo: (t, ~x: float, ~y: float) => unit;
[@send] external lineTo: (t, ~x: float, ~y: float) => unit;
[@send] external quadraticCurveTo: (t, ~cp1x: float, ~cp1y: float, ~x: float, ~y: float) => unit;
[@send]
external bezierCurveTo:
  (t, ~cp1x: float, ~cp1y: float, ~cp2x: float, ~cp2y: float, ~x: float, ~y: float) => unit;
[@send] external arcTo: (t, ~x1: float, ~y1: float, ~x2: float, ~y2: float, ~r: float) => unit;
[@send]
external arc:
  (t, ~x: float, ~y: float, ~r: float, ~startAngle: float, ~endAngle: float, ~anticw: bool) => unit;
[@send] external rect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit;
[@send] external isPointInPath: (t, ~x: float, ~y: float) => bool;

/* Text */
[@set] external font: (t, string) => unit;
[@set] external textAlign: (t, string) => unit;
[@set] external textBaseline: (t, string) => unit;
[@send]
external fillText: (t, string, ~x: float, ~y: float, ~maxWidth: float=?, [@ignore] unit) => unit;
[@send]
external strokeText: (t, string, ~x: float, ~y: float, ~maxWidth: float=?, [@ignore] unit) => unit;
[@send] external measureText: (t, string) => measureText;
[@get] external width: measureText => float;

/* Rectangles */
[@send] external fillRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit;
[@send] external strokeRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit;
[@send] external clearRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit;

[@send]
external createImageDataCoords: (t, ~width: float, ~height: float) => Webapi__Dom__Image.t =
  "createImageData";
[@send]
external createImageDataFromImage: (t, Webapi__Dom__Image.t) => Webapi__Dom__Image.t =
  "createImageData";

[@send]
external getImageData: (t, ~sx: float, ~sy: float, ~sw: float, ~sh: float) => Webapi__Dom__Image.t;

[@send]
external putImageData: (t, ~imageData: Webapi__Dom__Image.t, ~dx: float, ~dy: float) => unit;

[@send]
external putImageDataWithDirtyRect:
  (
    t,
    ~imageData: Webapi__Dom__Image.t,
    ~dx: float,
    ~dy: float,
    ~dirtyX: float,
    ~dirtyY: float,
    ~dirtyWidth: float,
    ~dirtyHeight: float
  ) =>
  unit =
  "putImageData";
