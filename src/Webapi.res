module Base64 = Webapi__Base64
module Blob = Webapi__Blob
module Canvas = Webapi__Canvas
module Dom = Webapi__Dom
module File = Webapi__File
module FileList = Webapi__FileList
module Fetch = Webapi__Fetch
module FormData = Webapi__FormData

module Navigator = Webapi__Navigator

module Iterator = Webapi__Iterator

module Performance = Webapi__Performance

module ReadableStream = Webapi__ReadableStream

module IntersectionObserver = Webapi__IntersectionObserver
module ResizeObserver = Webapi__ResizeObserver
module Url = Webapi__Url
module WebSocket = Webapi__WebSocket

module WorkerGlobalScope = Webapi__WorkerGlobalScope
module WorkerNavigator = Webapi__WorkerNavigator

type rafId

@val external requestAnimationFrame: (float => unit) => unit = "requestAnimationFrame"
@val
external requestCancellableAnimationFrame: (float => unit) => rafId = "requestAnimationFrame"
@val external cancelAnimationFrame: rafId => unit = "cancelAnimationFrame"
