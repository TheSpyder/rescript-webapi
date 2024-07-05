'use strict';


var path1 = new Path2D(undefined);

var path2 = new Path2D("M10 10 h 80 v 80 h -80 Z");

path1.addPath(path2);

exports.path1 = path1;
exports.path2 = path2;
/* path1 Not a pure module */
