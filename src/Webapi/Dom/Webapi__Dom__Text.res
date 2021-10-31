let ofNode = (node: Dom.node): option<'a> =>
  Webapi__Dom__Node.nodeType(node) == Webapi__Dom__Types.Text ? Some(Obj.magic(node)) : None

module Impl = (
  T: {
    type t
  },
) => {
  let ofNode: Dom.node => option<T.t> = ofNode

  @send external splitText: (T.t, ~offset: int, unit) => Dom.text = "splitText"
  @get external wholeText: T.t => string = "wholeText"
}

type t = Dom.text

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__CharacterData.Impl({
  type t = t
})
include Webapi__Dom__NonDocumentTypeChildNode.Impl({
  type t = t
})
include Webapi__Dom__ChildNode.Impl({
  type t = t
})
include Webapi__Dom__Slotable.Impl({
  type t = t
})
include Impl({
  type t = t
})
