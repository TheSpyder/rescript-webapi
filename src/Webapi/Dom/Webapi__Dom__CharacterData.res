module Impl = (
  T: {
    type t
  },
) => {
  @get external data: T.t => string = "data"
  @get external length: T.t => int = "length"

  @send external substringData: (T.t, ~offset: int, ~count: int) => string = "substringData"
  @send external appendData: (T.t, string) => unit = "appendData"
  @send external insertData: (T.t, ~offset: int, string) => unit = "insertData"
  @send external deleteData: (T.t, ~offset: int, ~count: int) => unit = "deleteData"
  @send external replaceData: (T.t, ~offset: int, ~count: int, string) => unit = "replaceData"
}

type t = Dom.characterData

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__NonDocumentTypeChildNode.Impl({
  type t = t
})
include Webapi__Dom__ChildNode.Impl({
  type t = t
})
include Impl({
  type t = t
})
