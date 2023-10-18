open Webapi.ReadableStream

module DefaultReader__test = {
  open! DefaultReader

  let test_closed: t => Js.Promise.t<closed> = reader => closed(reader)

  let test_cancel: t => Promise.t<unit> = reader =>
    reader->cancel->Promise.then(() => "cancelled"->Js.log->Promise.resolve)

  let test_cancelWith: t => Promise.t<unit> = reader =>
    reader->cancelWith("reason")->Promise.then(reason => reason->Js.log->Promise.resolve)

  let test_releaseLock: t => unit = reader => releaseLock(reader)

  let test_read: t => Promise.t<unit> = reader =>
    reader
    ->read
    ->Promise.then(next =>
      next->Webapi__Iterator.value->Belt.Option.forEach(_, Js.log)->Promise.resolve
    )
}

let test_locked: t => bool = stream => locked(stream)

let test_cancel: t => Js.Promise.t<unit> = stream => cancel(stream)

let test_cancelWith: t => Js.Promise.t<string> = stream => stream->cancelWith("reason")

let test_getReader: t => DefaultReader.t = stream => getReader(stream)

let test_getReaderBYOB: t => BYOBReader.t = stream => getReaderBYOB(stream)

let test_tee = (stream: t) => {
  let (stream1: t, stream2: t) = tee(stream)

  stream1->cancel->ignore
  stream2->cancel->ignore
}
