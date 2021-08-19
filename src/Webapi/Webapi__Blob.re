module Impl = (T: {type t;}) => {
  [@send] external arrayBuffer: T.t => Js.Promise.t(Js.Typed_array.ArrayBuffer.t);

  [@get] external size: T.t => float;

  [@send] external slice: (T.t, ~start: int=?, ~end_: int=?, ~contentType: string=?, unit) => T.t;

  /** @since 0.19.0 */ [@send] external stream: T.t => Webapi__ReadableStream.t;

  [@send] external text: T.t => Js.Promise.t(string);

  [@get] external type_: T.t => string = "type";
};

type t = Fetch.blob;

include Impl({
  type nonrec t = t;
});

// [@new] external make: ... = "Blob";
