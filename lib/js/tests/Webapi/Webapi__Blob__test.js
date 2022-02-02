'use strict';


var test_blob = new Blob([]);

var test_arrayBuffer = test_blob.arrayBuffer().then(function (buffer) {
      return buffer.byteLength;
    });

var test_size = test_blob.size;

var test_slice = test_blob.slice(0, undefined, undefined);

var test_stream = test_blob.stream();

var test_text = test_blob.text().then(function (string) {
      return Promise.resolve((console.log(string), undefined));
    });

var test_type = test_blob.type;

var test_blobPropertyBag = {
  type: "text/plain",
  endings: "transparent"
};

var test_blobPropertyBagTypeOnly = {
  type: "text/plain"
};

var test_blobPropertyBagNone = {};

var test_blobPart_blob = new Blob([]);

var test_blobPart_arrayBuffer = test_blob.arrayBuffer().then(function (buffer) {
      return Promise.resolve(buffer);
    });

var test_blobPart_int8Array = new Int8Array(10);

var test_blobPart_uint8Array = new Uint8Array(10);

var test_blobPart_uint8ClampedArray = new Uint8ClampedArray(10);

var test_blobPart_int16Array = new Int16Array(10);

var test_blobPart_int32Array = new Int32Array(10);

var test_blobPart_uint32Array = new Uint32Array(10);

var test_blobPart_float32 = new Float32Array(10);

var test_blobPart_float64Array = new Float64Array(10);

var test_blobPart_dataView = test_blob.arrayBuffer().then(function (buffer) {
      return Promise.resolve(new DataView(buffer));
    });

var test_blobWithOptions = new Blob(["hello"], {});

var test_blobPart_string = "hello";

exports.test_blob = test_blob;
exports.test_arrayBuffer = test_arrayBuffer;
exports.test_size = test_size;
exports.test_slice = test_slice;
exports.test_stream = test_stream;
exports.test_text = test_text;
exports.test_type = test_type;
exports.test_blobPropertyBag = test_blobPropertyBag;
exports.test_blobPropertyBagTypeOnly = test_blobPropertyBagTypeOnly;
exports.test_blobPropertyBagNone = test_blobPropertyBagNone;
exports.test_blobPart_string = test_blobPart_string;
exports.test_blobPart_blob = test_blobPart_blob;
exports.test_blobPart_arrayBuffer = test_blobPart_arrayBuffer;
exports.test_blobPart_int8Array = test_blobPart_int8Array;
exports.test_blobPart_uint8Array = test_blobPart_uint8Array;
exports.test_blobPart_uint8ClampedArray = test_blobPart_uint8ClampedArray;
exports.test_blobPart_int16Array = test_blobPart_int16Array;
exports.test_blobPart_int32Array = test_blobPart_int32Array;
exports.test_blobPart_uint32Array = test_blobPart_uint32Array;
exports.test_blobPart_float32 = test_blobPart_float32;
exports.test_blobPart_float64Array = test_blobPart_float64Array;
exports.test_blobPart_dataView = test_blobPart_dataView;
exports.test_blobWithOptions = test_blobWithOptions;
/* test_blob Not a pure module */
