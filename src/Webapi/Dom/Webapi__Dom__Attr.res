type t = Dom.attr

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})

@get external namespaceURI: t => string = "namespaceURI"
@get external prefix: t => string = "prefix"
@get external localName: t => string = "localName"
@get external name: t => string = "name"
@get external value: t => string = "value"
@get @return(nullable) external ownerElement: t => option<Dom.element> = "ownerElement"
@get external specified: t => bool = "specified" /* useless; always returns true (exact wording from spec) */
