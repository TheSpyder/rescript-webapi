open Webapi.Canvas
open Webapi.Canvas.WebGl
open Webapi.Dom

let canvasEl: Dom.element = document->Document.createElement("canvas")
let ctx: glT = canvasEl->CanvasElement.getContextWebGl

// there is no meaning to these numbers, they're just to make code generate

ctx->clear(5)
ctx->clearColor(0., 1., 2., 3.)
ctx->enable(5)
ctx->disable(5)
ctx->blendFunc(0, 1)
ctx->cullFace(5)
let buf: bufferT = ctx->createBuffer
ctx->deleteBuffer(buf)
ctx->bindBuffer(5, buf)
ctx->bufferData(5, Js.Typed_array.Uint16Array.fromLength(5), 5)
ctx->bufferFloatData(5, Js.Typed_array.Float32Array.fromLength(5), 5)
let program = ctx->createProgram
ctx->linkProgram(program)
ctx->useProgram(program)
let programlog: string = ctx->getProgramInfoLog(program)
ctx->bindAttribLocation(program, 5, "")
let shader: shaderT = ctx->createShader(5)
ctx->shaderSource(shader, "")
ctx->compileShader(shader)
ctx->attachShader(program, shader)
let shaderlog: string = ctx->getShaderInfoLog(shader)
ctx->drawElements(0, 1, 2, 3)
ctx->enableVertexAttribArray(5)
ctx->vertexAttribPointer(0, 1, 2, false, 3, 4)
let loc: int = ctx->getAttribLocation(program, "")
ctx->drawArrays(0, 1, 2)
