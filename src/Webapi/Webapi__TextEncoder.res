type t

@new external make: unit => t = "TextEncoder"

@send external encode: (t, string) => Js.TypedArray2.Uint8Array.t = "encode"

type encodeIntoResult = {
  read: int,
  written: int,
}

@send
external encodeInto: (t, string, Js.TypedArray2.Uint8Array.t) => encodeIntoResult = "encodeInto"

// This always returns "utf-8"
@get external encoding: t => string = "encoding"
