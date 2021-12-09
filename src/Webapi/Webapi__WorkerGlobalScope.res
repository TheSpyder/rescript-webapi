/**
 * Spec: https://html.spec.whatwg.org/multipage/workers.html#workerlocation
 *
 * Unlike Webapi__Dom__Location, this one is readonly
 */
type workerLocation = {
  href: string,
  protocol: string,
  host: string,
  hostname: string,
  port: string,
  pathname: string,
  search: string,
  hash: string,
  origin: string,
}

/**
 * Spec: https://html.spec.whatwg.org/multipage/workers.html#workerglobalscope
 */
module Impl = (
  T: {
    type t
  },
) => {
  type t_workerGlobalScope = T.t

  @val external self: t_workerGlobalScope = "self"

  @get external location: t_workerGlobalScope => workerLocation = "location"

  @get external navigator: t_workerGlobalScope => Webapi__WorkerNavigator.t = "navigator"

  @variadic @val
  external importScripts: array<string> => unit = "importScripts"

  type eventHandler = Dom.event => unit
  @get external onerror: t_workerGlobalScope => eventHandler = "onerror"
  @set external setOnerror: (t_workerGlobalScope, eventHandler) => unit = "onerror"

  @get external onlanguagechange: t_workerGlobalScope => eventHandler = "onlanguagechange"
  @set
  external setOnlanguagechange: (t_workerGlobalScope, eventHandler) => unit = "onlanguagechange"

  @get external onoffline: t_workerGlobalScope => eventHandler = "onoffline"
  @set external setOnoffline: (t_workerGlobalScope, eventHandler) => unit = "onoffline"

  @get external ononline: t_workerGlobalScope => eventHandler = "ononline"
  @set external setOnonline: (t_workerGlobalScope, eventHandler) => unit = "ononline"

  @get external onrejectionhandled: t_workerGlobalScope => eventHandler = "onrejectionhandled"
  @set
  external setOnrejectionhandled: (t_workerGlobalScope, eventHandler) => unit = "onrejectionhandled"

  @get external onunhandledrejection: t_workerGlobalScope => eventHandler = "onunhandledrejection"
  @set
  external setOnunhandledrejection: (t_workerGlobalScope, eventHandler) => unit =
    "onunhandledrejection"
}

type t

include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__WindowOrWorkerGlobalScope.Impl({
  type t = t
})
include Impl({
  type t = t
})
