'use strict';


var path = new Path2D("M24.85,10.126c2.018-4.783,6.628-8.125,11.99-8.125c7.223,0,12.425,6.179,13.079,13.543 c0,0,0.353,1.828-0.424,5.119c-1.058,4.482-3.545,8.464-6.898,11.503L24.85,48L7.402,32.165c-3.353-3.038-5.84-7.021-6.898-11.503 c-0.777-3.291-0.424-5.119-0.424-5.119C0.734,8.179,5.936,2,13.159,2C18.522,2,22.832,5.343,24.85,10.126z");

path.moveTo(1, 1);

path.lineTo(1, 2);

path.rect(1, 2, 10, 10);

path.bezierCurveTo(1, 2, 2, 2, 4, 4);

var canvasEl = document.createElement("canvas");

var ctx = canvasEl.getContext("2d");

ctx.fill(path);

exports.path = path;
exports.canvasEl = canvasEl;
exports.ctx = ctx;
/* path Not a pure module */
