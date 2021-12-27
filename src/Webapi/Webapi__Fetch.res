module AbortController = Webapi__Fetch__AbortController

/* * Alias for anyone upgrading */
module FormData = Webapi__FormData
type body
type bodyInit
type headers
type headersInit
type responseInit
type response
type request
type requestInit
type abortController = AbortController.t
type signal = AbortController.signal

/* external */
type arrayBuffer /* TypedArray */
type bufferSource /* Web IDL, either an arrayBuffer or arrayBufferView */
type formData = FormData.t /* XMLHttpRequest */
type readableStream = Webapi__ReadableStream.t /* Streams */
type urlSearchParams /* URL */

type blob = Webapi__Blob.t
type file = Webapi__File.t

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
let encodeRequestMethod = x =>
  /* internal */

  switch x {
  | Get => "GET"
  | Head => "HEAD"
  | Post => "POST"
  | Put => "PUT"
  | Delete => "DELETE"
  | Connect => "CONNECT"
  | Options => "OPTIONS"
  | Trace => "TRACE"
  | Patch => "PATCH"
  | Other(method_) => method_
  }
let decodeRequestMethod = x =>
  /* internal */

  switch x {
  | "GET" => Get
  | "HEAD" => Head
  | "POST" => Post
  | "PUT" => Put
  | "DELETE" => Delete
  | "CONNECT" => Connect
  | "OPTIONS" => Options
  | "TRACE" => Trace
  | "PATCH" => Patch
  | method_ => Other(method_)
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
let encodeReferrerPolicy = x =>
  /* internal */

  switch x {
  | NoReferrer => "no-referrer"
  | None => ""
  | NoReferrerWhenDowngrade => "no-referrer-when-downgrade"
  | SameOrigin => "same-origin"
  | Origin => "origin"
  | StrictOrigin => "strict-origin"
  | OriginWhenCrossOrigin => "origin-when-cross-origin"
  | StrictOriginWhenCrossOrigin => "strict-origin-when-cross-origin"
  | UnsafeUrl => "unsafe-url"
  }
let decodeReferrerPolicy = x =>
  /* internal */

  switch x {
  | "no-referrer" => NoReferrer
  | "" => None
  | "no-referrer-when-downgrade" => NoReferrerWhenDowngrade
  | "same-origin" => SameOrigin
  | "origin" => Origin
  | "strict-origin" => StrictOrigin
  | "origin-when-cross-origin" => OriginWhenCrossOrigin
  | "strict-origin-when-cross-origin" => StrictOriginWhenCrossOrigin
  | "unsafe-url" => UnsafeUrl
  | e => raise(Failure("Unknown referrerPolicy: " ++ e))
  }

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
let decodeRequestDestination = x =>
  /* internal */

  switch x {
  | "document" => Document
  | "" => None
  | "embed" => Embed
  | "font" => Font
  | "image" => Image
  | "manifest" => Manifest
  | "media" => Media
  | "object" => Object
  | "report" => Report
  | "script" => Script
  | "serviceworker" => ServiceWorker
  | "sharedworder" => SharedWorker
  | "style" => Style
  | "worker" => Worker
  | "xslt" => Xslt
  | e => raise(Failure("Unknown requestDestination: " ++ e))
  }

type requestMode =
  | Navigate
  | SameOrigin
  | NoCORS
  | CORS
let encodeRequestMode = x =>
  /* internal */

  switch x {
  | Navigate => "navigate"
  | SameOrigin => "same-origin"
  | NoCORS => "no-cors"
  | CORS => "cors"
  }
let decodeRequestMode = x =>
  /* internal */

  switch x {
  | "navigate" => Navigate
  | "same-origin" => SameOrigin
  | "no-cors" => NoCORS
  | "cors" => CORS
  | e => raise(Failure("Unknown requestMode: " ++ e))
  }

type requestCredentials =
  | Omit
  | SameOrigin
  | Include
let encodeRequestCredentials = x =>
  /* internal */

  switch x {
  | Omit => "omit"
  | SameOrigin => "same-origin"
  | Include => "include"
  }
let decodeRequestCredentials = x =>
  /* internal */

  switch x {
  | "omit" => Omit
  | "same-origin" => SameOrigin
  | "include" => Include
  | e => raise(Failure("Unknown requestCredentials: " ++ e))
  }

type requestCache =
  | Default
  | NoStore
  | Reload
  | NoCache
  | ForceCache
  | OnlyIfCached
let encodeRequestCache = x =>
  /* internal */

  switch x {
  | Default => "default"
  | NoStore => "no-store"
  | Reload => "reload"
  | NoCache => "no-cache"
  | ForceCache => "force-cache"
  | OnlyIfCached => "only-if-cached"
  }
let decodeRequestCache = x =>
  /* internal */

  switch x {
  | "default" => Default
  | "no-store" => NoStore
  | "reload" => Reload
  | "no-cache" => NoCache
  | "force-cache" => ForceCache
  | "only-if-cached" => OnlyIfCached
  | e => raise(Failure("Unknown requestCache: " ++ e))
  }

type requestRedirect =
  | Follow
  | Error
  | Manual
let encodeRequestRedirect = x =>
  /* internal */

  switch x {
  | Follow => "follow"
  | Error => "error"
  | Manual => "manual"
  }
let decodeRequestRedirect = x =>
  /* internal */

  switch x {
  | "follow" => Follow
  | "error" => Error
  | "manual" => Manual
  | e => raise(Failure("Unknown requestRedirect: " ++ e))
  }

module HeadersInit = {
  type t = headersInit

  external make: {..} => t = "%identity"
  external makeWithDict: Js.Dict.t<string> => t = "%identity"
  external makeWithArray: array<(string, string)> => t = "%identity"
}

module Headers = {
  type t = headers

  @new external make: t = "Headers"
  @new external makeWithInit: headersInit => t = "Headers"

  @send external append: (t, string, string) => unit = "append"
  @send external delete: (t, string) => unit = "delete"
  @send @return(null_to_opt)
  external get: (t, string) => option<string> = "get"
  @send external has: (t, string) => bool = "has"
  @send external set: (t, string, string) => unit = "set"
}

module BodyInit = {
  type t = bodyInit

  external make: string => t = "%identity"
  external makeWithBlob: blob => t = "%identity"
  external makeWithBufferSource: bufferSource => t = "%identity"
  external makeWithFormData: formData => t = "%identity"
  external makeWithUrlSearchParams: urlSearchParams => t = "%identity"
}

module Body = {
  module Impl = (
    T: {
      type t
    },
  ) => {
    @get external body: T.t => readableStream = "body"
    @get external bodyUsed: T.t => bool = "bodyUsed"

    @send external arrayBuffer: T.t => Js.Promise.t<arrayBuffer> = "arrayBuffer"
    @send external blob: T.t => Js.Promise.t<blob> = "blob"
    @send external formData: T.t => Js.Promise.t<formData> = "formData"
    @send external json: T.t => Js.Promise.t<Js.Json.t> = "json"
    @send external text: T.t => Js.Promise.t<string> = "text"
  }

  type t = body
  include Impl({
    type t = t
  })
}

module RequestInit = {
  type t = requestInit

  let map = (f, x) =>
    /* internal */
    switch x {
    | Some(v) => Some(f(v))
    | None => None
    }

  @obj
  external make: (
    ~_method: string=?,
    ~headers: headersInit=?,
    ~body: bodyInit=?,
    ~referrer: string=?,
    ~referrerPolicy: string=?,
    ~mode: string=?,
    ~credentials: string=?,
    ~cache: string=?,
    ~redirect: string=?,
    ~integrity: string=?,
    ~keepalive: bool=?,
    ~signal: signal=?,
    unit,
  ) => requestInit = ""
  let make = (
    ~method_: option<requestMethod>=?,
    ~headers: option<headersInit>=?,
    ~body: option<bodyInit>=?,
    ~referrer: option<string>=?,
    ~referrerPolicy: referrerPolicy=None,
    ~mode: option<requestMode>=?,
    ~credentials: option<requestCredentials>=?,
    ~cache: option<requestCache>=?,
    ~redirect: option<requestRedirect>=?,
    ~integrity: string="",
    ~keepalive: option<bool>=?,
    ~signal: option<signal>=?,
  ) =>
    make(
      ~_method=?map(encodeRequestMethod, method_),
      ~headers?,
      ~body?,
      ~referrer?,
      ~referrerPolicy=encodeReferrerPolicy(referrerPolicy),
      ~mode=?map(encodeRequestMode, mode),
      ~credentials=?map(encodeRequestCredentials, credentials),
      ~cache=?map(encodeRequestCache, cache),
      ~redirect=?map(encodeRequestRedirect, redirect),
      ~integrity,
      ~keepalive?,
      ~signal?,
    )
}

module Request = {
  type t = request

  include Body.Impl({
    type t = t
  })

  @new external make: string => t = "Request"
  @new external makeWithInit: (string, requestInit) => t = "Request"
  @new external makeWithRequest: t => t = "Request"
  @new external makeWithRequestInit: (t, requestInit) => t = "Request"

  @get external method_: t => string = "method"
  let method_: t => requestMethod = self => decodeRequestMethod(method_(self))
  @get external url: t => string = "url"
  @get external headers: t => headers = "headers"
  @get external destination: t => string = "destination"
  let destination: t => requestDestination = self => decodeRequestDestination(destination(self))
  @get external referrer: t => string = "referrer"
  @get external referrerPolicy: t => string = "referrerPolicy"
  let referrerPolicy: t => referrerPolicy = self => decodeReferrerPolicy(referrerPolicy(self))
  @get external mode: t => string = "mode"
  let mode: t => requestMode = self => decodeRequestMode(mode(self))
  @get external credentials: t => string = "credentials"
  let credentials: t => requestCredentials = self => decodeRequestCredentials(credentials(self))
  @get external cache: t => string = "cache"
  let cache: t => requestCache = self => decodeRequestCache(cache(self))
  @get external redirect: t => string = "redirect"
  let redirect: t => requestRedirect = self => decodeRequestRedirect(redirect(self))
  @get external integrity: t => string = "integrity"
  @get external keepalive: t => bool = "keepalive"
  @get external signal: t => signal = "signal"
}

module ResponseInit = {
  type t = responseInit

  @obj
  external make: (
    ~status: int=?,
    ~statusText: string=?,
    ~headers: headersInit=?,
    unit,
  ) => responseInit = ""
  let make = (
    ~status: option<int>=?,
    ~statusText: option<string>=?,
    ~headers: option<headersInit>=?,
  ) => make(~status?, ~statusText?, ~headers?)
}

module Response = {
  type t = response

  include Body.Impl({
    type t = t
  })

  @new external make: string => t = "Response"
  @new external makeWithInit: (string, responseInit) => t = "Response"
  @new external makeWithResponse: t => t = "Response"
  @new external makeWithResponseInit: (t, responseInit) => t = "Response"

  @val external error: unit => t = "error"
  @val external redirect: string => t = "redirect"
  @val external redirectWithStatus: (string, int) => t = "redirect"
  @get external headers: t => headers = "headers"
  @get external ok: t => bool = "ok"
  @get external redirected: t => bool = "redirected"
  @get external status: t => int = "status"
  @get external statusText: t => string = "statusText"
  @get external type_: t => string = "type"
  @get external url: t => string = "url"

  @send external clone: t => t = "clone"
}

@val external fetch: string => Js.Promise.t<response> = "fetch"
@val external fetchWithInit: (string, requestInit) => Js.Promise.t<response> = "fetch"
@val external fetchWithRequest: request => Js.Promise.t<response> = "fetch"
@val external fetchWithRequestInit: (request, requestInit) => Js.Promise.t<response> = "fetch"
