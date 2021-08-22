module Base64 = Webapi__Base64

@ocaml.doc(" @since 0.18.0 ")
module Blob = Webapi__Blob
module Canvas = Webapi__Canvas
module Dom = Webapi__Dom
module File = Webapi__File

@ocaml.doc(" Re-export from [bs-fetch] for convenience. To use, you will also
    need to add the [bs-fetch] package as a dependency.

    To get the [FormData] of an HTML form, use
    [Webapi.Dom.HtmlFormElement.data].

    @since 0.18.0 ")
module FormData = Fetch.FormData

@ocaml.doc(" Re-export from [bs-fetch] for convenience. See also
    {!module:FormData}.

    @since 0.18.0 ")
module Iterator = FormData.Iterator

module Performance = Webapi__Performance

@ocaml.doc(" @since 0.19.0 ")
module ReadableStream = Webapi__ReadableStream

module ResizeObserver = Webapi__ResizeObserver
module Url = Webapi__Url

type rafId

@val external requestAnimationFrame: (float => unit) => unit = ""
@val
external requestCancellableAnimationFrame: (float => unit) => rafId = "requestAnimationFrame"
@val external cancelAnimationFrame: rafId => unit = ""
