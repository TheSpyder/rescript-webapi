'use strict';


var canvasEl = document.createElement("canvas");

var ctx = canvasEl.getContext("webgl");

ctx.clear(5);

ctx.clearColor(0, 1, 2, 3);

ctx.enable(5);

ctx.disable(5);

ctx.blendFunc(0, 1);

ctx.cullFace(5);

var buf = ctx.createBuffer();

ctx.deleteBuffer(buf);

ctx.bindBuffer(5, buf);

ctx.bufferData(5, new Uint16Array(5), 5);

ctx.bufferData(5, new Float32Array(5), 5);

var program = ctx.createProgram();

ctx.linkProgram(program);

ctx.useProgram(program);

var programlog = ctx.getProgramInfoLog(program);

ctx.bindAttribLocation(program, 5, "");

var shader = ctx.createShader(5);

ctx.shaderSource(shader, "");

ctx.compileShader(shader);

ctx.attachShader(program, shader);

var shaderlog = ctx.getShaderInfoLog(shader);

ctx.drawElements(0, 1, 2, 3);

ctx.enableVertexAttribArray(5);

ctx.vertexAttribPointer(0, 1, 2, false, 3, 4);

var loc = ctx.getAttribLocation(program, "");

ctx.drawArrays(0, 1, 2);

exports.canvasEl = canvasEl;
exports.ctx = ctx;
exports.buf = buf;
exports.program = program;
exports.programlog = programlog;
exports.shader = shader;
exports.shaderlog = shaderlog;
exports.loc = loc;
/* canvasEl Not a pure module */
