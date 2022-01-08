type t = {
  // This always returns "utf-8"
  encoding: string,
}

@new external make: unit => t = "TextEncoder"

@send external encode: (t, string) => Js.TypedArray2.Uint8Array.t = "encode"

type encodeIntoResult = {
  read: int,
  written: int,
}

@send
external encodeInto: (t, string, Js.TypedArray2.Uint8Array.t) => encodeIntoResult = "encodeInto"
