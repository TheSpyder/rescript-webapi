open Webapi.Canvas
open Webapi.Dom
open Path2d

let path = make(
  ~d="M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223" ++
  ",0,12.425,6.179,13.079,13.543 c0,0,0.353,1.828-0.424,5.119c-1.058,4.482" ++
  "-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021" ++
  "-6.898-11.503 c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2" ++ ",13.159,2C18.522,2,22.832,5.343,24.85,10.126z",
  (),
)

// common things
path->closePath
path->moveTo(~x=1., ~y=1.)
path->lineTo(~x=1., ~y=2.)
path->quadraticCurveTo(~cpx=1., ~cpy=1., ~x=1., ~y=1.)
path->bezierCurveTo(~cp1x=1., ~cp1y=1., ~cp2x=2., ~cp2y=2., ~x=4., ~y=4.)
path->arc(~x=1., ~y=1., ~r=4., ~startAngle=1., ~endAngle=3., ~counterClockWise=true, ())
path->arcTo(~x1=1., ~y1=1., ~x2=2., ~y2=2., ~r=4.)
path->ellipse(
  ~x=1.,
  ~y=1.,
  ~rx=4.,
  ~ry=8.,
  ~rtn=4.,
  ~startAngle=1.,
  ~endAngle=3.,
  ~counterClockWise=true,
  (),
)
path->rect(~x=0., ~y=0., ~w=10., ~h=10.)
path->roundRect(~x=0., ~y=0., ~w=10., ~h=10., ~r=10.)
// end common things

let canvasEl: Dom.element = document->Document.createElement("canvas")
let ctx = canvasEl->CanvasElement.getContext2d

ctx->Canvas2d.fillPath2d(path)
ctx->Canvas2d.strokePath2d(path)