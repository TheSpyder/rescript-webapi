type t = Dom.documentType

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__ChildNode.Impl({
  type t = t
})

@get external name: t => string = "name"
@get external publicId: t => string = "publicId"
@get external systemId: t => string = "systemId"
