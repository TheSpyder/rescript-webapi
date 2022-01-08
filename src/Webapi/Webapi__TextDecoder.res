type t = {
  encoding: string,
  fatal: bool,
  ignoreBOM: bool,
}

type decoderOptions

type decodeOptions

%%private(
  @new external _makeWithOptions: (string, decoderOptions) => t = "TextDecoder"

  @obj
  external makeDecoderOptions: (
    ~fatal: option<bool>=?,
    ~ignoreBOM: option<bool>=?,
    unit,
  ) => decoderOptions = ""
)

@new external make: unit => t = "TextDecoder"

let makeWithOptions = (~encoding="utf-8", ~fatal=?, ~ignoreBOM=?, ()) =>
  _makeWithOptions(encoding, makeDecoderOptions(~fatal, ~ignoreBOM, ()))

%%private(
  @obj external makeDecodeOptions: (~stream: bool) => decodeOptions = ""

  @send external _decodeWithOptions: (t, Js.TypedArray2.Uint8Array.t, decodeOptions) => t = "decode"
)

@send external decode: (t, Js.TypedArray2.Uint8Array.t) => string = "decode"

let decodeStream = (t, array) => _decodeWithOptions(t, array, makeDecodeOptions(~stream=true))
