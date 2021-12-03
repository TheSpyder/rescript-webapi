module Impl = (
  T: {
    type t
  },
) => {
  @send external arrayBuffer: T.t => Js.Promise.t<Js.Typed_array.ArrayBuffer.t> = "arrayBuffer"

  @get external size: T.t => float = "size"

  @send external slice: (T.t, ~start: int=?, ~end_: int=?, ~contentType: string=?, unit) => T.t = "slice"

  @send external stream: T.t => Webapi__ReadableStream.t = "stream"

  @send external text: T.t => Js.Promise.t<string> = "text"

  @get external type_: T.t => string = "type"
}

type t

include Impl({
  type t = t
})

type endingType = [#transparent | #native]

type blobPropertyBag

@obj
external makeBlobPropertyBag: (~_type: string=?, ~endings: endingType=?, unit) => blobPropertyBag = ""

type blobPart

@new external make: array<blobPart> => t = "Blob"
@new external makeWithOptions: (array<blobPart>, blobPropertyBag) => t = "Blob"

external stringToBlobPart: string => blobPart = "%identity"
external blobToBlobPart: t => blobPart = "%identity"
external arrayBufferToBlobPart: Js.Typed_array.ArrayBuffer.t => blobPart = "%identity"
external int8ArrayToBlobPart: Js.Typed_array.Int8Array.t => blobPart = "%identity"
external uint8ArrayToBlobPart: Js.Typed_array.Uint8Array.t => blobPart = "%identity"
external uint8ClampedArrayToBlobPart: Js.Typed_array.Uint8ClampedArray.t => blobPart = "%identity"
external int16ArrayToBlobPart: Js.Typed_array.Int16Array.t => blobPart = "%identity"
external int32ArrayToBlobPart: Js.Typed_array.Int32Array.t => blobPart = "%identity"
external uint32ArrayToBlobPart: Js.Typed_array.Uint32Array.t => blobPart = "%identity"
external float32ToBlobPart: Js.Typed_array.Float32Array.t => blobPart = "%identity"
external float64ArrayToBlobPart: Js.Typed_array.Float64Array.t => blobPart = "%identity"
external dataViewToBlobPart: Js.Typed_array.DataView.t => blobPart = "%identity"
