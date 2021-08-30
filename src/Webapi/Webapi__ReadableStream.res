module type Reader = {
  type t
  type closed

  @send external closed: t => Js.Promise.t<closed> = ""
  @send external cancel: t => Js.Promise.t<unit> = ""
  @send external cancelWith: (t, string) => Js.Promise.t<string> = "cancel"
  @send external releaseLock: t => unit = ""
}

module rec DefaultReader: {
  include Reader
  @send external read: t => Js.Promise.t<Fetch__Iterator.Next.t<string>> = ""
} = DefaultReader

module rec BYOBReader: {
  include Reader
} = BYOBReader

// [@send]  external read: t => view => Js.Promise.t(Fetch__Iterator.Next.t(string)) = "read";

type t = Fetch.readableStream

@get external locked: t => bool = ""
@send external cancel: t => Js.Promise.t<unit> = ""
@send external cancelWith: (t, string) => Js.Promise.t<string> = "cancel"
@send external getReader: t => DefaultReader.t = ""
@send
external getReaderBYOB: (t, @as(json`{"mode": "byob"}`) _) => BYOBReader.t = "getReader"
@send external tee: t => (t, t) = ""
