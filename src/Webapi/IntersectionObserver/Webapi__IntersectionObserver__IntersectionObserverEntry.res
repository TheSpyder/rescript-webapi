/**
 * Spec: https://www.w3.org/TR/intersection-observer/#intersection-observer-entry
 */

type t = Dom.intersectionObserverEntry

/* Properties */

@get external time: t => float = "time";
@get external rootBounds: t => Dom.domRect = "rootBounds";
@get external boundingClientRect: t => Dom.domRect = "boundingClientRect";
@get external intersectionRect: t => Dom.domRect = "intersectionRect";
@get external isIntersecting: t => bool = "isIntersecting";
@get external intersectionRatio: t => float = "intersectionRatio";
@get external target: t => Dom.element = "target";
