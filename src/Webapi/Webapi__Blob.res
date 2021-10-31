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

// [@new] external make: ... = "Blob";
