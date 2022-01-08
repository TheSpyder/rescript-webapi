open Js.TypedArray2
open Webapi.TextDecoder

let decoder1 = make()
let decoder2 = makeWithOptions(~fatal=true, ~ignoreBOM=true, ())

let message = Uint8Array.make([72, 101, 108, 108, 111])
decoder1->decode(message)->Js.log
decoder1->decodeStream(message)->Js.log
