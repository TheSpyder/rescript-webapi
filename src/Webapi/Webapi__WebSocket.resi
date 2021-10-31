open Js.TypedArray2

type readyState
type t<'binaryType> = private {
  binaryType: [#blob | #arraybuffer],
  bufferedAmount: float,
  extensions: string,
  protocol: string,
  readyState: readyState,
  url: string,
}
@new external make: string => t<Webapi__Blob.t> = "WebSocket"
let makeArrayBuffer: string => t<array_buffer>

@val @scope("WebSocket") external readyStateClosing: readyState = "CLOSING"
@val @scope("WebSocket") external readyStateClosed: readyState = "CLOSED"
@val @scope("WebSocket") external readyStateConnected: readyState = "CONNECTING"
@val @scope("WebSocket") external readyStateOpen: readyState = "OPEN"

let isOpen: t<'binaryType> => bool

@send external close: t<'binaryType> => unit = "close"
@send external closeWithReason: (t<'binaryType>, ~code: int, ~reason: string) => unit = "close"

@send
external addOpenListener: (t<'binaryType>, @as("open") _, Webapi__Dom__Event.t => unit) => unit =
  "addEventListener"
@send
external removeOpenListener: (t<'binaryType>, @as("open") _, Webapi__Dom__Event.t => unit) => unit =
  "removeEventListener"

type closeEvent = private {
  code: int,
  reason: string,
  wasClean: bool,
}
@send
external addCloseListener: (t<'binaryType>, @as("close") _, closeEvent => unit) => unit =
  "addEventListener"
@send
external removeCloseListener: (t<'binaryType>, @as("close") _, closeEvent => unit) => unit =
  "removeEventListener"

@send
external addErrorListener: (t<'binaryType>, @as("error") _, Webapi__Dom__Event.t => unit) => unit =
  "addEventListener"
@send
external removeErrorListener: (
  t<'binaryType>,
  @as("error") _,
  Webapi__Dom__Event.t => unit,
) => unit = "removeEventListener"

type messageEvent<'binaryType> = {
  data: Js.Json.t,
  origin: string,
  lastEventId: string,
}
@send
external addMessageListener: (
  t<'binaryType>,
  @as("message") _,
  messageEvent<'binaryType> => unit,
) => unit = "addEventListener"
@send
external removeMessageListener: (
  t<'binaryType>,
  @as("message") _,
  messageEvent<'binaryType> => unit,
) => unit = "removeEventListener"

@send external sendText: (t<'binaryType>, string) => unit = "send"
@send external sendBlob: (t<'binaryType>, Webapi__Blob.t) => unit = "send"
@send external sendArrayBuffer: (t<'binaryType>, array_buffer) => unit = "send"
@send external sendInt8Array: (t<'binaryType>, Int8Array.t) => unit = "send"
@send external sendInt16Array: (t<'binaryType>, Int16Array.t) => unit = "send"
@send external sendInt32Array: (t<'binaryType>, Int32Array.t) => unit = "send"
@send external sendUint8Array: (t<'binaryType>, Uint8Array.t) => unit = "send"
@send external sendUint8ClampedArray: (t<'binaryType>, Uint8ClampedArray.t) => unit = "send"
@send external sendUint16Array: (t<'binaryType>, Uint16Array.t) => unit = "send"
@send external sendUint32Array: (t<'binaryType>, Uint32Array.t) => unit = "send"
@send external sendFloat32Array: (t<'binaryType>, Float32Array.t) => unit = "send"
@send external sendFloat64Array: (t<'binaryType>, Float64Array.t) => unit = "send"
@send external sendDataView: (t<'binaryType>, DataView.t) => unit = "send"

@get external unsafeMessageAsBinary: messageEvent<'binaryType> => 'binaryType = "data"
@get external unsafeMessageAsText: messageEvent<'binaryType> => string = "data"

let messageIsText: messageEvent<'binaryType> => bool
let messageAsText: messageEvent<'binaryType> => option<string>
let messageAsBinary: messageEvent<'binaryType> => option<'binaryType>
