'use strict';


var encoder = new TextEncoder();

console.log(encoder.encoding);

console.log(encoder.encode("Hello"));

var buffer = new Uint8Array([]);

var result = encoder.encodeInto("Hello", buffer);

console.log(result.read, result.written);

exports.encoder = encoder;
exports.buffer = buffer;
exports.result = result;
/* encoder Not a pure module */
