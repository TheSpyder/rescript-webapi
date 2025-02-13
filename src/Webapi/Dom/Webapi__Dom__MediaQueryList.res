type t

include Webapi__Dom__EventTarget.Impl({
  type t = t
})

@get external matches: t => bool = "matches"
@get external media: t => string = "media"
