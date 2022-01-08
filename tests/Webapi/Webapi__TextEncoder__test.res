open Js.TypedArray2
open Webapi.TextEncoder

let encoder = make()

Js.log(encoder.encoding)

encoder->encode("Hello")->Js.log

let buffer = Uint8Array.make([])
let result = encoder->encodeInto("Hello", buffer)
Js.log2(result.read, result.written)
