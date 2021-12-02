/**
 * Spec: https://html.spec.whatwg.org/multipage/workers.html#workerglobalscope
 */

module WorkerLocation = {
  /**
   * Spec: https://html.spec.whatwg.org/multipage/workers.html#workerlocation
   *
   * Unlike Webapi__Dom__Location, this one is readonly
   */

  type t // TODO: add to Dom in rescript-compiler?

  @get external href: t => string = "href"
  @get external protocol: t => string = "protocol"
  @get external host: t => string = "host"
  @get external hostname: t => string = "hostname"
  @get external port: t => string = "port"
  @get external pathname: t => string = "pathname"
  @get external search: t => string = "search"
  @get external hash: t => string = "hash"
  @get external origin: t => string = "origin"
}

module WorkerNavigator = {
  /**
   * Spec: https://html.spec.whatwg.org/multipage/workers.html#workernavigator
   */

  type t // TODO: add to Dom in rescript-compiler?

  include Webapi__Navigator__ID.Impl({
    type t = t
  })
  include Webapi__Navigator__Language.Impl({
    type t = t
  })
  include Webapi__Navigator__OnLine.Impl({
    type t = t
  })
  include Webapi__Navigator__ConcurrentHardware.Impl({
    type t = t
  })
}

module Impl = (
  T: {
    type t
  },
) => {
  type t_workerGlobalScope = T.t

  @val external self: t_workerGlobalScope = "self"

  @get external location: t_workerGlobalScope => WorkerLocation.t = "location"

  @get external navigator: t_workerGlobalScope => WorkerNavigator.t = "navigator"

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
