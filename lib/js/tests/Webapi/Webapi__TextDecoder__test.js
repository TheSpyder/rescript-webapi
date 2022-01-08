'use strict';

var Webapi__TextDecoder = require("../../src/Webapi/Webapi__TextDecoder.js");

var decoder1 = new TextDecoder();

var decoder2 = Webapi__TextDecoder.makeWithOptions(undefined, true, true, undefined);

var message = new Uint8Array([
      72,
      101,
      108,
      108,
      111
    ]);

console.log(decoder1.decode(message));

console.log(Webapi__TextDecoder.decodeStream(decoder1, message));

exports.decoder1 = decoder1;
exports.decoder2 = decoder2;
exports.message = message;
/* decoder1 Not a pure module */
