open Webapi.Blob

let test_blob: t = make([])

let test_arrayBuffer: Js.Promise.t<int> =
  test_blob
  ->arrayBuffer
  ->Promise.thenResolve(buffer => buffer->Js.Typed_array.ArrayBuffer.byteLength)

let test_size: float = test_blob->size

let test_slice: t = test_blob->slice(~start=0, ())

let test_stream: Webapi.ReadableStream.t = test_blob->stream

let test_text: Js.Promise.t<unit> =
  test_blob->text->Promise.then(string => string->Js.log->Promise.resolve)

let test_type: string = test_blob->type_

let test_blobPropertyBag: blobPropertyBag = makeBlobPropertyBag(
  ~_type="text/plain",
  ~endings=#transparent,
  (),
)
let test_blobPropertyBagTypeOnly: blobPropertyBag = makeBlobPropertyBag(~_type="text/plain", ())
let test_blobPropertyBagNone: blobPropertyBag = makeBlobPropertyBag()

let test_blobPart_string: blobPart = stringToBlobPart("hello")
let test_blobPart_blob: blobPart = blobToBlobPart(make([]))
let test_blobPart_arrayBuffer: Promise.t<blobPart> =
  test_blob->arrayBuffer->Promise.then(buffer => buffer->arrayBufferToBlobPart->Promise.resolve)

let test_blobPart_int8Array: blobPart = int8ArrayToBlobPart(Js.Typed_array.Int8Array.fromLength(10))
let test_blobPart_uint8Array: blobPart = uint8ArrayToBlobPart(
  Js.Typed_array.Uint8Array.fromLength(10),
)
let test_blobPart_uint8ClampedArray: blobPart = uint8ClampedArrayToBlobPart(
  Js.Typed_array.Uint8ClampedArray.fromLength(10),
)
let test_blobPart_int16Array: blobPart = int16ArrayToBlobPart(
  Js.Typed_array.Int16Array.fromLength(10),
)
let test_blobPart_int32Array: blobPart = int32ArrayToBlobPart(
  Js.Typed_array.Int32Array.fromLength(10),
)
let test_blobPart_uint32Array: blobPart = uint32ArrayToBlobPart(
  Js.Typed_array.Uint32Array.fromLength(10),
)
let test_blobPart_float32: blobPart = float32ToBlobPart(Js.Typed_array.Float32Array.fromLength(10))
let test_blobPart_float64Array: blobPart = float64ArrayToBlobPart(
  Js.Typed_array.Float64Array.fromLength(10),
)
let test_blobPart_dataView: Promise.t<blobPart> =
  test_blob
  ->arrayBuffer
  ->Promise.then(buffer =>
    dataViewToBlobPart(Js.Typed_array.DataView.make(buffer))->Promise.resolve
  )

let test_blobWithOptions: t = makeWithOptions([stringToBlobPart("hello")], makeBlobPropertyBag())
