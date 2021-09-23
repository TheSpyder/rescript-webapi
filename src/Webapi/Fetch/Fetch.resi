type body
type bodyInit
type headers
type headersInit
type response
type request
type requestInit

/* external */
type arrayBuffer /* TypedArray */
type bufferSource /* Web IDL, either an arrayBuffer or arrayBufferView */
type formData /* XMLHttpRequest */
type readableStream /* Streams */
type urlSearchParams /* URL */
type abortController
type signal

@@ocaml.text(" File API ")

type blob
type file

type requestMethod =
  | Get
  | Head
  | Post
  | Put
  | Delete
  | Connect
  | Options
  | Trace
  | Patch
  | Other(string)

module AbortController: {
  /* Experimental API */
  type t = abortController

  /* Experimental API */
  @get external signal: t => signal = "signal"
  /* Experimental API */
  @bs.send.pipe(: t) external abort: unit = "abort"
  /* Experimental API */
  @new external make: unit => t = "AbortController"
}

type referrerPolicy =
  | None
  | NoReferrer
  | NoReferrerWhenDowngrade
  | SameOrigin
  | Origin
  | StrictOrigin
  | OriginWhenCrossOrigin
  | StrictOriginWhenCrossOrigin
  | UnsafeUrl

type requestType =
  | None /* default? unknown? just empty string in spec */
  | Audio
  | Font
  | Image
  | Script
  | Style
  | Track
  | Video

type requestDestination =
  | None /* default? unknown? just empty string in spec */
  | Document
  | Embed
  | Font
  | Image
  | Manifest
  | Media
  | Object
  | Report
  | Script
  | ServiceWorker
  | SharedWorker
  | Style
  | Worker
  | Xslt

type requestMode =
  | Navigate
  | SameOrigin
  | NoCORS
  | CORS

type requestCredentials =
  | Omit
  | SameOrigin
  | Include

type requestCache =
  | Default
  | NoStore
  | Reload
  | NoCache
  | ForceCache
  | OnlyIfCached

type requestRedirect =
  | Follow
  | Error
  | Manual

module HeadersInit: {
  type t = headersInit

  external make: {..} => t = "%identity"
  external makeWithDict: Js.Dict.t<string> => t = "%identity"
  external makeWithArray: array<(string, string)> => t = "%identity"
}

module Headers: {
  type t = headers

  @new external make: t = "Headers"
  @new external makeWithInit: headersInit => t = "Headers"

  @bs.send.pipe(: t) external append: (string, string) => unit = "append"
  @bs.send.pipe(: t) external delete: string => unit = "delete"
  /* entries */ /* very experimental */
  @bs.send.pipe(: t) @return({null_to_opt: null_to_opt})
  external get: string => option<string> = "get"
  @bs.send.pipe(: t) external has: string => bool = "has"
  /* keys */ /* very experimental */
  @bs.send.pipe(: t) external set: (string, string) => unit = "set"
  /* values */
  /* very experimental */
}

module BodyInit: {
  type t = bodyInit

  external make: string => t = "%identity"
  external makeWithBlob: blob => t = "%identity"
  external makeWithBufferSource: bufferSource => t = "%identity"
  external makeWithFormData: formData => t = "%identity"
  external makeWithUrlSearchParams: urlSearchParams => t = "%identity"
}

module Body: {
  type t = body

  @get external body: t => readableStream = "body"
  @get external bodyUsed: t => bool = "bodyUsed"

  @bs.send.pipe(: t) external arrayBuffer: Js.Promise.t<arrayBuffer> = "arrayBuffer"
  @bs.send.pipe(: t) external blob: Js.Promise.t<blob> = "blob"
  @bs.send.pipe(: t) external formData: Js.Promise.t<formData> = "formData"
  @bs.send.pipe(: t) external json: Js.Promise.t<Js.Json.t> = "json"
  @bs.send.pipe(: t) external text: Js.Promise.t<string> = "text"
}

module RequestInit: {
  type t = requestInit

  let make: (
    ~method_: requestMethod=?,
    ~headers: headersInit=?,
    ~body: bodyInit=?,
    ~referrer: string=?,
    ~referrerPolicy: referrerPolicy=?,
    ~mode: requestMode=?,
    ~credentials: requestCredentials=?,
    ~cache: requestCache=?,
    ~redirect: requestRedirect=?,
    ~integrity: string=?,
    ~keepalive: bool=?,
    ~signal: signal=?,
    unit,
  ) => t
}

module Request: {
  type t = request

  @new external make: string => t = "Request"
  @new external makeWithInit: (string, requestInit) => t = "Request"
  @new external makeWithRequest: t => t = "Request"
  @new external makeWithRequestInit: (t, requestInit) => t = "Request"

  let method_: t => requestMethod
  @get external url: t => string = "url"
  @get external headers: t => headers = "headers"
  let type_: t => requestType
  let destination: t => requestDestination
  @get external referrer: t => string = "referrer"
  let referrerPolicy: t => referrerPolicy
  let mode: t => requestMode
  let credentials: t => requestCredentials
  let cache: t => requestCache
  let redirect: t => requestRedirect
  @get external integrity: t => string = "integrity"
  @get external keepalive: t => bool = "keepalive"
  @get external signal: t => signal = "signal"

  /* Body Impl */
  @get external body: t => readableStream = "body"
  @get external bodyUsed: t => bool = "bodyUsed"

  @bs.send.pipe(: t) external arrayBuffer: Js.Promise.t<arrayBuffer> = "arrayBuffer"
  @bs.send.pipe(: t) external blob: Js.Promise.t<blob> = "blob"
  @bs.send.pipe(: t) external formData: Js.Promise.t<formData> = "formData"
  @bs.send.pipe(: t) external json: Js.Promise.t<Js.Json.t> = "json"
  @bs.send.pipe(: t) external text: Js.Promise.t<string> = "text"
}

module Response: {
  type t = response

  @val external error: unit => t = "error"
  @val external redirect: string => t = "redirect"
  @val external redirectWithStatus: (string, int /* enum-ish */) => t = "redirect"
  @get external headers: t => headers = "headers"
  @get external ok: t => bool = "ok"
  @get external redirected: t => bool = "redirected"
  @get external status: t => int = "status"
  @get external statusText: t => string = "statusText"
  @get external type_: t => string = "type"
  @get external url: t => string = "url"

  @bs.send.pipe(: t) external clone: t = "clone"

  /* Body.Impl */
  @get external body: t => readableStream = "body"
  @get external bodyUsed: t => bool = "bodyUsed"

  @bs.send.pipe(: t) external arrayBuffer: Js.Promise.t<arrayBuffer> = "arrayBuffer"
  @bs.send.pipe(: t) external blob: Js.Promise.t<blob> = "blob"
  @bs.send.pipe(: t) external formData: Js.Promise.t<formData> = "formData"
  @bs.send.pipe(: t) external json: Js.Promise.t<Js.Json.t> = "json"
  @bs.send.pipe(: t) external text: Js.Promise.t<string> = "text"
}

module FormData: {
  module EntryValue: {
    @ocaml.doc(" This represents a
        {{: https://developer.mozilla.org/en-US/docs/Web/API/FormDataEntryValue} FormDataEntryValue}. ")
    type t

    @ocaml.doc(" [classify entryValue] safely casts the [entryValue] to its
        correct runtime type. ")
    let classify: t => [> #String(string) | #File(file)]
  }

  module Iterator = Fetch__Iterator
  type t = formData

  @new external make: unit => t = "FormData"
  @bs.send.pipe(: t) external append: (string, string) => unit = "append"
  @bs.send.pipe(: t) external delete: string => unit = "delete"
  @bs.send.pipe(: t) external get: string => option<EntryValue.t> = "get"
  @bs.send.pipe(: t) external getAll: string => array<EntryValue.t> = "getAll"
  @bs.send.pipe(: t) external set: (string, string) => unit = "set"
  @bs.send.pipe(: t) external has: string => bool = "has"
  @send external keys: t => Iterator.t<string> = "keys"
  @send external values: t => Iterator.t<EntryValue.t> = "values"

  @bs.send.pipe(: t) @ocaml.doc(" This is for React Native compatibility purposes ")
  external appendObject: (string, {..}, ~filename: string=?) => unit = "append"

  @bs.send.pipe(: t) external appendBlob: (string, blob, ~filename: string=?) => unit = "append"

  @bs.send.pipe(: t) external appendFile: (string, file, ~filename: string=?) => unit = "append"

  @bs.send.pipe(: t) @ocaml.doc(" This is for React Native compatibility purposes ")
  external setObject: (string, {..}, ~filename: string=?) => unit = "set"

  @bs.send.pipe(: t) external setBlob: (string, blob, ~filename: string=?) => unit = "set"

  @bs.send.pipe(: t) external setFile: (string, file, ~filename: string=?) => unit = "set"

  @send external entries: t => Iterator.t<(string, EntryValue.t)> = "entries"
}

@val external fetch: string => Js.Promise.t<response> = "fetch"
@val external fetchWithInit: (string, requestInit) => Js.Promise.t<response> = "fetch"
@val external fetchWithRequest: request => Js.Promise.t<response> = "fetch"
@val external fetchWithRequestInit: (request, requestInit) => Js.Promise.t<response> = "fetch"
