/**
 * Spec: https://www.w3.org/TR/intersection-observer/
 */

module IntersectionObserverEntry = {
  /**
   * Spec: https://www.w3.org/TR/intersection-observer/#intersection-observer-entry
   */

  type t = Dom.intersectionObserverEntry

  /* Properties */

  @get external time: t => float = "time"
  @get external rootBounds: t => Dom.domRect = "rootBounds"
  @get external boundingClientRect: t => Dom.domRect = "boundingClientRect"
  @get external intersectionRect: t => Dom.domRect = "intersectionRect"
  @get external isIntersecting: t => bool = "isIntersecting"
  @get external intersectionRatio: t => float = "intersectionRatio"
  @get external target: t => Dom.element = "target"
}

type t = Dom.intersectionObserver

type intersectionObserverInit = {
  root: option<Dom.element>,
  rootMargin: option<string>,
  threshold: option<array<float>>, // between 0 and 1.
}

@obj
external makeInit: (
  ~root: Dom.element=?,
  ~rootMargin: string=?,
  ~threshold: array<float>=?,
  unit,
) => intersectionObserverInit = ""

@new
external make: (@uncurry (array<IntersectionObserverEntry.t>, t) => unit) => t =
  "IntersectionObserver"

@new
external makeWithInit: (
  @uncurry (array<IntersectionObserverEntry.t>, t) => unit,
  intersectionObserverInit,
) => t = "IntersectionObserver"

/* Properties */

@get @return(nullable)
external root: t => option<Dom.element> = "root"
@get external rootMargin: t => string = "rootMargin"
@get external thresholds: t => array<float> = "thresholds"

/* Methods */

@send external disconnect: t => unit = "disconnect"
@send external observe: (t, Dom.element) => unit = "observe"
@send external unobserve: (t, Dom.element) => unit = "unobserve"
@send external takeRecords: t => array<IntersectionObserverEntry.t> = "takeRecords"
