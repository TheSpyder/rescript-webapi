open Webapi.Blob

let test_arrayBuffer = blob =>
  blob
  ->arrayBuffer
  ->Promise.then(buffer =>
    buffer->Js.Typed_array.ArrayBuffer.byteLength->Js.log->Promise.resolve
  )

let test_size = blob => blob->size->Js.log

let test_slice = blob => test_size(blob->slice(~start=0, ()))

let test_stream = blob => blob->stream

let test_text = blob => blob->text->Promise.then(string => string->Js.log->Promise.resolve)

let test_type = blob => blob->type_->Js.log
